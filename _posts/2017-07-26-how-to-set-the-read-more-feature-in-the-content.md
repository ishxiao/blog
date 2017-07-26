---
title: How to set the read more feature in the content
time: 2017-07-26 00:13:00 +0800
layout: post
keywords: html
categories : [html]
tags : [html]
---

<head>
<style> 
#div1 {
    white-space: nowrap; 
    width: 12em; 
    overflow: hidden;
    text-overflow: clip; 
    border: 1px solid #000000;
}

#div2 {
    white-space: nowrap; 
    width: 12em; 
    overflow: hidden;
    text-overflow: ellipsis; 
    border: 1px solid #000000;
}

</style>
</head>

### Preview ###

<script>
function show_more_content(){
  document.getElementById('more_content').innerHTML = "additional_content";
}
</script>

<p>... <div id = "more_content"> <a onclick = "show_more_content()"> Read more </a> </div></p>


**Code**

	<script>
	function show_more_content(){
	  document.getElementById('more_content').innerHTML = additional_content;
	}
	</script>
	
	<p> word word word <div id = "more_content"> <a onclick = "show_more_content()"> Read more </a> </div></p>

### Preview ###

<p>The following two divs contains a long text that will not fit in the box. As you can see, the text is clipped.</p>

<p>This div uses "text-overflow:clip":</p>
<div id="div1">This is some long text that will not fit in the box</div>

<p>This div uses "text-overflow:ellipsis":</p>
<div id="more_words"><div id="div2">This is some long text that will not fit in the box</div></div>

<a onclick="show_more_words()">more words</a>

<script>
function show_more_words() {
    var x = document.getElementById("more_words");
	x.innerHTML = "This is some long text that will not fit in the box";
    x.style.color = "green";
}
</script>

**Code**

	<p>The following two divs contains a long text that will not fit in the box. As you can see, the text is clipped.</p>
	
	<p>This div uses "text-overflow:clip":</p>
	<div id="div1">This is some long text that will not fit in the box</div>
	
	<p>This div uses "text-overflow:ellipsis":</p>
	<div id="more_words"><div id="div2">This is some long text that will not fit in the box</div></div>
	
	<a onclick="show_more_words()">more words</a>
	
	<script>
	function show_more_words() {
	    var x = document.getElementById("more_words");
		x.innerHTML = "This is some long text that will not fit in the box";
	    x.style.color = "green";
	}
	</script>

More information see [here][1]

  [1]: https://www.w3schools.com/cssref/css3_pr_text-overflow.asp