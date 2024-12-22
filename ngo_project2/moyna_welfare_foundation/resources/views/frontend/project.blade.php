@extends('layouts.front')
@section('meta')
  <title>Project</title>
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
                       Projects                    </div>
                    <div class="all-page-home">
                        <a href="{{ URL::to('/') }}">Home <i class="fas fa-angle-right"></i></a> Projects                    </div>
                    
                </div>
            </div>
        </div>
    </div>           
                    
    <div class="projects-page">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">

                      
                      <div class="proejects-content">
                        


                        	 					@php
					$firstcat=DB::table('categories')->first();
					$firstcatpostbig=DB::table('posts')->where('cat_id',$firstcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
					$firstcatpostsmall=DB::table('posts')->where('cat_id',$firstcat->id)->where('categoryhomepage',1)->orderBy('id','DESC')->limit(100000)->get();
					@endphp
						@foreach($firstcatpostsmall as $row)  
						    @php
								$slug=preg_replace('/\s+/u', '-', trim($row->title_bn ??''));
							@endphp	
                         <div class="projects-item">
                              <div class="projects-image">
                                  <a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}"><img src="{{ asset($row->image ??'')}}" alt=""> </a>
                              </div>  
                              <div class="projects-title">
                                   <a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}">{{ $row->title_bn ??'' }} </a>
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