load_data = ()->
  return if window.calculator_data || window.calculator_data_state == "loading"
  window.calculator_data_state = "loading" 
  $.ajax(
    url: "/calculator_data.json"
    dataType: "json"
    success: (data)->
      window.calculator_data_state = "loaded"
      window.calculator_data = data
      if window.calculator_query
        calculate_data(window.calculator_query)

    error: ()->
      window.calculator_data_state = "error"
  )
fetch_data_from_inputs = ()->

calculate_data = (input_data)->
  input_data ?= fetch_data_from_inputs()
  if window.calculator_data
    # do calc
  else
    window.calculator_query = input_data

$document.on "ready", load_data

$document.on "change", ".calculator-wrap", ()->
  calculate_data()


$document.ready ->

  # general vars

  calc_wrap     = $(".calculator-wrap")
  radio         = calc_wrap.find('input[type=radio]')
  select        = calc_wrap.find('select')
  input         = calc_wrap.find('input')
  result        = calc_wrap.find(".result-container")
  calc_btn      = calc_wrap.find(".calculate_btn")
  error_message = calc_wrap.find(".calc-error-message")
  reset_btn     = calc_wrap.find(".reset-calculator")

  # input fields
  thickness_of_strip = calc_wrap.find("select[name='thickness_of_strip']")

  # result fields

  result_1      = $(".result-1")
  result_2      = $(".result-2")
  result_3      = $(".result-3")
  result_4      = $(".result-4")
  result_5      = $(".result-5")

  $document.on 'click', '.calculate_btn', ->
    radio_filled = false
    input_filled = false
    select_filled = false
    # radiobox
    value_of_checked_radiobox = $('input[type=radio]:checked').val()
    if !value_of_checked_radiobox
      radio.next().find('.radio-label').addClass('error')
      radio_filled = false
    else
      radio_filled = true
    # input
    input.each(()->
      if !$(this).val()
        $(this).addClass('error')
        input_filled = false
      else
        input_filled = true
    )
    # select
    select.each(()->
      if $(this).val() != 0 && $(this).val() != "all"
        select_filled = true
      else
        select_filled = false
        $(this).next().addClass('error')
    )
    if radio_filled == true && input_filled == true && select_filled == true
      result.addClass("visible")
      error_message.removeClass('visible')
    else
      result.removeClass("visible")
      error_message.addClass('visible')



  # remove errors when selected

  # for radio
  radio.on 'change', ->
    value_of_checked_radiobox = $('input[type=radio]:checked').val()
    if value_of_checked_radiobox
      radio.next().find('.radio-label').removeClass('error')
  # for input
  input.on 'blur', ->
    if $(this).val()
      $(this).removeClass('error')
  # for select
  select.on 'change', ->
    if $(this).val() != 0 && $(this).val() != "all"
      $(this).next().removeClass('error')



  # reset calc field
  $document.on 'click', '.reset_calculator', ->
    input.val("")
    nice_select = select.next()
    option = nice_select.find('.option')
    option.removeClass('selected')
    nice_select.find('.current').text(option.eq(0).text())