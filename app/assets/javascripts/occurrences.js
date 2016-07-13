// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Validations ///////////////////////////////////////////////////////////////////////
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
    disableButton(submitButton, true)
  } else {
    hourErrorDiv.hide();
    disableButton(submitButton, false)
  }
}

function validateDate() {
  day = parseInt(dateField.val().split('/')[0]);
  month = parseInt(dateField.val().split('/')[1]);
  year = parseInt(dateField.val().split('/')[2]);

  if (hasAnyText(dateField) && (day > 31 || month > 12)){
    dateErrorDiv.show();
    disableButton(submitButton, true)
  } else {
    dateErrorDiv.hide();
    disableButton(submitButton, false)
  }
}

function hasAnyText(div) {
  return div.val().trim() === '' ? false : true
}

function disableButton(button, option){
  button.prop("disabled", option);
  option ? button.addClass('grey') : button.removeClass('grey');
}
// End of validations /////////////////////////////////////////////////////////////

// Essa função é chamada em maps.js.erb
function clickVote() {
  votingButtons = $('div.voting a');
  buttonsIcons = $('div.voting a i');
  rating = $('span.rating');

  votingButtons.click(function() {
    buttonsIcons.removeClass('red-text green-text');
    buttonsIcons.addClass('grey-text');
    rating.text(parseInt(rating.text().trim()) + 1)
    votingButtons.fadeOut(500);
  });
}
