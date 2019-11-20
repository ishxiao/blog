---
title: Calc Eigenvalues and Eigenvectors of Matrix via Matlab or Python
time: 2019-04-20 9:30:00 +0800
layout: post
keywords: matlab, python
categories: program
tags : [matlab, python]
---

Matlab code

	% Calc eigenvalues and eigenvectors of Hamiltonian
	syms Omega1 Omega2
	
	H = zeros(4,'sym');
	H(2,3) = Omega1;
	H(3,2) = Omega1;
	H(3,4) = Omega2;
	H(4,3) = Omega2;
	
	[V,D] = eig(H);
	disp(D);
	disp(V);


Python code

	# coding: utf-8
	
	import sympy as sp
	
	Omega1 = sp.symbols('Omega1')
	Omega2 = sp.symbols('Omega2')
	
	M = sp.zeros(4,4)
	M[1,2] = Omega1
	M[2,1] = Omega1
	M[2,3] = Omega2
	M[3,2] = Omega2
	
	print(M.eigenvals())
	print(M.eigenvects())
