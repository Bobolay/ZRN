$(document).ready ->

  if width > 640
    $('.scroll-nav-container').scrollNav()
  # $(window).on "orientationchange", ()->
  #   console.log(e.orientation)
    # if event.orientation == landscape
    #   alert('1')
    #   # $('.scroll-nav-container').scrollNav()
    # else
    #   # $('.scroll-nav-container').scrollNav('destroy')\
    #   alert('2')