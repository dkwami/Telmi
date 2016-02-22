// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require_self
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .

//= require bootstrap-datepicker

/* Everything in this section is code I don't want to get rid of yet but can't
figure out why it isn't working yet.

function showThatField(FieldClass) {
    document.getElementsByClassName("FieldClass").style.display = "block";
}

$(document.getElementById("read_interest_box")).on("click", function () {
    showThatField("read_interest_text");
});

$(document.getElementById("read-interest-box")).on("click", function () {
    if (document.getElementById("read-interest-text").style.display == "none") {
    document.getElementById("read-interest-text").style.display = 'block';
    } else if (document.getElementById("read-interest-text").style.display == 'block') {
    document.getElementById("read-interest-text").style.display = "none";    
    }
});

var readInterestText = document.getElementById("read-interest-text"),
    readInterestBox = document.getElementById("read-interest-box");
readInterestBox.checked = false;
readInterestBox.onchange = function showThatField() {
    readInterestText.style.display = this.checked ? "block" : "none";
};
readInterestBox.onchange();

*/

//A JavaScript control test to ensure the page is loading application.js
//Basically it proves that my other code is whack if this displays and the other stuff doesn't.
document.getElementById("help").innerHTML = "Javascript Active";

var readInterestText = document.getElementById("read-interest-text"),
    readInterestBox = document.getElementById("read-interest-box"),
    watchInterestText = document.getElementById("watch-interest-text"),
    watchInterestBox = document.getElementById("watch-interest-box"),
    listenInterestText = document.getElementById("listen-interest-text"),
    listenInterestBox = document.getElementById("listen-interest-box"),
    playInterestText = document.getElementById("play-interest-text"),
    playInterestBox = document.getElementById("play-interest-box"),
    eatInterestText = document.getElementById("eat-interest-text"),
    eatInterestBox = document.getElementById("eat-interest-box"),
    visitInterestText = document.getElementById("visit-interest-text"),
    visitInterestBox = document.getElementById("visit-interest-box"),
    otherInterestText = document.getElementById("other-interest-text"),
    otherInterestBox = document.getElementById("other-interest-box");

function showThatField(fieldClass) {
    fieldClass.style.display = "block";
}

readInterestText.style.display = "none";
watchInterestText.style.display = "none";
listenInterestText.style.display = "none";
playInterestText.style.display = "none";
eatInterestText.style.display = "none";
visitInterestText.style.display = "none";
otherInterestText.style.display = "none";

readInterestBox.on("click", function showThatField(readInterestText) {
});

watchInterestBox.on("click", function () {
    showThatField(watchInterestText);
});

//etc