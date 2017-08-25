---
title: How to create a Slideshow with CSS and JavaScript
time: 2017-07-25 13:00:00 +0800
layout: post
keywords: slideshow
categories : [html]
tags : [CSS]
---

<head>
<style>
* {box-sizing:border-box}
/*body {font-family: Verdana,sans-serif;}*/
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 950px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>

<h2>Automatic Slideshow</h2>
<p>Change image every 2 seconds:</p>

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="{{site.baseurl}}/images/img-sea.jpg" style="width:100%">
  <div class="text">Sea</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="{{site.baseurl}}/images/img-sunshine.jpg" style="width:100%">
  <div class="text">Sunshine</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="{{site.baseurl}}/images/img-text.jpg" style="width:100%">
  <div class="text">Text</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

## Create A Slideshow

Step 1) Add HTML:

**Example**

	<div class="slideshow-container">
	  <div class="mySlides fade">
	    <div class="numbertext">1 / 3</div>
	    <img src="img1.jpg" style="width:100%">
	    <div class="text">Caption Text</div>
	  </div>
	
	  <div class="mySlides fade">
	    <div class="numbertext">2 / 3</div>
	    <img src="img2.jpg" style="width:100%">
	    <div class="text">Caption Two</div>
	  </div>
	
	  <div class="mySlides fade">
	    <div class="numbertext">3 / 3</div>
	    <img src="img3.jpg" style="width:100%">
	    <div class="text">Caption Three</div>
	  </div>
	
	  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
	  <a class="next" onclick="plusSlides(1)">&#10095;</a>
	</div>
	<br>
	
	<div style="text-align:center">
	  <span class="dot" onclick="currentSlide(1)"></span> 
	  <span class="dot" onclick="currentSlide(2)"></span> 
	  <span class="dot" onclick="currentSlide(3)"></span> 
	</div>

Step 2) Add CSS:

Style the next and previous buttons, the caption text and the dots:

**Example**

	* {box-sizing:border-box}
	
	/* Slideshow container */
	.slideshow-container {
	  max-width: 1000px;
	  position: relative;
	  margin: auto;
	}
	
	.mySlides {
	    display: none;
	}
	
	/* Next & previous buttons */
	.prev, .next {
	  cursor: pointer;
	  position: absolute;
	  top: 50%;
	  width: auto;
	  margin-top: -22px;
	  padding: 16px;
	  color: white;
	  font-weight: bold;
	  font-size: 18px;
	  transition: 0.6s ease;
	  border-radius: 0 3px 3px 0;
	}
	
	/* Position the "next button" to the right */
	.next {
	  right: 0;
	  border-radius: 3px 0 0 3px;
	}
	
	/* On hover, add a black background color with a little bit see-through */
	.prev:hover, .next:hover {
	  background-color: rgba(0,0,0,0.8);
	}
	
	/* Caption text */
	.text {
	  color: #f2f2f2;
	  font-size: 15px;
	  padding: 8px 12px;
	  position: absolute;
	  bottom: 8px;
	  width: 100%;
	  text-align: center;
	}
	
	/* Number text (1/3 etc) */
	.numbertext {
	  color: #f2f2f2;
	  font-size: 12px;
	  padding: 8px 12px;
	  position: absolute;
	  top: 0;
	}
	
	/* The dots/bullets/indicators */
	.dot {
	  cursor:pointer;
	  height: 13px;
	  width: 13px;
	  margin: 0 2px;
	  background-color: #bbb;
	  border-radius: 50%;
	  display: inline-block;
	  transition: background-color 0.6s ease;
	}
	
	.active, .dot:hover {
	  background-color: #717171;
	}
	
	/* Fading animation */
	.fade {
	  -webkit-animation-name: fade;
	  -webkit-animation-duration: 1.5s;
	  animation-name: fade;
	  animation-duration: 1.5s;
	}
	
	@-webkit-keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	
	@keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}

Step 3) Add JavaScript:

**Example**

	var slideIndex = 1;
	showSlides(slideIndex);
	
	function plusSlides(n) {
	  showSlides(slideIndex += n);
	}
	
	function currentSlide(n) {
	  showSlides(slideIndex = n);
	}
	
	function showSlides(n) {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("dot");
	  if (n > slides.length) {slideIndex = 1} 
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none"; 
	  }
	  for (i = 0; i < dots.length; i++) {
	      dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block"; 
	  dots[slideIndex-1].className += " active";
	}

##Automatic Slideshow

To display an automatic slideshow, use the following code:

**Example**

	var slideIndex = 0;
	showSlides();
	
	function showSlides() {
	    var i;
	    var slides = document.getElementsByClassName("mySlides");
	    for (i = 0; i < slides.length; i++) {
	        slides[i].style.display = "none"; 
	    }
	    slideIndex++;
	    if (slideIndex> slides.length) {slideIndex = 1} 
	    slides[slideIndex-1].style.display = "block"; 
	    setTimeout(showSlides, 2000); // Change image every 2 seconds
	}

More information see [here][1]

  [1]: https://www.w3schools.com/howto/howto_js_slideshow.asp