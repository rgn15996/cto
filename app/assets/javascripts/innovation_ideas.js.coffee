# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  initial_score = $('.rating').data('score')
  colour_stars initial_score

  for i in [1..5]
    $('#score-' + i).bind "click",
      id: i,
      (event) ->
        score = $(this).data('score')
        form_id = $(this).data('formid')

        colour_stars event.data.id

        $("#" + form_id + "_score").val(score)
        
        $.ajax
          type: "post"
          url: $("#" + form_id).attr('action')
          data: $('#' + form_id).serialize()

colour_stars = (score) ->
  # alert 'called colour_stars with score ' + score
  yellow = '#FFD900'
  lightgrey = '#999999'
  for n in [1..5]
    element = $('#score-' + n + ' i')
    if n <= score
      #if element.hasClass("icon-star")
      #  element.removeClass("icon-star")
      #  element.addClass("icon-star-empty")
      element.css('color', yellow)
    else
      #if element.hasClass("icon-star-empty")
      #  element.removeClass("icon-star-empty")
      #  element.addClass("icon-star")
      element.css('color', lightgrey) 