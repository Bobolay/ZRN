$document.ready ->

  # general vars

  calc_wrap     = $(".calculator-wrap")
  result        = $(".result-container")
  calc_btn      = $(".calculate_btn")
  error_message = $(".calc-error-message")
  reset_btn     = $(".reset-calculator")
  radio         = calc_wrap.find('input[type=radio]')
  select        = calc_wrap.find('select')

  # result fields

  result_1      = $(".result-1")
  result_2      = $(".result-2")
  result_3      = $(".result-3")
  result_4      = $(".result-4")
  result_5      = $(".result-5")

  # calculations

  # select.on 'change', ->

  #   result_1.text(
  #     $('select[name=wall_thickness]').val()
  #   )
  #   result_2.text(
  #     $('select[name=wall_height]').val()
  #   )
  #   result_3.text(
  #     $('select[name=step_strip]').val()
  #   )
  #   result_4.text(
  #     $('select[name=step_rod]').val()
  #   )
  #   result_5.text(
  #     $('select[name=anti_corrosion]').val()
  #   )


  $document.on 'click', '.calculate_btn', ->

    value_of_checked_radiobox = $('input[type=radio]:checked').val()
    if !value_of_checked_radiobox
      radio.next().find('.radio-label').addClass('error')
      error_message.addClass('error')


    calc_wrap.find('select').each(()->
      if $(this).val() != 0 && $(this).val() != "all"
        console.log("all field are filled")
        error_message.removeClass('visible')
        result.addClass('visible')

      else
        $(this).next().addClass('error')
        error_message.addClass('visible')
    )





  # remove error when selected

  # for radio
  radio.on 'change', ->
    value_of_checked_radiobox = $('input[type=radio]:checked').val()
    if value_of_checked_radiobox
      radio.next().find('.radio-label').removeClass('error')
    else
      $(this).next().find('.radio-label').addClass('error')
  # for select
  select.on 'change', ->
    if $(this).val() != 0 && $(this).val() != "all"
      $(this).next().removeClass('error')