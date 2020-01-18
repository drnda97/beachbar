@extends('layouts/app')
@section('content')
    @if(count($data['images']) > 1)
        @foreach($data['images'] as $image)
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
        @foreach($data['text'] as $text)
            @if($text->tag_name == 'h2')
                <h2><?php  echo $text->text; ?></h2>
            @endif
        @endforeach
    </div>
    <div class="parallax">
        <img src="<?php echo $png_image; ?>" alt="fading-image">
        <a href="/menu" class="menu-btn">Menu</a>
      </div>
@endsection