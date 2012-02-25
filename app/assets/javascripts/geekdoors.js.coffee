# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("#keyword").bind "keydown","ctrl+q",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="q">')
			$("form:first").submit()
			return false
  $("#keyword").bind "keydown","ctrl+w",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="w">')
			$("form:first").submit()
			return false
  $("#keyword").bind "keydown","ctrl+e",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="e">')
			$("form:first").submit()
			return false
  $("#keyword").bind "keydown","ctrl+r",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="r">')
			$("form:first").submit()
			return false
  $("#keyword").bind "keydown","ctrl+f",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="f">')
			$("form:first").submit()
			return false			
	$("#keyword").bind "keydown","ctrl+d",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="d">')
			$("form:first").submit()
			return false			
	$("#keyword").bind "keydown","ctrl+p",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="p">')
			$("form:first").submit()
			return false
	$("#keyword").bind "keydown","ctrl+o",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="o">')
			$("form:first").submit()
			return false	
	$("#keyword").bind "keydown","ctrl+1",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="1">')
			$("form:first").submit()
			return false				
	$("#keyword").bind "keydown","ctrl+2",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="2">')
			$("form:first").submit()
			return false	
	$("#keyword").bind "keydown","ctrl+3",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="3">')
			$("form:first").submit()
			return false				
	$("#keyword").bind "keydown","ctrl+4",(el) ->
			$("#doorid").html('<input id="hotkey" name="hotkey" type="hidden" value="4">')
			$("form:first").submit()
			return false						