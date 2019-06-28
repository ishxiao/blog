---
title: How to synchronize time between Windows and Linux dual systems
time: 2019-06-28 9:30:00 +0800
layout: post
keywords: os
categories: os
tags : [os, Windows, Linux]
---

On Ubuntu:

```
$ sudo apt-get install ntpadate //update time on Ubuntu
$ sudo ntpdate time.windows.com
$ sudo hwclock --localtime --systohc  //update local time to hardware
```