---
title: How to configure sublime text
time: 2017-10-16 12:36:00 +0800
layout: post
keywords: Sublime, LaTex, Markdown
categories : [Ubuntu]
tags : [Sublime]
---

Install package
---------------

1. Click the `Tools-Command Palette` menu;

2. Input "Package Control: install Package";

3. Waiting until the list of package appeared;

4. Choose your ideal package and start to install package.


Configure \(LaTeX\)
-------------------

`LaTeXTools`


Configure *Markdown*
--------------------

`Markdown Editing`
`Markdown Preview`

Click the `Preferences-Package Settings-Mardown Editing- KeyBlings-User` menu.

Copy the following contents to set keys `alt+m` for Markdown preview.

```
[
	{"keys": ["alt+m"], "command": "markdown_preview", "args": {"target": "browser"}},
]
```

Click the `Preferences-Package Settings-Mardown Preview- Settings-User` menu.

```
{
    /*
         Enable or not mathjax support.
    */
    "enable_mathjax": true,

    /*
         Enable or not highlight.js support for syntax highlighting.
    */
    "enable_highlight": true,
}
```