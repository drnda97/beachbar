@extends('layouts/app')

@section('content')
    <div class="slider">
        <ul>
            <li><img src="{{asset('images/pebbles/1.jpg')}}" alt="slider-image"></li>
            <li><img src="{{asset('images/pebbles/11.jpg')}}" alt="slider-image"></li>
            <li><img src="{{asset('images/pebbles/3.jpg')}}" alt="slider-image"></li>
        </ul>
    </div>
    <h1>Menu</h1>
    <div class="menu">
        <ul>
            @foreach($data['item_in_menu_name'] as $item_in_menu)
                <li>
                    <a class="dropdown" href="#<?php echo $item_in_menu->item_in_menu ?>"><?php echo $item_in_menu->item_in_menu ?></a> 
                </li>
                <div class="<?php echo lcfirst($item_in_menu->item_in_menu); ?>">
                    @foreach($data['products'] as $product)
                        @if($product->item_in_menu == $item_in_menu->item_in_menu)
                            <ul class="sub_sub_list">
                                <li><?php echo $product->product; ?></li>
                                <small><?php echo $product->description; ?></small>
                            </ul>
                        @endif
                    @endforeach
                </div>
            @endforeach
        </ul>
        @foreach($data['images'] as $image)
            <div class="menu-image-with-border">
                <img src="<?php echo $image->img_url; ?>" alt="">
            </div>
        @endforeach
    </div>
@endsection
