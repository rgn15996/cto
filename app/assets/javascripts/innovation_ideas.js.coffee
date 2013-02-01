# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  for i in [5..1]
    $('#score-' + i).bind "click",
      id: i,
      (event) ->
        for n in [5..1]
          element = $('#score-' + n + ' i')
          if n > event.data.id
            if element.hasClass("icon-star")
              element.removeClass("icon-star")
              element.addClass("icon-star-empty")
          else
            if element.hasClass("icon-star-empty")
              element.removeClass("icon-star-empty")
              element.addClass("icon-star")