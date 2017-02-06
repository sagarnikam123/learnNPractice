package com.monotonic.collections;

import java.util.ArrayList;
import java.util.List;

public class Sort {

	public static void main(String[] args) {
		
		List<Product> products = new ArrayList<>();
		products.add(ProductFixtures.door);
		products.add(ProductFixtures.floorPanel);
		products.add(ProductFixtures.window);
		
		System.out.println(products);
		
		products.sort(Product.BY_NAME);
		System.out.println(products);
		
		products.sort(Product.BY_WEIGHT);
		System.out.println(products);
		
	}

}
