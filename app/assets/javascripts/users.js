var recommendationForm = document.getElementById("recommendation-form");
var newRecommendation = document.getElementById("new-recommendation");

recommendationForm.style.display = 'none';

//$(document).ready(function(){
  newRecommendation.onclick = function(){
    recommendationForm.style.display = 'block';
  };
//});

