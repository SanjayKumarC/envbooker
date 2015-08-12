$ ->
  $(document).on 'change', '#envs_select', (evt) ->
    $.ajax 'refresh_requests_update_apps',
      type: 'GET'
      dataType: 'script'
      data: {
        env_id: $("#envs_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("Error: #{textStatus}")


$(document).ready ->
  $('#refresh_requests_hide_completed').click ->
    $.ajax
      url: 'refresh_requests_hide_completed'
      data: checkbox_value: $('#refresh_requests_hide_completed').is(':checked')
      dataType: 'script'
    return
  return
