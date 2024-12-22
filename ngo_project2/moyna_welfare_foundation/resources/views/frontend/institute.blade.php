@extends('layouts.front')
@section('meta')
  <title>About US</title>
@endsection
@section('content')
@php
     $firstsectionbig=DB::table('posts')->where('first_section_thumbnail',1)->orderBy('id','DESC')->first();
	 $firstsectionsmall=DB::table('posts')->where('first_section',1)->orderBy('id','DESC')->limit(5)->get();
	 $firstsectionheding=DB::table('posts')->where('headline',1)->orderBy('id','DESC')->limit(5)->get();
	 $user=DB::table('users')->first();
     $setting=DB::table('settings')->first();
	 $seo=DB::table('seos')->first();
@endphp
 <!--============Scroll 03 start==============-->
    @php
	 $headline=DB::table('posts')
                        ->join('categories','posts.cat_id','categories.id')
                        ->join('subcategories','posts.subcat_id','subcategories.id')
                        ->select('posts.*','categories.category_bn','subcategories.subcategory_bn')
                        ->where('posts.headline',1)
                        ->orderBy('id','DESC')
                        ->limit(5)
                        ->get();               
	 @endphp  
	 
	 
	 
	   <div class="all-page-section" style="background-image: url({{ asset('public/frontend/assets/img/bg.jpg') }});">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="all-page-header-title">
                       About Us                    </div>
                    <div class="all-page-home">
                        <a href="{{ URL::to('/') }}">Home <i class="fas fa-angle-right"></i></a> About Us                    </div>
                    
                </div>
            </div>
        </div>
    </div>           
                    
                                      
    <div class="about-page">
        <div class="container">
                       <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="about-page-title">
                        {{ $seo->meta_title }}                    </div>
                    <div class="about-page-content">
                         <p>{!! $setting->institute_info_long ??'' !!}</p>
                    </div>
                </div> 
                
                <div class="col-md-6 col-sm-6">
                    <div class="about-page-image">
                        <img src="{{ $setting->institutehistoryimages }}" alt="">
                    </div>
                   
                </div>
                    
                
            </div>
           
        </div>
    </div>
            
        
                    
                   
        
               <!--==========================
                 Counter Section start

                            <!--==========================
                             Counter Section start
                            ===========================-->  
        <div class="counter-section wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
            <div class="container">
                <div class="row">
                     
                   

                    <div class="col-md-3 col-sm-3">
                        <div class="counter-contant ">
                            <h2><span>{{ $setting->complite_project }} </span>+</h2>
                            <p>Complete Project</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3">
                        <div class="counter-contant">
                            <h2><span>{{ $setting->running_project }} </span>+</h2>
                            <p>Running Project</p>
                        </div>
                    </div> 
                    <div class="col-md-3 col-sm-3">
                        <div class="counter-contant">
                            <h2><span>{{ $setting->upcomeing_project }} </span>+</h2>
                            <p>Upcoming Project</p>

                        </div>
                    </div> 
                        
                    <div class="col-md-3 col-sm-3">
                        <div class="counter-contant">
                            <h2><span>{{ $setting->satisfied_qualification }} </span>%</h2>
                             <p>Satisfied Qualification</p>

                        </div>
                    </div> 
                       
                                             
                </div>
            </div>
        </div> 
 
                     
                     <!--==========================
                      Counter section End
                    ===========================-->



@endsection