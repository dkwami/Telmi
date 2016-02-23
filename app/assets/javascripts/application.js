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

/* Everything in this section is code I don't want to fuck up because it works.


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

readInterestText.style.display = "none";
watchInterestText.style.display = "none";
listenInterestText.style.display = "none";
playInterestText.style.display = "none";
eatInterestText.style.display = "none";
visitInterestText.style.display = "none";
otherInterestText.style.display = "none";


readInterestBox.onclick = function() {
    showThatField(this, readInterestText);
};

function showThatField(box, field) {
    if (box.checked) {
        field.style.display = 'block';
    } else {
        field.style.display = 'none';
    }
}

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

readInterestText.style.display = "none";

watchInterestText.style.display = "none";
/*
listenInterestText.style.display = "none";
playInterestText.style.display = "none";
eatInterestText.style.display = "none";
visitInterestText.style.display = "none";
otherInterestText.style.display = "none";
*/

readInterestBox.onclick = function() {
    showThatField(this, readInterestText);
};

watchInterestBox.onclick = function() {
    showThatField(this, watchInterestText);
};

function showThatField(box, field) {
    if (box.checked) {
        field.style.display = 'block';
    } else {
        field.style.display = 'none';
    }
}



//etc