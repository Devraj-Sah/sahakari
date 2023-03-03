<div class="fact">
    <div class="container">
        <div class="row counters">
            <div class="col-md-6 fact-left wow slideInLeft">
                <div class="row">
                    <div class="col-6">
                        <div class="fact-icon">
                            <i class="flaticon-worker"></i>
                        </div>
                        @php
                            $a = App\Models\Navigation::query()->where('id',2551)->where('page_status',1)->first();                            
                        @endphp
                        <div class="fact-text">
                            <h2 data-toggle="counter-up">{{$a->short_content ?? ""}}</h2>
                            <p>{{$a->caption ?? ""}}</p>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="fact-icon">
                            <i class="flaticon-building"></i>
                        </div>
                        @php
                            $b = App\Models\Navigation::query()->where('id',2552)->where('page_status',1)->first();                            
                        @endphp
                        <div class="fact-text">
                            <h2 data-toggle="counter-up">{{$b->short_content ?? ""}}</h2>
                            <p>{{$b->caption ?? ""}}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 fact-right wow slideInRight">
                <div class="row">
                    <div class="col-6">
                        <div class="fact-icon">
                            <i class="flaticon-address"></i>
                        </div>
                        @php
                            $c = App\Models\Navigation::query()->where('id',2553)->where('page_status',1)->first();                            
                        @endphp
                        <div class="fact-text">
                            <h2 data-toggle="counter-up">{{$c->short_content ?? ""}}</h2>
                            <p>{{$c->caption ?? ""}}</p>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="fact-icon">
                            <i class="flaticon-crane"></i>
                        </div>
                        @php
                            $d = App\Models\Navigation::query()->where('id',2554)->where('page_status',1)->first();                            
                        @endphp
                        <div class="fact-text">
                            <h2 data-toggle="counter-up">{{$d->short_content ?? ""}}</h2>
                            <p>{{$d->caption ?? ""}}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>