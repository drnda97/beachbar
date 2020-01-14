<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="{{asset('css/app.css')}}">
        <title>{{config('app.name')}}</title>
    </head>
    <body id="main-body">
        @include('layouts/nav')
        <div class="content">
            @yield('content')
        </div>
        @include('layouts/footer')
    </body>
</html>
