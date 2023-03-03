
@extends('layouts.master')
    @section("content")
      
			<!--
			=====================================================
				Google Map
			=====================================================
			-->
			<!-- Google Map -->
			<!-- <div class="google-map-two">
				<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7065.511178424314!2d85.281466!3d27.693948!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe25fdd5d858e0cbe!2sKalanki%20Bus%20Stop!5e0!3m2!1sen!2snp!4v1657622982275!5m2!1sen!2snp" width="100%" height="368px" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div> -->


			<!-- 
			=============================================
				Conatct us Section
			============================================== 
			-->
		
			{{-- <div class="contact-us-section section-spacing">
				<div class="container">
					<div class="theme-title-one">
							@if ($errors->any())
								<div class="alert alert-danger">
									<ul>
										@foreach ($errors->all() as $error)
											<li>{{ $error }}</li>
										@endforeach
									</ul>
								</div>
							@endif
						<h2>Apply To Job</h2>
					</div> <!-- /.theme-title-one -->
					<div class="clearfix main-content no-gutters row">
						<div class="col-lg-5 col-12"><div class="img-box"></div></div>
						<div class="col-lg-7 col-12">
							<div class="form-wrapper">
								<form action="{{route('contactstore')}}" method="POST" class="theme-form-one form-validation" autocomplete="on" enctype='multipart/form-data'>
                                    @csrf
									<div class="row">
										<div class="col-sm-6 col-12"><input type="text" placeholder="Name *" name="name"></div>
										<div class="col-sm-6 col-12"><input type="text" placeholder="Phone *" name="number"></div>
										<div class="col-sm-6 col-12"><input type="email" placeholder="Email *" name="email"></div>
										<div class="col-sm-6 col-12"><input type="hidden" name="job_id" value="{{$job_slug}}"></div>
										<div class="col-sm-6 col-12"><input type="file"  name="file"></div>
										<span>upload resume</span>										
									</div> <!-- /.row -->
									<button type="submit" class="theme-button-one">Apply</button>
								</form>
							</div> <!-- /.form-wrapper -->
						</div> <!-- /.col- -->
					</div> <!-- /.main-content -->
				</div> <!-- /.container -->

				<!--Contact Form Validation Markup -->
				<!-- Contact alert -->
				<div class="alert-wrapper" id="alert-success">
					<div id="success">
						<button class="closeAlert"><i class="fa fa-times" aria-hidden="true"></i></button>
						<div class="wrapper">
			               	<p>Your message was sent successfully.</p>
			             </div>
			        </div>
			    </div> <!-- End of .alert_wrapper -->
			    <div class="alert-wrapper" id="alert-error">
			        <div id="error">
			           	<button class="closeAlert"><i class="fa fa-times" aria-hidden="true"></i></button>
			           	<div class="wrapper">
			               	<p>Sorry!Something Went Wrong.</p>
			            </div>
			        </div>
			    </div> <!-- End of .alert_wrapper -->
			</div> <!-- /.contact-us-section -->
        @include("website.partner") --}}

		<div class="normal-bg subheader" style="background-image: url('/website/img/service-banner.jpg');">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="subheader-content">
							<h1 class="page-title text-white fw-600">Hamro Aamanirvar Saving & credit Co-operative Ltd.</h1>
							<ul class="custom-flex breadcrumb">
								<li><a href="/">Home</a></li>
								<li>Apply Now</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="contact-area-page">
				<div class="service-title">
					<h1>Apply Now</h1>
				</div>
				<form action="{{route('storeapply')}}" method="POST" autocomplete="on" enctype='multipart/form-data' class="row">
					@csrf
					<div class="col-lg-12 col-md-12 col-12">
						@if (Session::has('contact'))
							<p class="alert alert-info">{{ Session::get('contact') }}</p>
						@endif
						<div class="apply-area">
							<div class="row">
								<div class="col-6">
									<div class="apply-form">
										<input type="name" name="first_name" class="form-control" id="inputName4" placeholder="Full Name *">
									</div>
	
								</div>
								<input type="hidden"  name="job_id" value="{{$job_slug}}">
								<div class="col-6">
									<div class="apply-form">
										<input type="Phone" name="number" class="form-control" id="inputPhone" placeholder=" Contact Number *">
									</div>
	
								</div>
								<div class="col-6">
									<div class="apply-form">
										<input type="text" name="permanent_address" class="form-control" id="inputemail2" placeholder="Permanent Address*">
									</div>
	
								</div>
								<div class="col-6">
									<div class="apply-form">
										<input type="text" name="temporary_address" class="form-control" id="inputemail2" placeholder="Temporary Address">
									</div>
	
								</div>
								<div class="col-6">
									<div class="apply-form">
										<input type="text" name="email" class="form-control" id="inputemail2" placeholder="Email Address*">
									</div>
	
								</div>
								<div class="col-12">
									<textarea class="form-control" rows="5" id="comment" name="message"
										placeholder="Enter message"></textarea>
								</div>
								<div class="col-lg-4">
									<div class="form-group mt-3">
										<label class="mr-4">Upload your CV:</label>
	
										<div class="file-upload-wrapper" data-text="Select your file!">
											<input name="file" type="file" class="file-upload-field" accept="image/*" />
										</div>
									</div>
								</div>
	
								<div class="col-lg-4">
									<div class="form-group mt-3">
										<label class="mr-4">Upload your Latest Photo:</label>
										<div class="file-upload-wrapper" data-text="Select your file!">
											<input name="photo" type="file" class="file-upload-field" accept="image/*" />
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="form-group mt-3">
										<label class="mr-4">Upload your Scanned Passport:</label>
										<div class="file-upload-wrapper" data-text="Select your file!">
											<input name="passport" type="file" class="file-upload-field" accept="image/*">
										</div>
									</div>
								</div>
								<div class="mr-auto">
									<button class="btn" type="submit" >Submit</button>
								</div>
							</div>
						</div>
					</div>
					<!-- <div class="col-lg-6 col-md-12 col-12">
						<div class="form-text-area ">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3531.4667363154454!2d85.33924361472678!3d27.733746582781034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb1997bb7aa729%3A0xde3df4f6a9881eb2!2sShalmani%20Overseas%20Pvt.%20Ltd.!5e0!3m2!1sen!2snp!4v1643106069807!5m2!1sen!2snp"
								width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"
								referrerpolicy="no-referrer-when-downgrade"></iframe>
						</div>
	
					</div> -->
	
	
				</form>
	
			</div>
		</div>
	

@endsection

	