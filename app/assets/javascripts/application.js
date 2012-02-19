// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.hotkeys
//= require_tree .

jQuery.fn.submitWithAjax = function() {
	this.submit(function() {
		$.post($(this).attr("action"), $(this).serialize(), null, "script");
		return false;		
	})
	return this;
};

$(document).ready(function() {
	$('#new_geekdoor').submitWithAjax();
//	$('.delete_door').click(function(){
//		$.get(null, $(this).serialize(), null, "script");
//		return false;
//	});
})

// jQuery.ajaxSetup({ 
//   'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
// })
// 
// $(document).keypress(function(e){
// 	if (e.shiftKey && e.which==65) {
// 			$("form").submit();
// }
// })

// $(document).keypress(function(e){
//         if(e.ctrlKey && e.which == 13) { 
//                  alert("You clicked Ctrl+Enter");
//         } else if (e.shiftKey && e.which==13) {
//                 $('form').submit(function() {
// 								  alert('Handler for .submit() called.');
// 								});
//        }  else if (e.altKey && e.which==65) {
//                 alert("You clicked Alt+A"); 
//        }      
// })