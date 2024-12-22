@extends('layouts.front')
@section('content')
@php
     $firstsectionbig=DB::table('posts')->where('first_section_thumbnail',1)->orderBy('id','DESC')->first();
	 $firstsectionsmall=DB::table('posts')->where('first_section',1)->orderBy('id','DESC')->limit(20)->get();
	 $firstsectionheding=DB::table('posts')->where('headline',1)->orderBy('id','DESC')->limit(12)->get();
     $setting=DB::table('settings')->first();
	 $social=DB::table('socials')->first();
	 $seo=DB::table('seos')->first();
	 $post=DB::table('posts')->first();
	 
@endphp

				    @php
					$firstcat=DB::table('categories')->first();
					$firstcatpostbig=DB::table('posts')->where('cat_id',$firstcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
					$firstcatpostsmall=DB::table('posts')->where('cat_id',$firstcat->id)->where('categoryhomepage',1)->orderBy('id','DESC')->limit(6)->get();
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
        
 
 
  <!--=======================
                        Home-Slider-section-Start
                    ==========================--> 
        <div class="home-slider-section">
            <div class="home-slider-list owl-carousel">

                                <div class="slider-wrpp">
                    <div class="home-slider-image">
                        <img src="{{ asset($setting->baner1 ??'') }}">
                    </div>
                    <div class="home-slider-content">
                        <div class="text">
                            <span>{{$setting->baner1_text ??''}}</span>
                        </div>
                      
                        <div class="home-content">
                            <p>{!! $setting->baner1short_text ??'' !!}</p>
                        </div>
                    </div>
                </div>
              
        
                                 <div class="slider-wrpp">
                    <div class="home-slider-image">
                        <img src="{{ asset($setting->baner2 ??'') }}">
                    </div>
                    <div class="home-slider-content">
                        <div class="text">
                            <span>{{$setting->baner2_text ??''}}</span>
                        </div>
                      
                        <div class="home-content">
                            <p>{!! $setting->baner2short_text ??'' !!}</p>
                        </div>
                    </div>
                </div>
              
			  
			                                   <div class="slider-wrpp">
                    <div class="home-slider-image">
                        <img src="{{ asset($setting->baner3 ??'') }}">
                    </div>
                    <div class="home-slider-content">
                        <div class="text">
                            <span>{{$setting->baner3_text ??''}}</span>
                        </div>
                      
                        <div class="home-content">
                            <p>{!! $setting->baner3short_text ??'' !!}</p>
                        </div>
                    </div>
                </div>
        
                 
                
            </div>

        </div> 
                             
                   <!--=======================
                        Home-Slider-section-End
                    ==========================-->           
                                      <!--==========================
                                About section Start
                    ===========================--> 
        <div class="about-section wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
           <div class="container">
                <div class="box-shadow">
                                         <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="about-title">
                                {{$setting->institute_history ??''}}
                            </div>

                            <div class="about-content">
                                <p>{{$setting->institute_info_short ??''}}</p>
 <a href="{{ URL::to('/institute') }}">Read More</a>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="about-image">
                                <img src="{{ asset($setting->institutehistoryimages ??'') }}" alt="">
                            </div>
                        </div>
                    </div>

                                     </div>
            </div>
        </div>

                           <!--==========================
                                About section End
                            ===========================--> 
                                        
        <div class="speech-section  wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
            <div class="container">
                <div class="row">

                                                 <div class="col-md-6 col-ms-6">
                           <div class="box-shadow">
                               <div class="speech-wrpp">
                                    <div class="speech-title">
                                        {{ $setting->president_tittle ??''}}                                   </div>
                                    <div class="speech-image">
                                        <img src="{{ asset($setting->president_images ??'') }}" alt="">
                                    </div>
                                    <div class="speech-content">
                                        <p>{{ $setting->president_short ??''}} </p>
 <a href="{{ URL::to('/president') }}">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                                                <div class="col-md-6 col-ms-6">
                           <div class="box-shadow">
                               <div class="speech-wrpp">
                                    <div class="speech-title">
                                        {{ $setting->genarelsecretr_tittle ??''}}                                   </div>
                                    <div class="speech-image">
                                        <img src="{{ asset($setting->genarelsecretr_images ??'') }}" alt="">
                                    </div>
                                    <div class="speech-content">
                                        <p>{{ $setting->genarelsecretr_short ??''}} </p>
 <a href="{{ URL::to('/secretery') }}">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        
                </div>
            </div>
        </div>                    
                            
      

                           
           
<div class="porjects-section wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
<div class="container">
    <div class="row">
       <div class="col-md-12 col-sm-12">
          <div class="projects-wrpp">
               <div class="projects-sec-title">
                 Our Projects               </div>
                <div class="icon-seciton-img">
                    <img src="{{ asset('public/frontend/assets/img/icon-image.png') }}" alt="">
                </div>
           </div>
       </div>
    </div>
       <div class="row">
           <div class="col-md-12">
         
                
                <div class="proejects-content">
				
				
				

						@foreach($firstcatpostsmall as $row)  
						    @php
								$slug=preg_replace('/\s+/u', '-', trim($row->title_bn ??''));
							@endphp
                              
                   <div class="projects-item">
                        <div class="projects-image">
                            <a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}"><img src="{{ asset($row->image ??'')}}" alt=""> </a>
                        </div>  
                        <div class="projects-title">
                             <a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}"> {{ $row->title_bn ??'' }}</a>
                        </div>  
                    </div>
                                 
                   @endforeach 
				   
				   
				   
				   
               </div>  

            </div>
       </div>
    </div>
</div>

                
     
                                 <!--==========================
                             Counter Section start
                            ===========================-->  
        <div class="counter-section wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
            <div class="container">
                <div class="row">
                     
                   

                    <div class="col-md-3 col-sm-3">
                        <div class="counter-contant ">
                            <h2><span>{{ $setting->complite_project }}</span>+</h2>
                            <p>Complete Project</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3">
                        <div class="counter-contant">
                            <h2><span>{{ $setting->running_project }}</span>+</h2>
                            <p>Running Project</p>
                        </div>
                    </div> 
                    <div class="col-md-3 col-sm-3">
                        <div class="counter-contant">
                            <h2><span>{{ $setting->upcomeing_project }}</span>+</h2>
                            <p>Upcoming Project</p>

                        </div>
                    </div> 
                        
                    <div class="col-md-3 col-sm-3">
                        <div class="counter-contant">
                            <h2><span>{{ $setting->satisfied_qualification }}</span>%</h2>
                             <p>Satisfied Qualification</p>

                        </div>
                    </div> 
                       
                                             
                </div>
            </div>
        </div> 
 
                     
                     <!--==========================
                      Counter section End
                    ===========================-->
                                               
     @php
        $notice=DB::table('notices')->first();                
	 @endphp          
    <!--===================== 
        Notic section Start
    ======================-->
    <div class="notic-section wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-sm-2"></div>
                <div class="col-md-8 col-sm-8">
                    <div class="notic-title">
                       {{ $notice->notice ??''}}                </div>
                </div>
                <div class="col-md-2 col-sm-2"></div>
                
                
            </div>
        </div>
    </div>            
                  

                           
           
<div class="porjects-section wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
  <div class="container">
    <div class="row">
       <div class="col-md-12 col-sm-12">
          <div class="projects-wrpp">
               <div class="projects-sec-title">
                   OUR SERVICES               </div>
                <div class="icon-seciton-img">
                    <img src="{{ asset('public/frontend/assets/img/icon-image.png') }}" alt="">
                </div>
           </div>
       </div>
    </div>
   
     <div class="row">
        <div class="col-md-12 col-sm-12">

                        <div class="services-page-content">
						
							        @php
	        $secondcat=DB::table('categories')->skip(1)->first();
			$secondcatpostbig=DB::table('posts')->where('cat_id',$secondcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
			$secondcatpostsmall=DB::table('posts')->where('cat_id',$secondcat->id)->where('categoryhomepage',1)->orderBy('id','DESC')->limit(6)->get();
			@endphp
                  
                
				            @foreach($secondcatpostsmall as $row)
                            @php
								$slug=preg_replace('/\s+/u', '-', trim($row->title_bn ??''));
							@endphp	
				
				<div class="services-page-wrpp">
                    <div class="services-image">
                        <img src="{{ asset($row->image ??'')}}" alt="">
                    </div>
                    <div class="services-page-item">
                        <div class="services-title">
                            {{ $row->title_bn ??'' }}       </div>
                        <div class="services-content">
                            <p>{{ $row->tags_en ??'' }}</p>
                        </div>
                        
                        <div class="services-btn">
                            <a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}">Read More..</a>
                        </div>
                        
                    </div>
                </div>
                
 @endforeach



                
            </div>
                     </div>
    </div>
       
    </div>
</div>

                
     
                                 
       
                  <!--==========================
                            Team section Start
                    ===========================--> 
    <div class="staff-seciton wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="staff-section-wrpp">
                        <div class="staff-seciton-title">
                            Meet Our Management Team                       </div>

                        <div class="staff-seciton-img">
                            <img src="{{ asset('public/frontend/assets/img/icon-image.png') }}" alt="">
                        </div>
                    </div>
                        
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12">
			@php
            $horizontal1=DB::table('ads')->where('type',1)->limit(1000)->get();
            @endphp
					
                     
					 
					 
					 
                    <div class="team-list owl-carousel">
					
					
					@foreach($horizontal1 as $row)
                           <div class="starff-wrpp">
						   
                            <div class="staff-image">
                                <img src="{{ asset($row->ads ??'')}}" alt="">
                            </div>
                            <div class="staff-name">
                                {{ $row->link ??'' }}                             </div>       
                            
                            <div class="staff-deg">
                               {{ $row->designation ??'' }}                            </div>
                            
                             <div class="team-social">
                                      <a href="{{ $row->facebook ??'' }} "> <i class="fab fa-facebook-f"></i></a>
                                      <a href="{{ $row->twitter ??'' }}"> <i class="fab fa-twitter"></i></a>
                                      <a href="{{ $row->linkedin ??'' }}"> <i class="fab fa-linkedin-in"></i></a>
                                      <a href="{{ $row->instagram ??'' }}"> <i class="fab fa-instagram"></i></a>
                              </div>
                            </div>
                        
                                @endforeach	    
							

							 </div>
                     
                </div>
            </div>
            
            
            
        </div>
    </div>      
                    <!--==========================
                            Team section End
                    ===========================--> 
                                    
                                              
             
<!--=======================
                        Gallery-section-Start
                    ==========================-->  
				@php
				$photobig=DB::table('photos')->where('type',1)->orderBy('id','DESC')->limit(9)->get();
				$photosmall=DB::table('photos')->where('type',0)->orderBy('id','DESC')->limit(9)->get();
				@endphp
        <div class="gallery-section wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="staff-section-wrpp">
                            <div class="staff-seciton-title">
                              Photo Gallery                            </div>

                            <div class="staff-seciton-img">
                                <img src="{{ asset('public/frontend/assets/img/icon-image.png') }}" alt="">
                            </div>
                        </div>
                            
                    </div>
                </div>
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
                                     
                    
                </div>
            </div>
        </div>
                 
                    <!--=======================
                        Gallery-section-End
                    ==========================-->            
                   
                                                    
                 
                            <!--==========================
                                Latest news-section  start
                            ===========================--> 
    <div class="blog-section wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-sm-2"></div>
                <div class="col-md-8 col-sm-8">
                    <div class="blog-section-wrpp">
                        <div class="blog-seciton-title">
									@php
			$thirdcat=DB::table('categories')->skip(2)->first();
			$thirdcatpostbig=DB::table('posts')->where('cat_id',$thirdcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
			$thirdcatpostsmall=DB::table('posts')->where('cat_id',$thirdcat->id)->where('categoryhomepage',1)->orderBy('id','DESC')->limit(1000000)->get();
			@endphp
                            Latest News                        </div>

                        <div class="blog-seciton-img">
                            <img src="{{ asset('public/frontend/assets/img/icon-image.png') }}" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="blog-list owl-carousel">

                           
						   
						   
						   	@foreach($thirdcatpostsmall as $row)	
						    @php
						    $slug=preg_replace('/\s+/u', '-', trim($row->title_bn ??''));
							@endphp	
						   <div class="blog-wrpp">
                           <div class="blog-image">
                               <img width="600" height="340" src="{{ asset($row->image ??'')}}" class="attachment-blog_featured_image size-blog_featured_image wp-post-image" alt="" srcset="{{ asset($row->image ??'')}} 600w, {{ asset($row->image ??'')}} 300w" sizes="(max-width: 600px) 100vw, 600px" />
                           </div>

                           <div class="blog-padding">
                   
                                <div class="date_and_category">
                                  <div class="ngo-blog-date">
                                          {{$post->post_date ??''}}                                    </div>   
                                   <div class="ngo-blog-cat">
                                        <ul class="post-categories">
	<li><a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}" rel="category tag">News</a></li></ul>                                   </div>
                                </div>


                                <div class="blog-title">
                                   <a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}">{{ $row->title_bn ??'' }}</a>
                                </div>

                                <div class="blog-content">
                                  <p>{{ $row->tags_en ??'' }}</p>
                                </div>
                           </div>

                           <div class="read-more-btn">
                               <a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}">Read More </a>
                           </div>

                        </div>
@endforeach








                               

                    </div>
                </div>
            </div>
            
            
        </div>
    </div>
                                             
                            <!--==========================
                                Latest news-section End
                            ===========================--> 
                                                                
                   
                    <!--=======================
                        Video-Gallery section-Start
                    ==========================--> 
          <div class="video-gallery-section">
            <div class="container">
               <div class="video-section-wrpp">
                   <div class="video-section-title">
                       Video Gallery                   </div>
                   <div class="icons-image">
                       <img src="assets/img/icon-image.png" alt="">
                   </div>
               </div>
               
                <div class="row">
                   <div class="col-md-12 ">
                  			    @php
				$videobig=DB::table('videos')->where('type',1)->orderBy('id','DESC')->first();
				$videosmall=DB::table('videos')->where('type',1)->orderBy('id','DESC')->limit(5)->get();
				$videosmall2=DB::table('videos')->where('type',1)->orderBy('id','DESC')->limit(8)->get();
				@endphp	

                                         <div class="video-list owl-carousel"> 
                        
                        
						
						
						@foreach($videosmall2 as $row)
						<div class="video_wrpp">
                                                       <a class="popup-youtube" href="https://www.youtube.com/watch?v={{  $row->embed_code ??''}}"> <i class="fa fa-play" aria-hidden="true"></i></a>
                         
                            <div class="video-wrpp">
                                <div class="cat_image_img">
                                    <a href="#"> <img src="https://img.youtube.com/vi/{{  $row->embed_code ??''}}/mqdefault.jpg" alt=""></a>
                                </div>
                                <div class="cat_image_title">
                                    <a href="#">{{ $row->title ??''}} </a>
                                   
                                </div>
                            </div>
                         </div>
                         @endforeach
                        
						
						
						
						
						
						
						
                           
                      </div>
                                         </div>
                </div>
            </div>
        </div>
  
  	                <!--================================
				        video-Gallery-section-End
                      ===============================-->
              
                   
                                      
                                               

                   
                    <!--=======================
                        Client-section-Start
                    ==========================-->            
        <div class="client-section">
            <div class="container">
               <div class="row">
                   <div class="col-md-2"></div>
                   <div class="col-md-8 col-sm-8">
                       <div class="client-sec-wrpp">
                           <div class="client-sec-title">
                               WHAT OUR CLIENTS SAYS                           </div>
                        </div>
                   </div>
                   <div class="col-md-2"></div>
               </div>
                <div class="row">
                    <div class="col-md-12">
                                                    <div class="client-list owl-carousel">
                            
                            <div class="client-wrpp">
                                <div class="client-image">
                                    <img src="{{ asset('public/frontend/uploads/2018/11/1.png') }}" alt="">
                                </div>
                                <div class="client-item">
                                    <div class="client-title">
                                       {{ $seo->client1_name ??''}}                                   </div>
                                    <div class="client-content">
                                      <p>{!! $seo->client1_testimonial ??'' !!} </p>
                                    </div>
                              
                                </div>
                            </div>
                            
                            <div class="client-wrpp">
                                <div class="client-image">
                                    <img src="{{ asset('public/frontend/uploads/2018/11/1.png') }}" alt="">
                                </div>
                                <div class="client-item">
                                    <div class="client-title">
                                       {{ $seo->client2_name ??''}}                                   </div>
                                    <div class="client-content">
                                      <p>{!! $seo->client2_testimonial ??'' !!}</p>
                                    </div>
                              
                                </div>
                            </div>
                            
                            <div class="client-wrpp">
                                <div class="client-image">
                                    <img src="{{ asset('public/frontend/uploads/2018/11/1.png') }}" alt="">
                                </div>
                                <div class="client-item">
                                    <div class="client-title">
                                        {{ $seo->client3_name ??''}}                                   </div>
                                    <div class="client-content">
                                      <p>{!! $seo->client3_testimonial ??'' !!}</p>
                                    </div>
                              
                                </div>
                            </div>
                            
                            <div class="client-wrpp">
                                <div class="client-image">
                                    <img src="{{ asset('public/frontend/uploads/2018/11/1.png') }}" alt="">
                                </div>
                                <div class="client-item">
                                    <div class="client-title">
                                        {{ $seo->client4_name ??''}}                                   </div>
                                    <div class="client-content">
                                      <p>{!! $seo->client4_testimonial ??'' !!}</p>
                                    </div>
                              
                                </div>
                            </div>
                            
                            <div class="client-wrpp">
                                <div class="client-image">
                                    <img src="{{ asset('public/frontend/uploads/2018/11/1.png') }}" alt="">
                                </div>
                                <div class="client-item">
                                    <div class="client-title">
                                       {{ $seo->client5_name ??''}}                                  </div>
                                    <div class="client-content">
                                      <p>{!! $seo->client5_testimonial ??'' !!}</p>
                                    </div>
                              
                                </div>
                            </div>
                            
                            <div class="client-wrpp">
                                <div class="client-image">
                                    <img src="{{ asset('public/frontend/uploads/2018/11/1.png') }}" alt="">
                                </div>
                                <div class="client-item">
                                    <div class="client-title">
                                       {{ $seo->client6_name ??''}}                                   </div>
                                    <div class="client-content">
                                      <p>{!! $seo->client6_testimonial ??'' !!}</p>
                                    </div>
                              
                                </div>
                            </div>
                            

                                                    
                            
                            
                        </div>
                                             </div>
                </div>
            </div>
        </div>
                   
                   
                   
                    <!--=======================
                        Client-section-End
                    ==========================-->
                    
                                          <!--=======================
                        partner-section-Start
                    ==========================-->            
        <div class="partner-scetion">
            <div class="container">
                <div class="row">
                    
                    <div class="col-md-12 col-sm-12">
                                                    <div class="partner-list owl-carousel">
                                
                            <div class="partner-wrpp">
                                <div class="partner-image">
                                    <a href=""><img src="{{ asset($setting->brand1_logo ??'') }}" alt=""></a>
                                </div>
                            </div>
                            
                            <div class="partner-wrpp">
                                <div class="partner-image">
                                    <a href=""><img src="{{ asset($setting->brand2_logo ??'') }}" alt=""></a>
                                </div>
                            </div>
                            
                            <div class="partner-wrpp">
                                <div class="partner-image">
                                    <a href=""><img src="{{ asset($setting->brand3_logo ??'') }}" alt=""></a>
                                </div>
                            </div>
							
							                            <div class="partner-wrpp">
                                <div class="partner-image">
                                    <a href=""><img src="{{ asset($setting->brand4_logo ??'') }}" alt=""></a>
                                </div>
                            </div>
                                                     
                        </div>
                                             </div>
                </div>
            </div>
        </div>
                   
                   
                    <!--=======================
                        partner-section-End
                    ==========================-->       

 
				@endsection