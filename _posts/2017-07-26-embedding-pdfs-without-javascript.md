---
title: Embedding PDFs without JavaScript
time: 2017-07-26 00:13:00 +0800
layout: post
keywords: PDF
categories : [html]
tags : [html]
---

PDFs can be embedded into HTML pages without JavaScript. Below are four examples of the most common techniques.

**Note:** these examples work in all modern desktop browsers, but results will vary in older desktop browsers and mobile browsers. **As of iOS 9, none of these examples work properly in Safari for iOS.**


## `<object>` ##

Using an `<object>` enables you to leave fallback content if the browser doesn't support PDF embedding.

### PDF Preview ###

<object width="100%" height="960px" data="{{site.baseurl}}/pdf/sample.pdf#page=2" type="application/pdf">
   <p><b>Example fallback content</b>: This browser does not support PDFs. Please download the PDF to view it: <a href="{{site.baseurl}}/pdf/sample.pdf">Download PDF</a>.</p>
</object>

### Code ### 
`
(In Preview, ```height = "100%"``` has revised as ```height = "960px"``` for a full single page)

	<object width="100%" height="100%" data="{{site.baseurl}}/pdf/sample.pdf#page=2" type="application/pdf">
	   <p><b>Example fallback content</b>: This browser does not support PDFs. Please download the PDF to view it: <a href="{{site.baseurl}}/pdf/sample.pdf">Download PDF</a>.</p>
	</object>


## `<embed>` ##

Using an `<embed>` approach is widely supported, but not everywhere. Unfortunately, `<embed>` doesn't provide a mechanism for fallback content. If the browser doesn't support PDF embedding, the end-user sees nothing.

### PDF Preview ###

<embed width="100%" height="100%" src="{{site.baseurl}}/pdf/sample.pdf#page=2" type="application/pdf">

### Code ###

	<embed width="100%" height="100%" src="{{site.baseurl}}/pdf/sample.pdf#page=2" type="application/pdf">


## `<iframe>` ##

The `<iframe>` approach is widely supported.

### PDF Preview ###

<iframe width="100%" height="100%" src="{{site.baseurl}}/pdf/sample.pdf#page=2">
This browser does not support PDFs. Please download the PDF to view it: <a href="{{site.baseurl}}/pdf/sample.pdf">Download PDF</a>
</iframe>

### Code ###

	<iframe width="100%" height="100%" src="{{site.baseurl}}/pdf/sample.pdf#page=2">
	This browser does not support PDFs. Please download the PDF to view it: <a href="{{site.baseurl}}/pdf/sample.pdf">Download PDF</a>
	</iframe>


## `<object><iframe></object>` ##

Using an `<object>` with an `<iframe>` fallback will reach the most users.

### PDF Preview ###

<object width="100%" height="100%" data="{{site.baseurl}}/pdf/sample.pdf#page=2" type="application/pdf">
<iframe width="100%" height="100%" src="{{site.baseurl}}/pdf/sample.pdf#page=2" style="border: none;">
This browser does not support PDFs. Please download the PDF to view it: <a href="{{site.baseurl}}/pdf/sample.pdf">Download PDF</a>
</iframe>
</object>

### Code ###

	<object width="100%" height="100%" data="{{site.baseurl}}/pdf/sample.pdf#page=2" type="application/pdf">
	<iframe width="100%" height="100%" src="{{site.baseurl}}/pdf/sample.pdf#page=2" style="border: none;">
	This browser does not support PDFs. Please download the PDF to view it: <a href="{{site.baseurl}}/pdf/sample.pdf">Download PDF</a>
	</iframe>
	</object>

More information see [here][1]

  [1]: https://pdfobject.com/static.html