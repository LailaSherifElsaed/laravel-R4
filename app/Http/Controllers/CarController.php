<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Car;
use App\Models\Category;
use App\Traits\Common;
use Illuminate\Support\Facades\File;

class CarController extends Controller
{
    use Common;
    private $columns = [
        'title',
        'description',
        'published',
        'category_id',
        ];
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        
        $cars=Car::get();
        return view('cars',compact('cars'));

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories=Category::get();
        return view('addCar',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // $cars = new Car();
        // $cars->title = $request->title;
        // $cars->description = $request->description;
        // if(isset($request->published)){
        //     $cars->published = 1;
        // }else{
        //     $cars->published = 0;
        // }
        // $cars->save();
        // return 'Data added succesfully';
        // $data=$request->only($this->columns);

        $messages = $this->messages();
        $data=$request->validate([
            'title'=>'required|string|max:50',
            'description'=> 'required|string',
            'image' => 'required|mimes:png,jpg,jpeg|max:2048',
            'category_id' =>'required|string'
        ],$messages);

        $fileName = $this->uploadFile($request->image, 'assets/images');    
        $data['image'] = $fileName;

        $data['published']=isset($request->published);
        Car::create($data);
        return redirect('cars');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $car = Car::findOrFail($id);
        return view('showCar',compact('car'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $car = Car::findOrFail($id);
        return view('updateCar',compact('car'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $car = Car::findOrFail($id);
        // $data=$request->only($this->columns);
        $data=$request->validate([
            'title'=>'required|string|max:50',
            'description'=> 'required|string',
            'image' => 'nullable|mimes:jpeg,bmp,png,jpg'
        ]);
        
        $data['published']=isset($request->published);
        if ($request->image) {
        if ($car->image && File::exists(public_path('assets/images/' . $car->image))) {
            File::delete(public_path('assets/images/' . $car->image));
        }
        $image = $request->image;
        $fileName = time() . '.' . $image->getClientOriginalExtension();
        $image->move(public_path('assets/images'), $fileName);
        $data['image'] = $fileName;
    } else {
        $data['image'] = $car->image;
    }
    $car->update($data);
    return redirect('cars');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Car::where('id', $id)->delete();
        return redirect('cars');
        
    }

    //trashed
    public function trashed()
    {
        $cars=Car::onlyTrashed()->get();
        return view('trashed',compact('cars'));
        
    }

    //force_delete
    public function forceDelete(string $id)
    {
         Car::where('id', $id)->forceDelete();
        return redirect('cars');
        
    }
//restore
    public function restoreCar(string $id)
    {
         Car::where('id', $id)->restore();
        return redirect('cars');
        
    }
    public function messages(){
        return['title.required'=>'العنوان مطلوب',
        'title.string'=>'should be string',
        'description.required'=>'should be text',
        'image.required'=> 'Please be sure to select an image',
        'image.mimes'=> 'Incorrect image type',
        'image.max'=> 'Max file size exceeded',];
        
    }
}
