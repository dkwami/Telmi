// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

var recommendationForm = document.getElementById("recommendation-form");

$("new-recommendation").onclick = function(){
  recommendationForm.style.display = "block";
}

