@extends('layouts.front')
@section('meta')
  <title>News</title>
@endsection
@section('content')
@php
     $firstsectionbig=DB::table('posts')->where('first_section_thumbnail',1)->orderBy('id','DESC')->first();
	 $firstsectionsmall=DB::table('posts')->where('first_section',1)->orderBy('id','DESC')->limit(20)->get();
	 $firstsectionheding=DB::table('posts')->where('headline',1)->orderBy('id','DESC')->limit(12)->get();
	 $post=DB::table('posts')->first();
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
                       Latest News                    </div>
                    <div class="all-page-home">
                        <a href="{{ URL::to('/') }}">Home <i class="fas fa-angle-right"></i></a> Latest News                    </div>
                    
                </div>
            </div>
        </div>
    </div>  

                             
        <div class="letest-page">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
	
                        <div class="latest-content">
						
						
						
						
			@php
			$thirdcat=DB::table('categories')->skip(2)->first();
			$thirdcatpostbig=DB::table('posts')->where('cat_id',$thirdcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
			$thirdcatpostsmall=DB::table('posts')->where('cat_id',$thirdcat->id)->where('categoryhomepage',1)->orderBy('id','DESC')->limit(1000000)->get();
			@endphp
			
			
			
						    @foreach($thirdcatpostsmall as $row)	
						    @php
						    $slug=preg_replace('/\s+/u', '-', trim($row->title_bn ??''));
							@endphp	
                               <div class="latest-page-wrpp">
                               <div class="latest-p-image">
                                  <img width="600" height="340" src="{{ asset($row->image ??'')}}" class="attachment-blog_featured_image size-blog_featured_image wp-post-image" alt="" srcset="{{ asset($row->image ??'')}} 600w, {{ asset($row->image ??'')}} 300w" sizes="(max-width: 600px) 100vw, 600px" />                               </div>
                               
                                <div class="latest-padding">
                                   <div class="latest-date">
                                        <div class="ngo-blog-date">
                                             {{$post->post_date ??''}}                                      </div>   
                                       <div class="ngo-blog-cat">
                                            <ul class="post-categories">
	<li><a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}" rel="category tag">Exclusive</a></li></ul>                                       </div>
                                    </div>
                                    
                                    <div class="latest-p-title">
                                        <a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}">{{ $row->title_bn ??'' }} </a>
                                    </div>

                                    <div class="latest-p-content">
                                      <p>{{ $row->tags_en ??'' }}</p>
                                    </div>
                                    
                                    <div class="latest-btn">
                                       <a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}">Read More </a>
                                   </div>
                               </div>

                            </div>
                           @endforeach	 



									

                                                    </div>
                    
                         <div class="Elitesdesign-custom-pagination">
                                                    </div>
                    </div>
                </div>
            </div>
        </div>            

@endsection