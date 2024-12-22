(function ($) {
	"use strict";

    jQuery(document).ready(function($){
       
    /*---------- menu js start---------*/  
       $('.stellarnav').stellarNav({
				theme: 'dark',
				breakpoint: 768,
				position: 'static',
				phoneBtn: false,
				locationBtn: false,
				sticky:false,
				showArrows:true,
				openingSpeed: 500,
				closingDelay: 500,

      });
	
		$(window).scroll(function() {
			var scroll = $(window).scrollTop();
			if (scroll >= 80) {
				$(".menu-section").addClass("nav-sticky");
			} else {
				$(".menu-section").removeClass("nav-sticky");
			}
		});
/*---------- menu js End---------*/  
        
        
        $(".home-slider-list").owlCarousel({
    		loop:true,
    		dots:false,
            margin:15,
    		nav:true,
    	    autoplay:true,
            smartSpeed: 1000,
            autoplayTimeout:5000,
            navText:["<i Class='fa fa-angle-left'></i>", 
          			"<i Class='fa fa-angle-right'></i>"],
    		responsiveClass: true,
			responsive: {
			  0: {
				items: 1,
			  },
			  480: {
				items: 1,
			  },
			  768: {
				items: 1,
			  },
			  1000: {
				items:1,
			  }
			}

    	});
        
        
         
        $(".team-list").owlCarousel({
    		loop:false,
    		dots:true,
            margin:30,
    		nav:false,
    	    autoplay:true,
            smartSpeed: 1000,
            autoplayTimeout:5000,
            responsiveClass: true,
			responsive: {
			  0: {
				items: 1,
			  },
			  480: {
				items: 2,
			  },
			  768: {
				items: 3,
			  },
			  1000: {
				items:4,
			  }
			}

    	}); 
        
        $(".client-list").owlCarousel({
    		loop:false,
    		dots:false,
            margin:30,
    		nav:true,
    	    autoplay:true,
            smartSpeed: 1000,
            autoplayTimeout:5000,
            navText:["<i Class='fa fa-angle-left'></i>", 
          			"<i Class='fa fa-angle-right'></i>"],
    		responsiveClass: true,
			responsive: {
			  0: {
				items: 1,
			  },
			  480: {
				items: 2,
			  },
			  768: {
				items: 3,
			  },
			  1000: {
				items:4,
			  }
			}

    	});
        
           
       
        
    $(".blog-list").owlCarousel({
        autoplay:true,
        margin:20,
        loop:false,
        nav:false,
        dots:true,
        autoplayHoverPause: true,
        responsiveClass: true,
        responsive: {
          0: {
            items: 1,
          },
          480: {
            items: 2,
          },
          768: {
            items: 3,
          },
          1000: {
            items: 3,
          }
        }
    });
        
        
            
    $(".video-list").owlCarousel({
        autoplay:true,
        margin:20,
        loop:false,
        nav:false,
        dots:true,
        autoplayHoverPause: true,
        responsiveClass: true,
        responsive: {
          0: {
            items: 1,
          },
          480: {
            items: 2,
          },
          768: {
            items: 3,
          },
          1000: {
            items: 3,
          }
        }
    });
        
        
        
    $(".partner-list").owlCarousel({
        autoplay:true,
        margin:10,
        loop:true,
        nav:false,
        dots:false,
        autoplayHoverPause: true,
        responsiveClass: true,
        responsive: {
          0: {
            items: 2,
          },
          480: {
            items: 2,
          },
          768: {
            items: 3,
          },
          1000: {
            items: 4,
          }
        }
    });
	
                

    $(".counter-contant span").counterUp({
        delay: 10,
        time: 1000
    });

    $(".video-icon").magnificPopup({
         type: 'video',

    });
        $('.popup-youtube').magnificPopup({
            type: 'iframe'
          });
      

        
        $('.image-link').magnificPopup({
          type: 'image',
          mainClass: 'mfp-with-zoom', // this class is for CSS animation below

          zoom: {
            enabled: true, // By default it's false, so don't forget to enable it

            duration: 500, // duration of the effect, in milliseconds
            easing: 'ease-in-out', // CSS transition easing function
              
            opener: function(openerElement) {
            
              return openerElement.is('img') ? openerElement : openerElement.find('img');
            }
          }

        });  
		
 
        
        

        
        
        
		 new WOW().init();

        
        $(window).scroll(function(){
		        if ($(this).scrollTop() > 100) {
		            $('.scrollToTop').fadeIn();
		        } else {
		            $('.scrollToTop').fadeOut();
		        }
		    });

		    //Click event to scroll to top
		    $('.scrollToTop').on('click', function(){
		        $('html, body').animate({scrollTop : 0},800);
		        return false;
		    });
        
        

    });

//
//    jQuery(window).load(function(){
////        jQuery(".page-loader").fadeOut(1000);
//    });


}(jQuery));	