@extends('layouts.front')
@section('meta')
  <title>Our Management</title>
@endsection
@section('content')

@php
     $firstsectionbig=DB::table('posts')->where('first_section_thumbnail',1)->orderBy('id','DESC')->first();
	 $firstsectionsmall=DB::table('posts')->where('first_section',1)->orderBy('id','DESC')->limit(5)->get();
	 $firstsectionheding=DB::table('posts')->where('headline',1)->orderBy('id','DESC')->limit(5)->get();
	 $user=DB::table('users')->first();
     $setting=DB::table('settings')->first();
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
                       Our Management                    </div>
                    <div class="all-page-home">
                        <a href="{{ URL::to('/') }}">Home <i class="fas fa-angle-right"></i></a> Management</div>
                    
                </div>
            </div>
        </div>
    </div>  
	
<div class="team-page">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                      
                        <div class="team-page-content">
                                
			@php
            $horizontal1=DB::table('ads')->where('type',1)->limit(1000)->get();
            @endphp
								
								
								
								
								
								@foreach($horizontal1 as $row) 
								<div class="team-item">
                                <div class="starff-wrpp">
                                    <div class="staff-image">
                                       <img src="{{ asset($row->ads ??'')}}" alt="">
                                    </div>
                                    <div class="staff-name">
                                         {{ $row->link ??'' }}                                    </div>       

                                    <div class="staff-deg">
                                       {{ $row->designation ??'' }}                                   </div>
                                    
                                    <div class="team-social">
                                      <a href="{{ $row->facebook ??'' }} "> <i class="fab fa-facebook-f"></i></a>
                                      <a href="{{ $row->twitter ??'' }}"> <i class="fab fa-twitter"></i></a>
                                      <a href="{{ $row->linkedin ??'' }}"> <i class="fab fa-linkedin-in"></i></a>
                                      <a href="{{ $row->instagram ??'' }}"> <i class="fab fa-instagram"></i></a>
                                  </div>

                                </div>
                            </div>
                           @endforeach	




                    
                        
                        <div class="Elitesdesign-custom-pagination">
                                                  </div>

                    </div>
                </div>
            </div>
        </div>            





@endsection