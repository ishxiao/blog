---
title: Learning notes of WSL
time: 2020-04-27 12:30:00 +080
layout: post
keywords: linux, wsl
categories: program
tags : [linux, ubuntu, wsl]
---

Windows Subsystem for Linux ([WSL](https://docs.microsoft.com/en-us/windows/wsl/about)) allows users to run a Linux terminal environment, install packages from the Ubuntu archive, and run Linux applications and workflows on Windows 10. 

Ref:

[WSL in ubuntu wiki](https://wiki.ubuntu.com/WSL)

issue 1: chmod WSL (Bash) doesn't work
--------------------------------------

To fix this, you need to edit /etc/wsl.conf. and put below config in.

    [automount]
    enabled = true
    options = "metadata"

Ref:

[Automatically Configuring WSL](https://devblogs.microsoft.com/commandline/automatically-configuring-wsl/)

[Chmod/Chown WSL Improvements](https://devblogs.microsoft.com/commandline/chmod-chown-wsl-improvements/)



