---
title: Pure CSS read more toggle
time: 2017-07-26 13:00:00 +0800
layout: post
keywords: CSS
categories: html
tags: html
---
<style>
	.read-more-state {
	  display: none;
	}

	.read-more-target {
	  opacity: 0;
	  max-height: 0;
	  font-size: 0;
	  transition: .25s ease;
	}

	.read-more-state:checked ~ .read-more-wrap .read-more-target {
	  opacity: 1;
	  font-size: inherit;
	  max-height: 999em;
	}

	.read-more-state ~ .read-more-trigger:before {
	  content: 'Show more';
	}

	.read-more-state:checked ~ .read-more-trigger:before {
	  content: 'Show less';
	}

	.read-more-trigger {
	  cursor: pointer;
	  display: inline-block;
	  padding: 0 .5em;
	  color: #666;
	  font-size: .9em;
	  line-height: 2;
	  border: 1px solid #ddd;
	  border-radius: .25em;
	}
</style>

## Preview ##

<div>
  <input type="checkbox" class="read-more-state" id="post-1" />

  <p class="read-more-wrap">Lorem ipsum dolor sit amet, consectetur adipisicing elit. <span class="read-more-target">Libero fuga facilis vel consectetur quos sapiente deleniti eveniet dolores tempore eos deserunt officia quis ab? Excepturi vero tempore minus beatae voluptatem!</span></p>
  
  <label for="post-1" class="read-more-trigger"></label>
</div>

<div>
  <input type="checkbox" class="read-more-state" id="post-2" />

  <ul class="read-more-wrap">
    <li>lorem</li>
    <li>lorem 2</li>
    <li class="read-more-target">lorem 3</li>
    <li class="read-more-target">lorem 4</li>
  </ul>
  
  <label for="post-2" class="read-more-trigger"></label>
</div>

### HIML ###

	<div>
	  <input type="checkbox" class="read-more-state" id="post-1" />
	
	  <p class="read-more-wrap">Lorem ipsum dolor sit amet, consectetur adipisicing elit. <span class="read-more-target">Libero fuga facilis vel consectetur quos sapiente deleniti eveniet dolores tempore eos deserunt officia quis ab? Excepturi vero tempore minus beatae voluptatem!</span></p>
	  
	  <label for="post-1" class="read-more-trigger"></label>
	</div>
	
	<div>
	  <input type="checkbox" class="read-more-state" id="post-2" />
	
	  <ul class="read-more-wrap">
	    <li>lorem</li>
	    <li>lorem 2</li>
	    <li class="read-more-target">lorem 3</li>
	    <li class="read-more-target">lorem 4</li>
	  </ul>
	  
	  <label for="post-2" class="read-more-trigger"></label>
	</div>

### CSS ###

	.read-more-state {
	  display: none;
	}
	
	.read-more-target {
	  opacity: 0;
	  max-height: 0;
	  font-size: 0;
	  transition: .25s ease;
	}
	
	.read-more-state:checked ~ .read-more-wrap .read-more-target {
	  opacity: 1;
	  font-size: inherit;
	  max-height: 999em;
	}
	
	.read-more-state ~ .read-more-trigger:before {
	  content: 'Show more';
	}
	
	.read-more-state:checked ~ .read-more-trigger:before {
	  content: 'Show less';
	}
	
	.read-more-trigger {
	  cursor: pointer;
	  display: inline-block;
	  padding: 0 .5em;
	  color: #666;
	  font-size: .9em;
	  line-height: 2;
	  border: 1px solid #ddd;
	  border-radius: .25em;
	}
	
	/* Other style */ 
	body {
	  padding: 2%;
	}
	
	p {
	  padding: 2%;
	  background: #fff9c6;
	  color: #c7b27e;
	  border: 1px solid #fce29f;
	  border-radius: .25em;
	}

More information see [here][1] and [there][2]

  [1]: https://codepen.io/Idered/pen/AeBgF

  [2]: http://jedfoster.com/Readmore.js/