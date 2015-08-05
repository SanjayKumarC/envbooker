$ ->
  $(document).on 'change', '#envs_select', (evt) ->
    $.ajax 'refresh_requests_update_apps',
      tyoe: 'GET'
      dataType: 'script'
      data: {
        env_id: $("#envs_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Success")
