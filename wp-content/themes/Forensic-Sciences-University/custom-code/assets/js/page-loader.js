jQuery(document).ready(function($){
	"use strict";
	Pace.on("done",function(){
		$(".cover").fadeOut(500);
		$(".pace").remove();
	});
});