// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  hourField = $('#occurrence_hour');
  dateField = $('#occurrence_date');
  hourErrorDiv = $('#occurrence_hour_error');
  dateErrorDiv = $('#occurrence_date_error');
  submitButton = $('#submit_button');
});

function validateHour() {
  hour = parseInt(hourField.val().split(':')[0]);
  minutes = parseInt(hourField.val().split(':')[1]);

  if (hasAnyText(hourField) && (hour < 0 || hour > 24 || minutes < 0 || minutes > 60)){
    hourErrorDiv.show();
    disable_submit_button(true)
    submitButton.removeClass('red');
    submitButton.addClass('grey');
  } else {
    hourErrorDiv.hide();
    disable_submit_button(false)
    submitButton.removeClass('grey');
    submitButton.addClass('red');
  }
}

function validateDate() {
  day = parseInt(dateField.val().split('/')[0]);
  month = parseInt(dateField.val().split('/')[1]);
  year = parseInt(dateField.val().split('/')[2]);

  if (hasAnyText(dateField) && (day > 31 || month > 12)){
    dateErrorDiv.show();
    disable_submit_button(true)
    submitButton.removeClass('red');
    submitButton.addClass('grey');
  } else {
    dateErrorDiv.hide();
    disable_submit_button(false)
    submitButton.removeClass('grey');
    submitButton.addClass('red');
  }
}

function hasAnyText(div) {
  return div.val().trim() === '' ? false : true
}

function disable_submit_button(option){
  submitButton.prop("disabled",option);
}
