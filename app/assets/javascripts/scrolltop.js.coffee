ready = ->
  $(window).scroll ->
    element = $('#page-top-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
    if height > 400
      element.fadeIn() if !visible
    else
      element.fadeOut()
    
    element2 = $('#page-top-btn-blog')
    visible2 = element2.is(':visible')
    if height > 200
      element2.fadeIn() if !visible2
    else
      element2.fadeOut()
    
    
  $(document).on 'click', '#move-page-top', ->
     $('html, body').animate({ scrollTop: 0 }, 'slow')

$(document).ready(ready)
$(document).on('page:load', ready)