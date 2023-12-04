<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $email = $request->input('email');
        $password = $request->input('pwd');

        return "Your email is: $email <br> Your password is: $password";
    }
}
