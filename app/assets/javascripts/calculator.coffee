$document.ready ->

  # general vars

  calc_wrap = $(".calculator-wrap")
  calc_btn  = $(".calculate_btn")
  reset_btn = $(".reset-calculator")

  # result fields

  result_1 = $(".result-1")
  result_2 = $(".result-2")
  result_3 = $(".result-3")
  result_4 = $(".result-4")
  result_5 = $(".result-5")

  # calculations

  select = calc_wrap.find('select')

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
    # radio = calc_wrap.find('input[radio]')
    # console.log(radio.val())

    value = $('input[name=grilltype]:checked').val()
    console.log(value)