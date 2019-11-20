---
title: Install Win10 from USB on Thinkpad-8
time: 2019-05-16 9:30:00 +0800
layout: post
keywords: os
categories: os
tags : [os, windows]
---

UEFI system cannot boot from an NTFS formatted USB stick. We need to format it using FAT32.

Used a new USB disk creation program (https://rufus.akeo.ie) and set it to FAT32 for UEFI and
finnaly the tablet booted to the setup. The Windows 10 was formatting the sticks to NTFS.

More infomation about [Clean Install of Windows 10 on ThinkPad](https://support.lenovo.com/us/en/solutions/ht103617).