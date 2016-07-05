// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

hour_field = $('#occurrence_hour');
date_field = $('#occurrence_date')
hour_error_div = $('#occurrence_hour_error');
date_error_div = $('#occurrence_date_error');
submit_button = $('#submit_button')

$(document).ready(function(){
  hour_error_div.hide();
  date_error_div.hide();
});

function validateHour() {
  hour = parseInt(hour_field.val().split(':')[0]);
  minutes = parseInt(hour_field.val().split(':')[1]);

  if (hasAnyText(hour_field) && (hour < 0 || hour > 24 || minutes < 0 || minutes > 60)){
    hour_error_div.show();
    disable_submit_button(true)
    submit_button.removeClass('red');
    submit_button.addClass('grey');
  } else {
    hour_error_div.hide();
    disable_submit_button(false)
    submit_button.removeClass('grey');
    submit_button.addClass('red');
  }
}

function validateDate() {
  day = parseInt(date_field.val().split(':')[0]);
  month = parseInt(date_field.val().split(':')[1]);
  year = parseInt(date_field.val().split(':')[2]);

  if (hasAnyText(date_field) && (day < 0 || day > 31 || month < 0 || month > 12 || year < 0)){
    date_error_div.show();
    disable_submit_button(true)
    submit_button.removeClass('red');
    submit_button.addClass('grey');
  } else {
    date_error_div.hide();
    disable_submit_button(false)
    submit_button.removeClass('grey');
    submit_button.addClass('red');
  }
}

function hasAnyText(div) {
  return div.val().trim() === '' ? false : true
}

function disable_submit_button(option){
  submit_button.prop("disabled",option);
}
