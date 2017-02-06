package com.monotonic.collections;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Rotate {

	public static void main(String[] args) {

		List<Product> products = new ArrayList<>();
		products.add(ProductFixtures.door);
		products.add(ProductFixtures.floorPanel);
		products.add(ProductFixtures.window);
		
		System.out.println(products);
		System.out.println();
		
		Collections.rotate(products, 1);
		System.out.println(products);
		System.out.println();
		
		Collections.rotate(products, 1);
		System.out.println(products);
		System.out.println();
		
		Collections.rotate(products, 1);
		System.out.println(products);
	}

}
