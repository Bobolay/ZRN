$(document).ready ->

    #     G A M E S     S L I D E R

  articles_slider = $('.articles-slider').bxSlider
    controls: false
    # pager: false
    speed: 750
    pause: 10000
    auto: true
    onSliderLoad: (currentIndex)->
      $('.description-container .slide-description').eq(0).addClass('visible')
    onSlideBefore: ($slideElement, oldIndex, newIndex)->
      current = articles_slider.getCurrentSlide()
      $('.description-container .slide-description').removeClass('visible')
      $('.description-container .slide-description').eq(current).addClass('visible')
  $('.slider-controls.for-articles .slide-prev').click ->
    articles_slider.goToPrevSlide()
  $('.slider-controls.for-articles .slide-next').click ->
    articles_slider.goToNextSlide()