---
title: How to Support \(LaTeX{}\) in GitHub-Pages
time: 2017-06-29 08:36:00 +0800
layout: post
keywords: latex, markdown
categories : [latex, github-pages]
tags : [latex, MathJax]
---

Schrödinger Equation (Math Equation as an example)

$$\mathrm{i}\hbar\frac{\partial \psi}{\partial t} = 
-\frac{\hbar^2}{2m}\nabla^2 \psi + V\psi$$

**Note:** Original text from [stackoverflow page][1].

Since resources online have changed regarding this question, here's an update on supporting $$LaTeX{}$$ with [Github Pages](https://github.com/ishxiao/blog).

Note that the closest to Latex rendering without exporting as images and natively supporting it on your Jekyll site would be to use MathJax.
 
**MathJax is actually recommended** in [Jekyllrb docs][2] for math support, with Kramdown, it also converts it from LaTeX to PNG, more details on it here at the [Kramdown documentation][3].

**Option 1:** Write your equation in [MathURL][4] and embed it.

You could write the equation with MathURL, then generate a url that permanently points to the equation, and display this in an `<iframe>` tag. However, this will stop working if MathURL goes offline.
 
**Option 2:** Implement [jsMath][5]

jsMath will allow almost LateX like syntax and will be supported in your blog if you have set it up correctly, there is [extensive documentation on this][6].
 
**Option 3:** Mathjax (by far the easiest in my opinion)

Many sites have mentioned that Mathjax is considered a successor of jsMath, and is much easier to implement with Jekyll. [MathJax is also used by mathematics.stackexchange.com too!][7]

  - **Step 1:** Have your site load the script in sites where you want to display math. (usually done in the header)

  - Optional: Check your markdown parser in `_config.yml`. `redcarpet` or `kramdown` is suggested in this example. Certain parsers like `discount` will interfere with the syntax but I have a solution below.

  - **Step 2:** Write your equations.
 
Quoting this tutorial by Gaston Sanchez:

>MathJax does not have the exactly same behavior as LaTeX. By default, the tex2jax preprocessor defines the LaTeX math delimiters, which are `\(...\)` for in-line math, and `\[...\]` for displayed equations. It also defines the TeX delimiters `$$...$$` for displayed equations, but it does not define `$...$` as in-line math delimiters.

Read the [documentation][8] on the syntax for more details.

  - **Note:** Using the raw liquid tag to ensure Markdown parsers do not interfere with MathJax syntax.

  - While you could escape backslashes (e.g.
  `\\[ \frac{1}{n^{2}} \\]`) to ensure they are parsed properly, [as described by Chistopher Poole's tutorial][9], this is not always intuitive and looks complicated. A simpler solution would be to use the raw liquid tag to ensure the text is ignored by the Markdown processor and directly output as a static html. This is done with ```{% raw %} {% {% endraw %}raw{% raw %} %} {% endraw %}```and also ```{% raw %} {% {% endraw %}endraw{% raw %} %} {% endraw %}```
 
Here is a code sample:

	{% raw %} {% {% endraw %}raw{% raw %} %} {% endraw %}
	{% raw %} 	
	$$a^2 + b^2 = c^2$$--> note that all equations between these tags will not need escaping!	
	{% endraw %}
	{% raw %} {% {% endraw %}endraw{% raw %} %} {% endraw %}

Lastly also ensure that the fonts support displaying LateX as some have issues like font size being too small. Alternatively here are some [additional methods like Google Charts and MathML][10] discussed in the latex StackExchange sister site.

## Comment

MathJax worked perfectly for me. The page at [docs.mathjax.org/en/latest/start.html][11] has a good sample on it. 

##List of more detail on
 
 - [1] [How to supported latex in github-pages][1]

 - [2] [Jekyllrb docs][2]

 - [3] [Kramdown documentation][3]

 - [4] [MathURL][4]

 - [5] [jsMath][5] and [extensive documentation on this][6].

 - [6] [MathJax is also used by mathematics.stackexchange.com too][7] 

 - [7] [documentation][8]

 - [8] [as described by Chistopher Poole's tutorial][9]

 - [9] [additional methods like Google Charts and MathML][10]
 
 - [10] [docs.mathjax.org/en/latest/start.html][11] 



   [1]: https://stackoverflow.com/questions/26275645/how-to-supported-latex-in-github-pages?nsukey=2P7r03Z%2FcezxSxknF8RFe7vXJowzuM%2Fy7IWMjNaMtQHZPDxWiBlmNP6g2ns2%2FRJ%2F2sbZ6gWDb2RoMumf3aiBxRgo3iE6fLyNhTvNmKVxuDFeMDT7JE8Wgpz%2B7yFD%2BC1x8oAA7jUE9%2FtCQ%2BnT1EjtVQ%3D%3D

   [2]: http://jekyllrb.com/docs/extras/#math-support

   [3]: http://kramdown.gettalong.org/converter/html.html#math-support

   [4]: http://mathurl.com/

   [5]: http://www.math.union.edu/~dpvc/jsmath/

   [6]: http://www.math.union.edu/~dpvc/jsMath/authors/installation.html

   [7]: https://math.stackexchange.com/editing-help

   [8]: http://docs.mathjax.org/en/latest/

   [9]: http://christopherpoole.github.io/using-mathjax-on-github-pages/

   [10]: https://tex.stackexchange.com/questions/129/embedding-latex-equations-into-a-webpage

   [11]: http://docs.mathjax.org/en/latest/start.html