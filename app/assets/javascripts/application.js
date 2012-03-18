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
//= require colorpicker
//= require eye
//= require layout
//= require_tree .

jQuery.fn.submitWithAjax = function() {
	this.submit(function() {
		$.post($(this).attr("action"), $(this).serialize(), null, "script");
		return false;		
	})
	return this;
};

$(document).ready(function() {
  $('#done_btn').click(function() {
    $('#done_btn').val('Adding...');
  });
	$('#new_geekdoor').submitWithAjax();
	$('.delete_door').click(function(){
		$.get(this.href, null, null, "script");
		return false;
	});
	$('#new_geekdoor').hide();
	// $('#add_btn').click(function() {
	// 	$('.delete_door').fadeOut('slow');
	// 	$('#new_geekdoor').show('slow');
	// });
	$('#add_btn').toggle(
		function() {
		$('.delete_door').fadeOut('slow');
		$('#new_geekdoor').show('slow');
		$('#add_btn').text('Done');
	},
	function() {
		$('#new_geekdoor').show('slow');
		$('#new_geekdoor').fadeOut('slow');
		$('#add_btn').text('Add a new door');
	}
	);
	$('#edit_btn').toggle(
		function() {
		$('.delete_door').fadeIn('slow');
		$('#edit_btn').text('Done');
		$('#edit_btn').addClass('blue');
	},
	function() {
		$('#edit_btn').text('Edit my doors')
		$('.delete_door').fadeOut('slow');
		$('#edit_btn').removeClass('blue');
	}
	);
	$('#done_btn').click(function() {
		//$('#done_btn').text('Adding..');
		//$('#add_btn').fadeIn('slow');
		//$('#edit_btn').fadeIn('slow');
	});
	$('.door_link').click(function() {
		//this.submit();
	});
	$('#colorSelector').focus(function() {
	  $('#background_colorSelector').fadeIn('slow');
	  $('#foreground_colorSelector').fadeIn('slow');
	});
	$('#colorSelector').blur(function() {
	  $('#background_colorSelector').fadeOut('slow');
	  $('#foreground_colorSelector').fadeOut('slow');
	});
	
  $('.default').dropkick();
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