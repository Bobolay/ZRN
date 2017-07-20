$document.ready ->

  $( ".filter-years select" ).change(->
    selected = $(this).val()
    if selected == "all"
      $('.news-list li').removeClass('hide')
    else
      $('.news-list li').addClass('hide')
      $('.news-list li[data-attr="' + selected + '"]').removeClass('hide')
  )