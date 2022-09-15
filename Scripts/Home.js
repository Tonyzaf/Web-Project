// Short NavBar
function myFunction() {
var x = document.getElementById("myTopnav");
if (x.className === "topnav") {
    x.className += " responsive";
} else {
    x.className = "topnav";
}
}


// Resize NavBar 
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 1 || document.documentElement.scrollTop > 1) 
        document.getElementById("myTopnav").style.padding = "0px 0px";
    else 
        document.getElementById("myTopnav").style.padding = "10px 10px";
}


//Register
function checkform(){
    var input = document.getElementById("pwd1");
    input.oninput = function(event){
        event.target.setCustomValidity('');
    }
    input.oninvalid = function(event) {
        event.target.setCustomValidity('Ο κωδικός πρόσβασης πρέπει να περιέχει τουλάχιστον ένα κεφαλαίο γράμμα, έναν αριθμό και ένα σύμβολο');
    }
    var input2 = document.getElementById("pwd2");
    input2.oninput = function(event){
        event.target.setCustomValidity('');
    }
    input2.oninvalid = function(event) {
        event.target.setCustomValidity('Ο κωδικός πρόσβασης πρέπει να περιέχει τουλάχιστον ένα κεφαλαίο γράμμα, έναν αριθμό και ένα σύμβολο');
    }
}