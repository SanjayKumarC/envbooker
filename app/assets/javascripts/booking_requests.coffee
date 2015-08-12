$(document).ready ->
  $('#booking_requests_hide_completed').click ->
    $.ajax
      url: 'booking_requests_hide_completed'
      data: checkbox_value: $('#booking_requests_hide_completed').is(':checked')
      dataType: 'script'
    return
  return
