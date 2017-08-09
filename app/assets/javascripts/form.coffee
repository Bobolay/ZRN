submit_form = (form, e)->
  if e && e.preventDefault
    e.preventDefault()

  $('.popup-wrap').addClass('success')
  setTimeout(
    ->
      $('.contact-popup').removeClass('success')
      $(form).find('input').val('')
    5000
  )


$document.ready ->

  $("form").each(->

    $(this).validate({
      rules:
        name:
          required: true,
          minlength: 3
        email:
          required: true,
      submitHandler: submit_form
    })
  )
