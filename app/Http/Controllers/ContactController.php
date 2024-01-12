<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactMail;

class ContactController extends Controller
{
    public function contact()
    {
        return view('contactUs');
    }

    public function sendContactEmail(Request $request)
    {
       Mail::to('laila@gmail.com')->send(new ContactMail($request));
       
  
    }

}
