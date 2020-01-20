@extends('layouts/app')

@section('content')
    <div class="news_wrapper clearfix">
        <img src="<?php echo $data['image_cover']['0']->img_url; ?>" alt="cover_image" class="news-cover">
        <main id="newsFeedMain">
            @foreach ($data['posts'] as $event)
                <div class="card">
                    <img src="<?php echo $event->img_url; ?>" alt="event_image">
                    <p><?php echo $event->title; ?></p>
                </div>
            @endforeach
        </main>
    </div>
@endsection