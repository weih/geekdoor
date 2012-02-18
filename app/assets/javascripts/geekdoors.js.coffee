# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("#keyword").bind "keydown","ctrl+f",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="ctrl+b">')
			$("form").submit()
			return false
  $(document).bind "keydown","ctrl+b",(el) ->
      $("form").submit()
	$(document).bind "keydown","ctrl+q",(el) ->
      $("form").submit()