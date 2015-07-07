# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

setInterval (->
  $('.alert-danger').hide(1000)
  return
), 10000

setInterval (->
  $('.alert-success').hide(1000)
  return
), 10000

setInterval (->
  $('.alert-warning').hide(1000)
  return
), 10000

setInterval (->
  $('.alert-info').hide(1000)
  return
), 10000

$('[data-toggle="tooltip"]').tooltip()

$(document).ready ->
  $('#app-select').change ->
    $('#app-select option:selected').each ->
      app_name = $(this).text()
      $.ajax(
        url: '/'
        method: 'get'
        data: app: app_name).done ->
        return
      return
    return
  return
