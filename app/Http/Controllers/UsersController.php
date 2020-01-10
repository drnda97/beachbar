<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UsersController extends Controller
{
    public function index()
    {
        return view('user/welcome');
    }
    public function menu()
    {
        return view('user/menu');
    }
    public function feed()
    {
        return view('user/feed');

    }
    public function hoursandlocation()
    {
        return view('user/hoursandlocation');

    }
    public function contact()
    {
        return view('user/contact');
    }
}
