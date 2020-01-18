<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\User;
use DB;

class UsersController extends Controller
{
    public function index()
    {
        $text = DB::table('text')->where('option_name', 'startpage')->get();
        $images = DB::table('images')->where('id_option', '5')->get();
        $data = array(
            'images' => $images,
            'text' => $text 
        );
        return view('user/welcome')->with('data', $data);
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
