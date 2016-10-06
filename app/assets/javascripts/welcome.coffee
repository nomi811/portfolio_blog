ready = ->

$(document).on "page:change", ->

  $('.logo_rest').mouseenter ->
    $('.logo_hover').show()
    $('.logo_rest').hide()
    $(this).hide()
    return
  $('.logo_hover').mouseout ->
    $('.logo_rest').show()
    $('.logo_hover').hide()
    $(this).hide()
    return
  return

  $(document).ready(ready)
  $(document).on('page:change', ready)

# $(document).ready ->
#   $('#main_navigation').hover (->
#     $('#mani_navigation.logo_rest').animate { opacity: 0 }, 'slow'
#     return
#   ), ->
#     $('#main_navigation.logo_hover').animate { opacity: 1 }, 'slow'
#     return
#   return
