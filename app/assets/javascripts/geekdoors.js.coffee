# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("#keyword").bind "keydown","ctrl+q",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="ctrl+q">')
			$("form:first").submit()
			return false
  $("#keyword").bind "keydown","ctrl+w",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="ctrl+w">')
			$("form:first").submit()
			return false
  $("#keyword").bind "keydown","ctrl+e",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="ctrl+e">')
			$("form:first").submit()
			return false
  $("#keyword").bind "keydown","ctrl+r",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="ctrl+r">')
			$("form:first").submit()
			return false
  $("#keyword").bind "keydown","ctrl+f",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="ctrl+f">')
			$("form:first").submit()
			return false			
	$("#keyword").bind "keydown","ctrl+d",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="ctrl+d">')
			$("form:first").submit()
			return false			
	$("#keyword").bind "keydown","ctrl+p",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="ctrl+p">')
			$("form:first").submit()
			return false