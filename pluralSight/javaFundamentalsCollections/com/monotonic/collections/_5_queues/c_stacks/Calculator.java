package com.monotonic.collections._5_queues.c_stacks;

import java.util.ArrayDeque;
import java.util.Deque;
import java.lang.Integer;

public class Calculator {

	/*
	 1
	 -
	 3
	 +
	 2
	 +
	 4
	 */
	public int evaluate(final String input){ 
		
		final Deque<String> stack = new ArrayDeque<String>();
		final String[] tokens = input.split(" ");
		
		for(String token: tokens){
			stack.addLast(token);
		}
		
		while(stack.size() > 1){
			final int left = Integer.parseInt(stack.pop());
			final String operator = stack.pop() ;
			final int right = Integer.parseInt(stack.pop());
			int result = 0;
			
			switch(operator){
			case "+" :
				result = left + right;
				break;
			
			case "-":
				result = left - right;
				break;
			}
			
			stack.push(String.valueOf(result));
		}
		
		return Integer.parseInt(stack.pop()); 
	}
	
}
