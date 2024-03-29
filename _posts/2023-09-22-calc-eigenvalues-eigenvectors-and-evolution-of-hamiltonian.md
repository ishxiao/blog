---
title: Calc eigenvalues, eigenvectors, and evolution of Hamiltonian
time: 2023-09-22 10:30:00 +0800
layout: post
keywords: matlab
categories: program
tags : [matlab]
---

Matlab code

	% Calc eigenvalues and eigenvectors, evolution of Hamiltonian
	% define symbols
	syms Omega1 Omega2 t
	
	% Hamiltonian in matrix form
	
	H = zeros(4,'sym');
	H(1,1) = Omega1;
	H(2,3) = Omega1;
	H(3,2) = Omega1;
	H(3,4) = Omega2;
	H(4,3) = Omega2;
	
	% 
	disp('Hamiltonian in matrix form');
	disp(H)
	
	% solve eigenvalues and eigenstates
	[V,D] = eig(H);
	
	% 
	for idx = 1:length(diag(D))
	    disp("Eigenvalue:");
	    disp(D(idx, idx));
	    disp("Eigenstate:")
	    disp(V(:,idx));
	end
	
	% evolution
	% initial state
	psi0 = [0;0;1;0];
	
	% state at time t
	psi_t = expm(-1i*H*t)*psi0;
	
	% 
	disp("State at time t")
	disp(psi_t)

