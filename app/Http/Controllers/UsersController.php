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
        //get items from database 
        $item_in_menu = DB::table('item_in_menu')->get();
        //get products from base
        $products = DB::table('products')
                ->join('menu_list', 'products.id', '=' , 'menu_list.id_product')
                ->join('item_in_menu', 'item_in_menu.id', '=' , 'menu_list.id_item_in_menu')
                ->select('products.*', 'item_in_menu.item_in_menu')
                ->get();
        //get images from base so the page looks pretty                
        $images = DB::table('images')->where('id_option', '2')->get();
        $data = array(
            'images' => $images,
            'products' => $products,
            'item_in_menu_name' => $item_in_menu
        );
        return view('user/menu')->with('data', $data);
    }
    public function feed()
    {
        $image = DB::table('images')->where('id_option', '4')->get();
        $posts = DB::table('news_feed')->get();
        $data = array(
            'posts' => $posts,
            'image_cover' => $image
        );
        return view('user/feed')->with('data', $data);

    }
    public function hoursandlocation()
    {   
        $text = DB::table('text')->where('option_name', 'location')->get();
        return view('user/hoursandlocation')->with('text', $text);

    }
    public function contact()
    {
        $text = DB::table('text')->where('option_name', 'contact')->orWhere('tag_name', 'a')->get();
        return view('user/contact')->with('text', $text);
    }
}
