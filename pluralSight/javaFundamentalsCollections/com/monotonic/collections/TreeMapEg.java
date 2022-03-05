package com.monotonic.collections;

import java.util.TreeMap;

import com.monotonic.map_visualiser.Console;
import com.monotonic.map_visualiser.TreeMapVisualiser;

public class TreeMapEg {

	public static void main(String[] args) {

		final Console console = new Console();
		final TreeMapVisualiser visualiser = new TreeMapVisualiser(console);
		final TreeMap<String, String> treeified = new TreeMap<>()































































				;

		for(int i = 0; i < 26; i++){
			final String value = String.valueOf(i);
			treeified.put(value, value);
			console.clear();
			visualiser.visualise(treeified);
			console.await();
		}
	}

}
