@extends('layouts.front')
@section('meta')
  <title>{{ $post->title_bn ??''}}</title>
  <meta property="og:url" content="{{Request::fullUrl()}}" />
  <meta property="og:type" content="website" />
  <meta property="og:title" content="{{ $post->title_bn ??''}}" />
  <meta property="og:image" content="{{URL::to($post->image ??'')}}" />
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
                       {{ $post->title_bn ??''}}                 </div>
               
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
                            <img width="600" height="340" src="{{ asset($post->image ??'') }}" class="attachment-918 size-918 wp-post-image" alt="" 0="" srcset="{{ asset($post->image ??'') }} 600w, {{ asset($post->image ??'') }} 300w" sizes="(max-width: 600px) 100vw, 600px" />                        </div>
                        <div class="single_latest_padding">
	           				<div class="latest-date">
	                            <div class="ngo-blog-date">
	                               Date: {{ $post->post_date  ??''}}	                           </div>   
	                           <div class="ngo-blog-cat">
	                                <ul class="post-categories">
	<li><a href="#" rel="category tag">Category: {{ $post->category_bn ??''}}</a></li></ul>	                           </div>
	                        </div>
	                     </div>   

                        <div class="single-latest-title">
                            {{ $post->title_bn ??''}}                      </div>

                        <div class="single-latest-content">
                        	<p>{!! $post->details_bn ??'' !!}</p>
                        </div>
                    </div>
                    
                    </div>
                     <div class="col-md-1 col-sm-1"></div>

	                               </div>
            </div>
        </div>   


@endsection