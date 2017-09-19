---
title: Keeping up with upstream
time: 2017-07-06 09:00:00 +0800
layout: post
keywords: github, upstream
categories : [github]
tags : [github]
---

- `git remote -v`

 origin: native branch

 upstream: origin branch

- `git remote add upstream <reponsitory>`
 
 Note: if there was no upstream branch, try `add upstream`

- `git fetch upstream`

 update origin branch to native branch

- `git merge upstream/master`

 merge branch