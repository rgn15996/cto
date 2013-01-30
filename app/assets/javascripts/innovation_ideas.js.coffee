# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  for i in [5..1]
    $('#score-' + i).bind "click",
      id: i,
      (event) ->
        alert('you clicked ' + event.data.id)
        for n in [event.data.id..1]
          $('#score-' + n).css('background-color', '#1f1')
          