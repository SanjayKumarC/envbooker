# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready page:load', -> $('.datepicker').datetimepicker({});

$(document).on 'ready page:load', -> $('#envbooking_start_date').on 'dp.change', (e) -> $('#envbooking_end_date').data('DateTimePicker').minDate e.date