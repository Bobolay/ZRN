$document.on 'click', '.tag-container .tag', ()->

  $(this).parent().children().removeClass("active")
  $(this).addClass("active")
  tag_ids = $(this).closest(".tag-container").find(".tag.active").map(
    ()->
      $(this).attr("data-tag-id")
  ).toArray()

  if !tag_ids.length
    $(".tag-related-block.hide").removeClass("hide")
    return

  $articles = $('.tag-related-block')
  $articles_to_show = $articles.filter(
    ()->
      article_tag_ids = $(this).attr("data-tag-ids").split(',')
      matched = false
      for id in article_tag_ids
        console.log "article_tag_id: ", id, "; checked_tag_ids: ", tag_ids, "matched: ", tag_ids.indexOf(id)
        matched = true if tag_ids.indexOf(id) >= 0

      matched
  )

  $articles.addClass('hide')

  $articles_to_show.removeClass('hide')



    

