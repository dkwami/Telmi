// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
  $('#user-recommendation-submit').hide();

  $('#show-rec-form').click(myFunction() {
    $('#user-recommendation-submit').toggle();
    //formShow = $('#user-recommendation-submit').style.visibility;
    //formShow = ((formShow == "hidden") ? "visible" : "hidden");
  })
})
