#     M E N U

$document.on 'click', '.menu-btn, .close-menu', ->

  menu = $('.menu-wrap')
  
  if menu.hasClass('opened')
    menu.removeClass('opened')
    body.removeClass('hidden')
  else
    menu.addClass('opened')
    body.addClass('hidden')