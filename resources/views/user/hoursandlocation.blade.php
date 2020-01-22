@extends('layouts/app')

@section('content')
    <div class="location">
        @foreach($text as $taglines)
            @if ($taglines->tag_name === 'headline')
                <h2><?php echo $taglines->text; ?></h2>
            @elseif ($taglines->tag_name === 'h3')
                <h3><?php echo $taglines->text; ?></h3>
            @elseif($taglines->tag_name === 'p')
                <p><?php echo $taglines->text; ?></p>
            @endif
        @endforeach
        <div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=pebbles%20bar%20malta&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe></div><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div>
    </div>
@endsection