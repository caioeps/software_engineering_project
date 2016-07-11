// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  var commentsDiv = $('#occurrence_comments');
  var submitCommentButton = $('#occurrence_comment_submit_button');
  var commentBodyForm = $('#comment_body');

});

function validateOccurrenceCommentBody() {
  if(hasAnyText(commentBodyForm)) {
    disable_button(submitCommentButton, false);
  }
  else {
    disable_button(submitCommentButton, true);
  }
}
