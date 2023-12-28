<?php

use App\Http\Controllers\ExampleController;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CarController;
use App\Http\Controllers\PostController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route :: fallback(function(){
//     return redirect('/');
// });

// Route :: prefix('lar')->group(function(){
//     Route :: get('/',function(){
//         return view('test');
//     });
//     Route :: get('test1/{id}',function($id){
//         return 'the id is: '. $id;
//     });
    
//     Route :: get('test2/{id?}',function($id=0){
//         return 'the id is: '. $id;
//     })->whereNumber('id');
// Route :: get('test2/{id?}',function($id=0){
    //     return 'the id is: '. $id;
    // })->where(['id'=> '[0-9]+']);
//     Route :: get('test3/{name?}',function($name=null){
//         return 'the name is: '. $name;
//     })->whereAlpha('name');
    
//     Route :: get('test4/{id}/{name}',function($id,$name){
//         return 'the age is: '. $id  .' and the name is: '.$name;
//     })->where(['id'=> '[0-9]+','name'=>'[a-zA-Z]+']);
    
//     Route :: get('product/{category}',function($cat){
//         return 'the category is: '. $cat;
//     })->whereIn('category',['lab','pc','tablet']);
    
// });


// Route :: get('food',function(){
//     return view('food');
// });
/*____________________*/

// -----------Task2-------------
//About us:
Route :: get('AboutUs',function(){
    return view('about_us');
});


// contact us:
Route :: get('ContactUs',function(){
    return view('contact_us');
});


// blog
Route::prefix('blog')->group(function () {
    Route::get('Science', function(){
    return 'science page';
    });
    Route::get('Sports', function(){
    return 'sports page';
    });
    Route::get('Math', function(){
    return 'Math page';
    });
    Route::get('Medical', function(){
    return 'Medical page';
    });
});

// Route :: post('logged',function(){
//     return "you are logged in";
// })->name('logged');

// Route :: get('control',[ExampleController::class,'show']);


// task3 

// Route::get('Login', function () {
//     return view('login');
// });

// Route::post('logged', [LoginController::class, 'login'])->name('logged');


//Day4

Route ::get('createCar',[CarController::class,'create'])->name('createCar');
Route::post('storeCar',[CarController::class,'store'])->name('storeCar');
Route ::get('cars',[CarController::class,'index'])->name('cars');

//Day5
Route ::get('updateCar/{id}',[CarController::class,'edit']);
Route ::put('update/{id}',[CarController::class,'update'])->name('update');
Route ::get('showCar/{id}',[CarController::class,'show'])->name('showCar');

//Task4
Route ::get('createPost',[PostController::class,'create'])->name('createPost');
Route::post('storePost',[PostController::class,'store'])->name('storePost');
Route ::get('posts',[PostController::class,'index'])->name('posts');

//Task5
Route ::get('updatePost/{id}',[PostController::class,'edit']);
// Route ::put('update/{id}',[PostController::class,'update'])->name('update');



//Day6
Route ::get('deleteCar/{id}',[CarController::class,'destroy']);
Route ::get('trashed',[CarController::class,'trashed'])->name('trashed');
Route ::get('forceDelete/{id}',[CarController::class,'forceDelete'])->name('forceDelete');
Route ::get('restoreCar/{id}',[CarController::class,'restoreCar'])->name('restoreCar');

//Task6
Route ::get('deletePost/{id}',[PostController::class,'destroy']);
Route ::get('trashed_posts',[PostController::class,'trash'])->name('trashed_posts');
Route ::get('forceDeletePost/{id}',[PostController::class,'force_delete'])->name('forceDeletePost');
Route ::get('restorePost/{id}',[PostController::class,'restore_post'])->name('restorePost');

//Day7
Route::get('test',function(){
    return view('testHome');
})->name('testHome');

Route::get('image',function(){
    return view('image');
});

Route::post('imageUpload',[ExampleController::class,'upload'])->name('imageUpload');

//Day8
Route::get('404',function(){
    return view('404');
})->name('404');

Route::get('contactUs',function(){
    return view('contactUs');
})->name('contactUs');

