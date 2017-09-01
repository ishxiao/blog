---
title: How to play audio and video in html
time: 2017-07-25 13:00:00 +0800
layout: post
keywords: audio
categories : [html]
tags : [html]
---

### Audio Preview ###

<audio controls autoplay>
  <source src="{{site.baseurl}}/audio/My-Heart-Will-Go-On.ogg" type="audio/ogg">
  <source src="{{site.baseurl}}/audio/My-Heart-Will-Go-On.mp3" type="audio/mpeg">
Your browser does not support the audio element.
</audio>

<p><strong>Note:</strong> The audio tag is not supported in Internet Explorer 8 and earlier versions.</p>

#### Example ####

An audio file that will automatically start playing:

	<audio controls autoplay>
	  <source src="audio.ogg" type="audio/ogg">
	  <source src="audio.mp3" type="audio/mpeg">
	  Your browser does not support the audio element.
	</audio> 

### Video Preview ###

<video width="320" height="240" controls>
  <source src="{{site.baseurl}}/video/movie.mp4" type="video/mp4">
  <source src="{{site.baseurl}}/video/movie.ogg" type="video/ogg">
  Your browser does not support the video tag.
</video>

<strong>Note:</strong> The video tag is not supported in Internet Explorer 8 and earlier versions.

#### Example ####

Play a video:

	<video width="320" height="240" controls>
	  <source src="movie.mp4" type="video/mp4">
	  <source src="movie.ogg" type="video/ogg">
	  Your browser does not support the video tag.
	</video> 


More information see [audio][1] and [video][2]

[Online-Convert][3]
- Convert media free, fast and online.
No software installation needed.

  [1]: https://www.w3schools.com/tags/att_audio_autoplay.asp

  [2]: https://www.w3schools.com/tags/tag_video.asp
   
  [3]: http://www.online-convert.com/