package com.monotonic.collections;

import java.util.HashMap;

import com.monotonic.map_visualiser.Console;
import com.monotonic.map_visualiser.HashMapVisualiser;

public class HashMapEg {

	public static void main(String[] args) {

		Console console = new Console();
		console.clear();
		
		final HashMap<String, Integer> map = new HashMap<>();
		map.put("AaAa", 1);
		map.put("BBBB", 2);
		map.put("AaBB", 3);
		map.put("BBAa", 4);
		
		map.put("five", 5);
		map.put("six", 6);
		map.put("seven", 7);
		
		final HashMapVisualiser visualiser = new HashMapVisualiser(console);
		visualiser.visualise(map);
		console.await();
		
		final HashMap<BadHash, String> treeified = new HashMap<>(); 
		for(int i = 0; i < 20;i++){
			final String value = String.valueOf(i);
			treeified.put(new BadHash(value, 1), value);
			console.clear();
			visualiser.visualise(treeified);
			console.await();
		}
		  
		
	}

}
