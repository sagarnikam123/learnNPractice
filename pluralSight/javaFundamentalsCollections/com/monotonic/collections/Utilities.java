package com.monotonic.collections;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Utilities {

	public static void main(String[] args) {

		Product2 door = ProductFixtures2.door;
		Product2 floorPanel = ProductFixtures2.floorPanel;
		Product2 window = ProductFixtures2.window;

		List<Product2> products = new ArrayList<>();
		Collections.addAll(products, door, floorPanel, window);
		System.out.println(products);

		//final Product2 product = Collections.min(products, Product2.BY_NAME);
		final Product2 product = Collections.max(products, Product2.BY_WEIGHT);
		System.out.println(product);
	}

}
