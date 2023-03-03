@extends('layouts.master')

@section('content')

     <div class="normal-bg subheader" style="background-image: url('/website/img/service-banner.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="subheader-content">
                        <h1 class="page-title text-white fw-600">Hamro Aamanirvar Saving & credit Co-operative Ltd.</h1>
                        <ul class="custom-flex breadcrumb">
                            <li><a href="/">Home</a></li>
                            <li>{{$normal->caption}}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Subheader -->

    <!-- Main Content Wrapper Start -->

        <!-- About Start -->
        <div class="about wow fadeInUp" data-wow-delay="0.1s">
            <div class="service-title">
                <h1>
                    {{$normal->caption}}</h1>
            </div>
            <div class="container">
                <div class="row align-items-center">
                    @if ($normal->banner_image)
                        <div class="col-lg-5 col-md-6">
                            <div class="about-img">
                                <img src="{{ $normal->banner_image }}" alt="Image">
                            </div>
                        </div>
                    @endif
                    <div class="col-lg-7 col-md-6">
                        <div class="section-header text-left">
                            <p>{{$normal->caption}}</p>
                            <h2>{!!  htmlspecialchars_decode($normal->short_content) !!}</h2>
                        </div>
                        <div class="about-text">
                            {!!  htmlspecialchars_decode($normal->long_content) !!}
                            <!-- <a class="btn" href="">Learn More</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>


        @if (isset($parent_data))
            <div class="box">
                <div class="container">
                    <div class="row">
                        @foreach ($parent_data as $childs)
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="box-part text-center">
                                    <div class="about-mission-icon">
                                        <a href="/{{$childs->nav_name ?? "" }}"> <img src="/website/img/@if ($loop->iteration == 1)target.png @elseif ($loop->iteration == 2)eye.png @else()value.png @endif" alt=""></a>
                                    </div>
                                    <div class="title">
                                        <h4>{{$childs->caption ?? "" }}</h4>
                                    </div>
                                    <div class="text">
                                        <span>{!! htmlspecialchars_decode(str_limit($childs->long_content, 105, '...')) !!}</span>
                                    </div>
                                </div>
                            </div>                      
                            
                        @endforeach
                    </div>
                </div>
            </div>            
        @endif
@endsection
