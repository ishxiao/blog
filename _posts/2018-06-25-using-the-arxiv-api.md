---
title: Using the arXiv API
time: 2018-06-25 16:00:00 +0800
layout: post
keywords: arXiv, python
categories: arXiv
tags : [arXiv, python]
---

Python 3 code

```
import urllib.request as ur
url = 'http://export.arxiv.org/api/query?search_query=all:electron&start=0&max_results=1'
data = ur.urlopen(url).read()
print(data)
```

Ref: [arXiv API](https://arxiv.org/help/api/index)
