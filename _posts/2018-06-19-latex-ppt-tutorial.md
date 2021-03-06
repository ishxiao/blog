---
title: \(\LaTeX{}\) PPT Tutorial
time: 2018-06-19 11:00:00 +0800
layout: post
keywords: latex
categories: latex
tags : [latex]
---

## Preview

<object width="100%" height="480px" data="{{site.baseurl}}/assets/attachment/beamer-tutorial.pdf#page=1" type="application/pdf">
   <p><b>Example fallback content</b>: This browser does not support PDFs. Please download the PDF to view it: <a href="{{site.baseurl}}/assets/attachment/beamer-tutorial.pdf">Download PDF</a>.</p>
</object>

## $$\LaTeX{}$$ Code
<a href="{{site.baseurl}}/assets/attachment/beamer-tutorial.tex">beamer-tutorial.tex</a>

```
\documentclass[mathserif]{beamer}

\usepackage{pgfplots}
\usepackage{multicol}

\usetheme[progressbar=frametitle]{metropolis}
\setbeamertemplate{frame numbering}[fraction]
\useoutertheme{metropolis}
\useinnertheme{metropolis}
\usefonttheme{metropolis}
\usecolortheme{spruce}
\setbeamercolor{background caanvas}{bg=white}

% \usetheme{Warsaw}
\definecolor{mygreen}{rgb}{.125,.5,.25}
\usecolortheme[named=mygreen]{structure}

\title{Functions, Limits, Derivatives}
% \subtitle{Subtitle Here}
\author{}
\institute{\large \textbf{Learning Outcomes}:\\[6pt] Identify properties of elementary fuctions (formed by composition of power, exponential, logarithmic, and trigonomtric functions and their inverses)}
\date{}
\setbeamercovered{transparent=10}

\begin{document}
\metroset{block=fill}

\begin{frame}
\titlepage
\end{frame}

\begin{frame}[t]{Functions}\vspace{4pt}
\begin{block}{Definition of a Function}
\vspace{0.5em}
A \textbf{function} $f$ is a rule that assigns to each element $x$ in a set $D$ exactly one element, called $f(x)$, in a set $E$.
\vspace{0.5em}
\end{block}

\vspace{10pt}
Set $D$ is called the 
\only<1>{\line(1,0){40}}
\only<2>{\textcolor{magenta}{domain}}
\,of the function.\\[10pt]
Set $E$ is called the 
\only<1>{\line(1,0){40}}
\only<2>{\textcolor{magenta}{range}}
\,of the function.

\end{frame}

\begin{frame}{Your Very First Flash Card}
\begin{columns}[onlytextwidth]
\column{0.5\textwidth}
$\sqrt{x^2} = $\\[10pt]
\begin{enumerate}[(A)]
\item $x$
\item $-x$
\item $|x|$
\item undefined
\end{enumerate}
\column{0.5\textwidth}
\only<3>{
$\sqrt{x^2}=
\begin{cases}
-x, & x<0 \\
x, & x \geq 0
\end{cases}$\\[10pt]}

\only<2->{
\begin{tikzpicture}[scale=0.6]
\begin{axis}[xlabel = {$x$}, ylabel={$\sqrt{x^2}$},
  ,axis lines=middle
  ,samples=100, grid, thick
  ,xmin=-6, xmax=6, ymin=-6, ymax=6]
  \addplot[blue, ultra thick] {(x^2)^0.5};
\end{axis}
\end{tikzpicture}
}

\end{columns}
\end{frame}

\begin{frame}[t]{Parent Fucntion}\vspace{4pt}
You should be able to identify by name and sketch a graph of each of the following parent functions
\begin{enumerate}
    \begin{multicols}{3}
    \item $y=x$
    \item $y=|x|$
    \item $y=x^2$
    \item $y=x^3$
    \item $y=x^b$
    \onslide<2->{
    \item $y=\sqrt{x}$
    \item $y= \sqrt[3]{x}$
    \item $y=\frac{1}{x}$
    \item $y=2^x$
    \item $y=e^x$
    }
    \onslide<3->{
    \item $y=\ln x$
    \item $y=\frac{1}{1+e^{-x}}$
    \item $y=\sin x$
    \item $y=\cos x$
    \item $y=\tan x$}
    \end{multicols}
\end{enumerate}
\end{frame}

\begin{frame}{standout}
\flushleft
Homework: p.342\#7-21
\end{frame}

\end{document}
```
