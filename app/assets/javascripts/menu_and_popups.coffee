#     M E N U

$document.on 'click', '.menu-btn, .close-menu', ->

  menu = $('.menu-wrap')
  
  if menu.hasClass('opened')
    menu.removeClass('opened')
    body.removeClass('hidden')
  else
    menu.addClass('opened')
    body.addClass('hidden')

#     P O P U P S

popup = $('.popup-wrap')

$document.on 'click', '.contact-btn', ->
  $('.contact-popup').addClass('opened')
  body.addClass('hidden')

$document.on 'click', '.calculate-btn', ->
  $('.calculate-popup').addClass('opened')
  body.addClass('hidden')

#     C L O S E     P O P U P S

$document.on 'click', '.close-popup-btn', ->
  popup.removeClass('opened')
  body.removeClass('hidden')