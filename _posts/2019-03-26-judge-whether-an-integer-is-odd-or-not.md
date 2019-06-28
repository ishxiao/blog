---
title: Judge whether an integer is odd or not
time: 2019-03-26 14:30:00 +0800
layout: post
keywords: python
categories: program
tags : [python]
---


	# coding: utf-8
	'''
	file: test.py
	
	create on Tue Mar 26 8:00 2019
	
	@author: Xiao Shang
	
	email: me@ishxiao.com
	
	note: Judge whether an integer is odd or not
	'''
	
	# ver 0.1
	def isOdd_1(i):
		if(i%2 == 1):
			return True
		else:
			return False
	
	# ver 0.2
	def isOdd_2(i):
		return i%2 == 1
		
	# ver 0.3
	def isOdd_3(i):
		return i%2 == 1 or i%2 == -1
		
	# ver 0.4
	def isOdd_4(i):
		return i%2 != 0
		
	# ver 0.5
	def isOdd_5(i):
		return i>>1 << 1 != i
	
	# ver 0.6
	def isOdd_6(i):
		return i&1 != 0
