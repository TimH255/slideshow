var slideIndex = 0;
var idDelay;
var timeDelay;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("slides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  slideIndex++;
  if (slideIndex > x.length) {location.reload()};      
  x[slideIndex-1].style.display = "block";
  idDelay=x[slideIndex-1].id;
  if (isNaN(idDelay)) {
    timeDelay=10000;
    }
  else {
    timeDelay=idDelay*1000;
    };
  setTimeout(carousel, timeDelay); // Change image after defined seconds
}
