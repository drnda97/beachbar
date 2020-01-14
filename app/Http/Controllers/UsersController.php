<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\User;
use DB;

class UsersController extends Controller
{
    public function index()
    {
        $images = DB::table('images')->where('id_option', '5')->get();
        return view('user/welcome')->with('images', $images);
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
