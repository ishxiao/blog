---
title: How to install package in Pythonista
time: 2019-03-18 21:00:00 +0800
layout: post
keywords: python
categories: python
tags : [python]
---

首先，启动Pythonista，然后左滑屏幕，调出console窗口，在底部>处输入


	import requests as r;
	
	exec(r.get('https://raw.githubusercontent.com/ywangd/stash/master/getstash.py').text)


然后，点击屏幕左上角的，选择“This iPad”，运行“launch_stash.py”，即打开命令窗口，在此窗口中可运行“pip install 库名”等命令
