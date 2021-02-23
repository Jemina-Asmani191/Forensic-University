/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

jQuery(document).ready(function ($) {

	$("#placement").owlCarousel({
		items: 5,
		lazyLoad: true,
		autoplay: 3000,
		navigation: true
	});
});

jQuery('.carousel').carousel({
	pause: "false"
});

jQuery('#scrol-vert-notice').scrollbox(
{  
	linear: true,  
	step: 1,  
	delay: 0,  
	speed: 100
});

(function(jQuery){
			jQuery(window).on("load",function(){
				jQuery("#event-hm-teb .tab-pane").mCustomScrollbar({
					setHeight:260,
					theme:"inset-2-dark"
				});
				
				jQuery("#wrapper-news-hm ul").mCustomScrollbar({
					setHeight:320,
					theme:"inset-2-dark"
				});
			});
		})(jQuery);
