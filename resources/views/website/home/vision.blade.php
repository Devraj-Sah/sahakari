<div class="container">
    <div class="mission-area">
        <div class="row gy-3">
            <div class="col-lg-4 col-md-4 col-12">
                <div class="mission">
                    @php
                        $mission = App\Models\Navigation::query()->where('id',2547)->where('page_status',1)->first();                            
                    @endphp
                    <div class="mission-icon">
                        <a href="/{{ $mission->nav_name ?? "" }}"> 
                            <img src="/website/img/target.png" alt="">
                        </a>
                    </div>
                    <div class="mission-title">
                        <a href="/{{ $mission->nav_name ?? ""  }}">
                            <h3>{{$mission->caption ?? "" }}</h3>
                        </a>
                    </div>
                    <div class="mission-dec">
                        
                        {!! htmlspecialchars_decode(str_limit($mission->long_content, 105, '...')) !!}
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-12">
                <div class="mission">
                    @php
                        $Vision = App\Models\Navigation::query()->where('id',2548)->where('page_status',1)->first();                            
                    @endphp
                    <div class="mission-icon">
                        <a href="/{{ $Vision->nav_name ?? "" }}"><img src="/website/img/eye.png" alt=""></a>



                    </div>
                    <div class="mission-title">
                        <a href="/{{ $Vision->nav_name ?? "" }}">
                            <h3>{{$Vision->caption ?? "" }}</h3>
                        </a>

                    </div>
                    <div class="mission-dec">
                        {!! htmlspecialchars_decode(str_limit($Vision->long_content, 105, '...')) !!}
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-12">
                <div class="mission">
                    @php
                        $Value = App\Models\Navigation::query()->where('id',2549)->where('page_status',1)->first();                            
                    @endphp
                    <div class="mission-icon">
                        <a href="/{{ $Value->nav_name ?? "" }}"> <img src="/website/img/value.png" alt=""></a>


                    </div>
                    <div class="mission-title">
                        <a href="/{{ $Value->nav_name ?? "" }}">
                            <h3>{{$Value->caption ?? "" }}</h3>
                        </a>

                    </div>
                    <div class="mission-dec">
                        {!! htmlspecialchars_decode(str_limit($Value->long_content, 105, '...')) !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>