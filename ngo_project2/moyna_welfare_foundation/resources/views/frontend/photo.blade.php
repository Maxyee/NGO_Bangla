@extends('layouts.front')
@section('meta')
  <title>ফটো গ্যালারী</title>
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

				@php
				$photobig=DB::table('photos')->where('type',1)->orderBy('id','DESC')->limit(10000000)->get();
				$photosmall=DB::table('photos')->where('type',0)->orderBy('id','DESC')->limit(10000000)->get();
				@endphp
				
				
     <div class="all-page-section" style="background-image: url({{ asset('public/frontend/assets/img/bg.jpg') }});">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="all-page-header-title">
                       Photo Gallery                    </div>
                    <div class="all-page-home">
                        <a href="{{ URL::to('/') }}">Home <i class="fas fa-angle-right"></i></a> Photo Gallery                    </div>
                    
                </div>
            </div>
        </div>
    </div>  

     
        <div class="gallery-page wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
            <div class="container">
               
                <div class="row">
                    <div class="gallery-content">
					
					
					
					 @foreach($photobig as $row)
                                                <div class="gallery-wrpp">
                            <div class="gallery-image">
                                <a href="{{ asset($row->photo ??'')}}" class="image-link">
                                   <img src="{{ asset($row->photo ??'')}}"/>
                                </a>
                            </div>
                        </div> 
                            @endforeach    
								
								
                                                 
                    </div>
                                           <div class="col-md-12">
                        <div class="Elitesdesign-custom-pagination">
                                                    </div>
                    </div>
                    
                </div>
            </div>
        </div>     



@endsection