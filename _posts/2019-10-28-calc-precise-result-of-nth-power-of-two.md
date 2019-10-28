---
title: Calc precise result of \(n\)th power of two
time: 2019-10-28 12:30:00 +080
layout: post
keywords: matlab, java
categories: program
tags : [matlab, java]
---

Matlab code

	% calc the precise result of 2^167. 
	clear all; clear;

	N  = 167;
	result_len  = floor(log10(2^N))+1; % calc the digit of the result
	result      = zeros(1, result_len); % create a blank matrix to store the result
	result(1)   = 1; % 2^0 initialized result

	str_result  = cell(1,N); % create N string cell to store the result of every step
	last = 1; % initialized the digit of the result
	fid  =fopen('result.txt','w'); % create a file (result.txt) to print the result
	fprintf(fid,'## result of 2^167\n');
	%
	for idx = 1:N
	    % multiply by 2 in every step
	    result = result * 2;   
	    for k = 1:last
	        % advances to the higher one for every decimal one
	        result(k+1) = result(k+1) + mod(floor(result(k)/10),10);
	        result(k)   = mod(result(k),10);
	        % store the digit of the result
	        if(result(k+1) ~= 0)
	            last = k + 1;
	        end
	    end
	    % store the result via string
	    str_result{idx} = strrep(num2str(result(last:-1:1)),' ', '');
	    % print the result to the file (result.txt)
	    fprintf(fid,['2^', num2str(idx),' = %s\n'],str_result{idx});
	end
	fclose(fid);

	% display the finnal result
	disp(['2^', num2str(idx),' = ', str_result{end}]);

Command Window

	2^167 = 187072209578355573530071658587684226515959365500928

<a href="{{site.baseurl}}/assets/attachment/result.txt">result.text</a>

Java code

	/**
	 * The CalcApp class implements an application that
	 * simply prints result to standard output.
	 */
	import java.math.*;
	import java.io.*;

	class CalcApp {
	    public static void main(String[] args) {
	        // System.out.println("2^167="); 
	        BigInteger a = new BigInteger("2");
	        File f = new File("result_of_pow(2,167).txt");
	        try{
				FileOutputStream fos1=new FileOutputStream(f);
				OutputStreamWriter dos1=new OutputStreamWriter(fos1);
				for(int i = 1; i < 168; i++){
					dos1.write("2^"+i+" = "+ a.pow(i) + "\n");
				}
				System.out.println("2^167 = "+ a.pow(167)); // Display the result.
				dos1.close();
			}
			catch(IOException e){
				System.out.println("Eorror" + e);
			}
	    }
	}

Terminal

	$ javac CalcApp.java && java CalcApp
	2^167 = 187072209578355573530071658587684226515959365500928

<a href="{{site.baseurl}}/assets/attachment/result_of_pow(2,167).txt">result_of_pow(2,167).txt</a>

