<?php

use Illuminate\Support\Facades\Route;

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
