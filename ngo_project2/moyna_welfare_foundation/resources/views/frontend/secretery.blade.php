@php
$seo=DB::table('seos')->first();
@endphp
@extends('layouts.front')
@section('meta')
  <title>GENERAL SECRETARY’S SPEECH</title>
  
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
                     {{ $setting->genarelsecretr_tittle ??''}}                   </div>
     
                    
                </div>
            </div>
        </div>
    </div>           
                    
                         
        <div class="single-letest-page">
            <div class="container">
                <div class="row">
              	  
                    <div class="col-md-1 col-sm-1"></div>
                    <div class="col-md-10 col-sm-10">
                        <div class="latest-border">
                        <div class="single-latest-image">
                            <img width="247" height="204" src="{{ $setting->genarelsecretr_images ??''}} " class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" />                        </div>
                        <div class="date">

                        <div class="single-latest-title">
                            {{ $setting->genarelsecretr_tittle ??''}}                         </div>

                        <div class="single-latest-content">
                        	<p>{!! $setting->genarelsecretr_long ??''!!}</p>
                        </div>
                    </div>
                    
                    </div>
                     <div class="col-md-1 col-sm-1"></div>

	                               </div>
            </div>
        </div>   


@endsection