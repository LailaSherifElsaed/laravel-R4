<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Post;
class PostController extends Controller
{
    private $columns = [
        'title',
        'author',
        'description',
        'published',
        ];

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts=Post::get();
        return view('posts',compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('addPost');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // $posts = new Post();
        // $posts->title = $request->title;
        // $posts->description = $request->description;
        // if(isset($request->published)){
        //     $posts->published = 1;
        // }else{
        //     $posts->published = 0;
        // }
        // $posts->author = $request->author;
        // $posts->save();
        $data=$request->validate([
            'title'=>'required|string',
            'description'=> 'required|string',
            'author'=> 'required|string',
            ]);
        $data['published']=isset($request->published);
        Post::create($data);
        return redirect('posts');

        
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $post = Post::findOrFail($id);
        return view('updatePost',compact('post'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data=$request->only($this->columns);
        $data['published']=isset($request->published);
        Post::where('id', $id)->update($data);
        return redirect('posts');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Post::where('id', $id)->delete();
        return redirect('posts');
    }

    public function trash()
    {
        $posts=Post::onlyTrashed()->get();
        return view('trashed_posts',compact('posts'));
    }

    public function force_delete(string $id)
    {
        Post::where('id', $id)->forceDelete();
        return redirect('trashed_posts');
    }

    public function restore_post(string $id)
    {
        Post::where('id', $id)->restore();
        return redirect('posts');
    }
}

