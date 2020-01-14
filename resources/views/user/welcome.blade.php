@extends('layouts/app')
@section('content')
    @if(count($images) > 1)
        @foreach($images as $image)
            @if(!strpos($image->img_url, '.png'))
                <div class="start-images clearfix">
                    <div>
                        <img src="{{asset($image->img_url)}}" alt="image">
                    </div>
                </div>
            @else
            <?php $png_image = $image->img_url;?>
            @endif
        @endforeach
    @endif
    <div class="start-paragraph">
        <h2>Come and pay us a visit we are expecting you!</h2>
    </div>
    <div class="parallax">
        <img src="<?php echo $png_image; ?>" alt="fading-image">
        <a href="/menu" class="menu-btn">Menu</a>
      </div>
@endsection