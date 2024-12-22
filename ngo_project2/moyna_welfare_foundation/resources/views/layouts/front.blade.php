@php
	$category=DB::table('categories')->orderBy('id','ASC')->get();
	$seo=DB::table('seos')->first();
	$social=DB::table('socials')->first();
	$horizontal1=DB::table('ads')->where('type',2)->first();
	$setting=DB::table('settings')->first();
@endphp
<!doctype html>
<html lang="en-US">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
 <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="{{ $seo->meta_author ??'' }}">
        <meta name="keyword" content="{{ $seo->meta_keyword ??''}}">
        <meta name="description" content="{{ $seo->meta_description ??''}}">
        <meta name="google-verification" content="{{ $seo->google_verification ??''}}">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        @yield('meta')
     
        <title>{{ $seo->meta_title }}</title>
         
     <link rel="icon" href="{{ asset($setting->favicon ??'') }}">
<link rel='dns-prefetch' href='http://s.w.org/' />
<link rel="alternate" type="application/rss+xml" title="NGO &raquo; Feed" href="feed/index.html" />
<link rel="alternate" type="application/rss+xml" title="NGO &raquo; Comments Feed" href="comments/feed/index.html" />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/12.0.0-1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/12.0.0-1\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/elitedesign.com.bd\/ngo\/\/js\/wp-emoji-release.min.js?ver=5.2.19"}};
			!function(e,a,t){var n,r,o,i=a.createElement("canvas"),p=i.getContext&&i.getContext("2d");function s(e,t){var a=String.fromCharCode;p.clearRect(0,0,i.width,i.height),p.fillText(a.apply(this,e),0,0);e=i.toDataURL();return p.clearRect(0,0,i.width,i.height),p.fillText(a.apply(this,t),0,0),e===i.toDataURL()}function c(e){var t=a.createElement("script");t.src=e,t.defer=t.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(t)}for(o=Array("flag","emoji"),t.supports={everything:!0,everythingExceptFlag:!0},r=0;r<o.length;r++)t.supports[o[r]]=function(e){if(!p||!p.fillText)return!1;switch(p.textBaseline="top",p.font="600 32px Arial",e){case"flag":return s([55356,56826,55356,56819],[55356,56826,8203,55356,56819])?!1:!s([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]);case"emoji":return!s([55357,56424,55356,57342,8205,55358,56605,8205,55357,56424,55356,57340],[55357,56424,55356,57342,8203,55358,56605,8203,55357,56424,55356,57340])}return!1}(o[r]),t.supports.everything=t.supports.everything&&t.supports[o[r]],"flag"!==o[r]&&(t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&t.supports[o[r]]);t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&!t.supports.flag,t.DOMReady=!1,t.readyCallback=function(){t.DOMReady=!0},t.supports.everything||(n=function(){t.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",n,!1),e.addEventListener("load",n,!1)):(e.attachEvent("onload",n),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&t.readyCallback()})),(n=t.source||{}).concatemoji?c(n.concatemoji):n.wpemoji&&n.twemoji&&(c(n.twemoji),c(n.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
	<link rel='stylesheet' id='wp-block-library-css'  href='{{ asset('public/frontend/assets/frontend/css/dist/block-library/style.mina946.css?ver=5.2.19') }}' type='text/css' media='all' />
<link rel='stylesheet' id='bootstrap-css'  href='{{ asset('public/frontend/assets/css/bootstrap.minf9b8.css?ver=4.0') }}' type='text/css' media='all' />
<link rel='stylesheet' id='font-awesome-css'  href='{{ asset('public/frontend/assets/css/all.min5152.css?ver=1.0') }}' type='text/css' media='all' />
<link rel='stylesheet' id='owl-carousel-css'  href='{{ asset('public/frontend/assets/css/owl.carousel.min5152.css?ver=1.0') }}' type='text/css' media='all' />
<link rel='stylesheet' id='magnific-popup-css'  href='{{ asset('public/frontend/assets/css/magnific-popup5152.css?ver=1.0') }}' type='text/css' media='all' />
<link rel='stylesheet' id='animate-css-css'  href='{{ asset('public/frontend/assets/css/animatec9eb.css?ver=1702226817') }}' type='text/css' media='all' />
<link rel='stylesheet' id='stellarnav-css-css'  href='{{ asset('public/frontend/assets/css/stellarnavc9eb.css?ver=1702226817') }}' type='text/css' media='all' />
<link rel='stylesheet' id='style-css-css'  href='{{ asset('public/frontend/assets/css/stylec9eb.css?ver=1702226817') }}' type='text/css' media='all' />
<link rel='stylesheet' id='responsive-css-css'  href='{{ asset('public/frontend/assets/css/responsivec9eb.css?ver=1702226817') }}' type='text/css' media='all' />
<link rel='stylesheet' id='Ngo-style-css'  href='{{ asset('public/frontend/style8a54.css?ver=1.0.0') }}' type='text/css' media='all' />
<script type='text/javascript' src='{{ asset('public/frontend/js/jquery/jquery4a5f.js?ver=1.12.4-wp') }}'></script>
<script type='text/javascript' src='{{ asset('public/frontend/js/jquery/jquery-migrate.min330a.js?ver=1.4.1') }}'></script>
		  
<style>

.top-header-section {
	background: #0f4f17;
}
.company-title ul li {
	color: #ffffff;
}
.menu-section {
	background: #f5f5f5;
}
.stellarnav.dark {background: #f5f5f5;}

.stellarnav.dark ul ul {background: #f5f5f5;}
.stellarnav.dark li a { color: #000; }

.stellarnav li.has-sub > a:after { border-top: 6px solid #000; }
.stellarnav > ul > li > a {
	font-size: 14px;
}

.scrollToTop {
	background: #ff0101;	
}

.footer-section {
	background: #0f4f17}

.bottom-footer-section {
	background: #357b3d}


</style>
</head>

<body class="home blog">
          

     <!--=======================
            top-header-start
        ==========================-->
   <div class="top-header-section">
       <div class="container">
           <div class="row">
               <div class="col-md-6 col-sm-6">
                  <div class="company-title">
                       <ul>
                           <li>
                           <i class="fas fa-phone" aria-hidden="true"></i><strong> Call:</strong> {{ $setting->phone_bn ??''}}
                           </li> 

                            <li>
                            <i class="far fa-envelope"></i><strong>Email:</strong>  {{ $setting->email ??''}} </li>               
                        </ul>
                 
                  </div>
                  
               </div>
               <div class="col-md-6 col-sm-6">
                    <div class="top-social">
                        <a href="{{ $social->facebook ??''}}" target="_blank" title="facebook"> <i class="fab fa-facebook"></i></a>
                        <a href="{{ $social->twitter ??''}}" target="_blank" title="twitter"> <i class="fab fa-twitter"></i></a>
               
                        <a href="{{ $social->instagram ??''}}" target="_blank" title="instagram"> <i class="fab fa-instagram fa-md"></i></a>
                        <a href="{{ $social->youtube ??''}}" target="_blank" title="youtube"> <i class="fab fa-youtube"></i></a>
                    </div>
               </div>
           </div>
       </div>
   </div>
             
        <!--=======================
            top-header-End
        ==========================-->
          
                    <!--=======================
                        Menu-section-Start
                    ==========================-->           
    <div class="menu-section">
        <div class="container">
            <div class="row">
               <div class="col-md-3 col-sm-2">
                   <div class="logo">
                                                  <a href="{{ URL::to('/') }}"><img src="{{ asset($setting->logo ??'') }}" /></a>
                                            </div>
               </div>
                <div class="col-md-9 col-sm-10">
					<div class="stellarnav"><ul id="menu-main-menu" class="menu"><li id="menu-item-92" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-92"><a href="{{ URL::to('/') }}" aria-current="page">Home</a></li>
<li id="menu-item-137" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-137"><a href="{{ URL::to('/institute') }}">About Us</a></li>
<li id="menu-item-142" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-142"><a href="{{ URL::to('/project') }}">Projects</a></li>
<li id="menu-item-143" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-143"><a href="{{ URL::to('/service') }}">Services</a></li>
<li id="menu-item-140" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-140"><a href="#">Our Team</a>
<ul class="sub-menu">
	<li id="menu-item-145" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-145"><a href="{{ URL::to('/member') }}">Managment</a></li>
	<li id="menu-item-146" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-146"><a href="{{ URL::to('/staff') }}">Staff</a></li>
</ul>
</li>
<li id="menu-item-141" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-141"><a href="{{ URL::to('/photo') }}">Photo Gallery</a></li>
<li id="menu-item-139" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-139"><a href="{{ URL::to('/news') }}">News</a></li>
<li id="menu-item-138" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-138"><a href="{{ URL::to('/contact') }}">Contact US</a></li>
</ul></div>
                </div>
                
               
                
            </div>
        </div>
		
    </div>
                    <!--=======================
                        Menu-section-End
                    ==========================-->       
                    
                    
                        
                                                      
        @yield('content')
                                       
                                
               
                    <!--=======================
                        Footer-section-Start
                    ==========================-->            
        <div class="footer-section">
            <div class="container">
                <div class="footer-wrpp">
                    <div class="row">
                        <div class="col-md-3 col-sm-3">
                            <div class="footer-logo">
                                                                 <a href="{{ URL::to('/') }}"><img src="{{ asset($setting->logo ??'') }}" /></a>
                                                            </div>
                            <div class="footer-content">
                               <i class="fas fa-map-marker-alt"></i>
                                {{ $setting->address_bn ??''}}                            </div>
                            
                            <div class="footer-content">
                                 <i class="far fa-envelope"></i> {{ $setting->email ??''}}                          </div>
                            <div class="footer-content">
                                 <i class="fas fa-phone-alt"></i> Phone: {{ $setting->phone_bn ??''}}                            </div>
                            
                            <div class="footer-social">
                                <a href="{{ $social->facebook ??''}}" target="_blank"> <i class="fab fa-facebook"></i></a>
                                <a href="{{ $social->twitter ??''}}" target="_blank"> <i class="fab fa-twitter"></i></a>
                                <a href="{{ $social->youtube ??''}}" target="_blank"> <i class="fab fa-youtube"></i></a>
                                <a href="{{ $social->instagram ??''}}" target="_blank"> <i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                           <div class="footer-title">
                               Pages                           </div>
                 

                          <div class="footer-menu"><ul id="menu-footer-menu-two" class=""><li id="menu-item-103" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-103"><a href="{{ URL::to('/news') }}">Latest News</a></li>
<li id="menu-item-102" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-102"><a href="{{ URL::to('/staff') }}">Our Staff</a></li>
<li id="menu-item-106" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-106"><a href="{{ URL::to('/photo') }}">Photo Gallery</a></li>
<li id="menu-item-213" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-213"><a href="{{ URL::to('/project') }}">Projects</a></li>
</ul></div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="footer-title">
                               Get In Touch                           </div>

                            <div class="footer-menu"><ul id="menu-footer-menu-one" class=""><li id="menu-item-108" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-108"><a href="{{ URL::to('/contact') }}">Contact US</a></li>
<li id="menu-item-214" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-214"><a href="{{ URL::to('/service') }}">Services</a></li>
<li id="menu-item-215" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-215"><a href="{{ URL::to('/member') }}">Team</a></li>
<li id="menu-item-216" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-216"><a href="{{ URL::to('/institute') }}">About Us</a></li>
</ul></div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="footer-title">
                                 Our Embitions
                           </div>
                           <div class="embitions_content">
                               {{ $setting->embition ??''}} 
                           </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      
  
                   
				   
				  
                                      
                                  
                     <!--================================
                              bottom-footer-start
                        ===============================-->
        <div class="bottom-footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                       <div class="copy-right">
                            © All rights reserved By: {{ $seo->meta_title }}
                       </div>
                       
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="design-developed">
                            Theme Developed BY  <a href="http://www.elitedesign.com.bd/" target="_blank" title="elitedesign.com.bd"> Elite Design  </a> 
                        </div>
                    </div>
                </div>
                
                 <a href="#" class="scrollToTop"><i class="fas fa-long-arrow-alt-up"></i></a>
            </div>
        </div>
                                     
   
<script type='text/javascript' src='{{ asset('public/frontend/assets/js/bootstrap.minf9b8.js?ver=4.0') }}'></script>
<script type='text/javascript' src='{{ asset('public/frontend/assets/js/owl.carousel.min5152.js?ver=1.0') }}'></script>
<script type='text/javascript' src='{{ asset('public/frontend/assets/js/jquery.magnific-popup.min5152.js?ver=1.0') }}'></script>
<script type='text/javascript' src='{{ asset('public/frontend/assets/js/stellarnav.min5152.js?ver=1.0') }}'></script>
<script type='text/javascript' src='{{ asset('public/frontend/assets/js/counterup.min5152.js?ver=1.0') }}'></script>
<script type='text/javascript' src='{{ asset('public/frontend/assets/js/waypoints.min5152.js?ver=1.0') }}'></script>
<script type='text/javascript' src='{{ asset('public/frontend/assets/js/wow5152.js?ver=1.0') }}'></script>
<script type='text/javascript' src='{{ asset('public/frontend/assets/js/mainc9eb.js?ver=1702226817') }}'></script>
<script type='text/javascript' src='{{ asset('public/frontend/js/navigation8a54.js?ver=1.0.0') }}'></script>
<script type='text/javascript' src='{{ asset('public/frontend/js/wp-embed.mina946.js?ver=5.2.19') }}'></script>
    </body>
</html>
   