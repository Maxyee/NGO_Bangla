@extends('layouts.front')
@section('meta')
  <title>Contct With US</title>
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
                       Contact US                    </div>
                    <div class="all-page-home">
                        <a href="{{ URL::to('/') }}">Home <i class="fas fa-angle-right"></i></a> Contact US                    </div>
                    
                </div>
            </div>
        </div>
    </div>  

       <div class="contact-page">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="contact-wrpp">
                           
                            <div class="contact-item">
                                <div class="contact-icon">
                                    <i class="far fa-envelope"></i>
                                </div>
                                <div class="contact-p-content">
                                    <div class="contact-item-title">
                                        Email:                                    </div> 

                                    <div class="contact-item-content">
                                       {{ $setting->email ??''}}                                 </div>
                                
                                </div>
                            </div>
                            
                            <div class="contact-item">
                                <div class="contact-icon">
                                    <i class="fas fa-phone-alt"></i>
                                </div>
                                <div class="contact-p-content">
                                    <div class="contact-item-title">
                                         Phone:                                    </div> 

                                    <div class="contact-item-content">
                                       {{ $setting->phone_bn ??''}}
                                    </div>
                                
                                </div>
                            </div> 
                            
                            <div class="contact-item">
                                <div class="contact-icon">
                                    <i class="fas fa-map-marker-alt"></i>
                                </div>
                                <div class="contact-p-content">
                                    <div class="contact-item-title">
                                       Address:                                    </div> 

                                    <div class="contact-item-content">
                                       {!! $setting->address_bn ??'' !!}
                                    </div>
                                
                                </div>
                            </div>
                            
                            
                            
                            
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-8">
                       <div class="contacet-from-wrpp">

        <div role="form" class="wpcf7" id="wpcf7-f217-o1" lang="en-US" dir="ltr">
<div class="screen-reader-response" aria-live="polite"></div>
<form action="#" method="post" class="wpcf7-form" novalidate="novalidate">
<div style="display: none;">
<input type="hidden" name="_wpcf7" value="217" />
<input type="hidden" name="_wpcf7_version" value="5.1.9" />
<input type="hidden" name="_wpcf7_locale" value="en_US" />
<input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f217-o1" />
<input type="hidden" name="_wpcf7_container_post" value="0" />
</div>
<div class="row">
<div class="com-md-6 col-sm-6">
<div class="c-page-input-title">
          Name *
     </div>
<div class="contact-page-form">
          <span class="wpcf7-form-control-wrap text-722"><input type="text" name="text-722" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Name" /></span>
      </div>
</p></div>
<div class="com-md-6 col-sm-6">
<div class="c-page-input-title">
          Email *
     </div>
<div class="contact-page-form">
          <span class="wpcf7-form-control-wrap email-166"><input type="email" name="email-166" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="E-mail" /></span>
      </div>
</p></div>
</div>
<div class="row">
<div class="col-md-12">
<div class="c-page-input-title">
          Messages *
      </div>
<div class="contact-page-form">
      <span class="wpcf7-form-control-wrap textarea-212"><textarea name="textarea-212" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea wpcf7-validates-as-required" id="messages" aria-required="true" aria-invalid="false" placeholder="How can I help You?"></textarea></span>
      </div>
</p></div>
</div>
<div class="row">
<div class="col-md-12">
<div class="contact-page-btn">
         <input type="submit" value="Send Message" class="wpcf7-form-control wpcf7-submit" />
      </div>
</p></div>
</div>
<div class="wpcf7-response-output wpcf7-display-none" aria-hidden="true"></div></form></div>

                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
                   
                   
       <div class="maps-section">
            <div class="map">
                <iframe style="border: 0;" tabindex="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.3293174221376!2d90.3861789105561!3d23.73563317859161!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b99e7c2c22bb%3A0xa7ecfda6b6557e36!2sElite%20Design!5e0!3m2!1sen!2sbd!4v1702795803324!5m2!1sen!2sbd" width="600" height="450" frameborder="0" allowfullscreen="" aria-hidden="false"></iframe>            </div>


        </div>

@endsection