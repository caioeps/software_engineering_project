// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  var commentsDiv = $('#occurrence_comments');
});

function validateOccurrenceCommentBody() {
  var commentBodyForm = $('#comment_body');
  var submitCommentButton = $('#occurrence_comment_submit_button');

  if(hasAnyText(commentBodyForm)) {
    disableButton(submitCommentButton, false);
  }
  else {
    disableButton(submitCommentButton, true);
  }
}
