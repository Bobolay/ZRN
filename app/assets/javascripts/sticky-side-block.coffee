menu = $('.sticky-side-block')


if menu.length > 0
  scroll = (e)->
    desired_distance = 150
    scroll_top = $document.scrollTop()

    menuViewportOffsetTop = menu_top - scroll_top

    if menu_top < (scroll_top + desired_distance)
      menu.addClass('fixed')
    else
      menu.removeClass('fixed')

  menu_offset_top = menu.offset()

  menu_top = menu_offset_top.top

  $(window).on "scrolldelta", scroll