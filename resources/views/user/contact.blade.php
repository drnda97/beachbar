@extends('layouts/app')

@section('content')
    <div class="contact">
        @foreach($text as $tagline)
            @if ($tagline->tag_name === 'headline')
                <h2><?php echo $tagline->text; ?></h2>
            @endif
        @endforeach
        @foreach($text as $taglines)
            @if($taglines->tag_name === 'p')
            <p><?php echo $taglines->text; ?></p>
            @elseif($taglines->tag_name === 'a')
                <a href="tel:<?php echo $taglines->text; ?>"><?php echo $taglines->text; ?></a>        
            @endif
        @endforeach
        <form name="contactForm" action="/user/mailMe" method="post">
            <div class="form-control contactn">
            <input type="text" name="name" placeholder="Name">
            </div>
            <div class="form-control contactname clearfix">
            <input type="text" name="email" placeholder="Email">
            </div>
            <div class="form-control contact">
            <input type="text" name="telephone" placeholder="Telephone">
            </div>
            <div class="form-control contact">
            <textarea name="msg" rows="4" cols="76" placeholder="Message"></textarea>
            </div>
            <button type="button" name="mailSubmit">Send</button>
        </form>
    </div>
@endsection