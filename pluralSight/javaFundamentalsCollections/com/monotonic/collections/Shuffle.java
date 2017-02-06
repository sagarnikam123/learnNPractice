package com.monotonic.collections;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Shuffle {

	public static void main(String[] args) {
		
		List<Product> products = new ArrayList<>();
		products.add(ProductFixtures.door);
		products.add(ProductFixtures.floorPanel);
		products.add(ProductFixtures.window);
		
		System.out.println(products);
		
		Collections.shuffle(products);
		System.out.println(products);
				
		Collections.shuffle(products);
		System.out.println(products);
		
		Collections.shuffle(products);
		System.out.println(products);

	}

}
