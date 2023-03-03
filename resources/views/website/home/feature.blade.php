 <!-- Feature Start-->
 <div class="feature wow fadeInUp" data-wow-delay="0.1s">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-4 col-md-12">
                <div class="feature-item">
                    <div class="feature-icon">
                        <i class="flaticon-worker"></i>
                    </div>
                    <div class="feature-text">
                        @php
                            $organization_chart = App\Models\Navigation::query()->where('id',2543)->where('page_status',1)->first();                            
                        @endphp
                        <a href="feature/{{$organization_chart->nav_name ?? "#" }}">
                            {{-- <h3>{{$organization_chart->caption ?? "" }}</h3> --}}
                            <h3>Deposite</h3>
                        </a>

                        <!-- <p>Lorem ipsum dolor sit amet elit. Phasus nec pretim ornare velit non</p> -->
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="feature-item">
                    <div class="feature-icon">
                        <i class="flaticon-building"></i>
                    </div>
                    <div class="feature-text">
                        @php
                            $legal_documents = App\Models\Navigation::query()->where('id',2544)->where('page_status',1)->first();                            
                        @endphp
                        <a href="/{{$legal_documents->nav_name ?? "#" }}">
                            <h3>Loan</h3>
                            {{-- <h3>{{$legal_documents->caption ?? "" }}</h3> --}}
                        </a>
                        <!-- <p>Lorem ipsum dolor sit amet elit. Phasus nec pretim ornare velit non</p> -->
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="feature-item">
                    <div class="feature-icon">
                        <i class="flaticon-call"></i>
                    </div>
                    <div class="feature-text">
                        @php
                            $demand_letter = App\Models\Navigation::query()->where('id',2545)->where('page_status',1)->first();                            
                        @endphp
                        <a href="feature/{{$demand_letter->nav_name ?? "#" }}">
                            <h3>Monthly Report</h3>
                        </a>

                        <!-- <p>Lorem ipsum dolor sit amet elit. Phasus nec pretim ornare velit non</p> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Feature End-->