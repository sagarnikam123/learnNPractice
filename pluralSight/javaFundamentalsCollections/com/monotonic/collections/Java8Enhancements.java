package com.monotonic.collections;

import java.util.HashMap;
import java.util.Map;

public class Java8Enhancements {

	public static void main(String[] args){

		final Product2 defaultProduct = new Product2(-1, "Whatever the customer wants", 100);

		final Map<Integer, Product2> idToProduct = new HashMap<>();
		idToProduct.put(1, ProductFixtures2.door);
		idToProduct.put(2,  ProductFixtures2.floorPanel);
		idToProduct.put(3, ProductFixtures2.window);

		Product2 result = idToProduct.getOrDefault(10, defaultProduct);
		System.out.println(result);
		System.out.println(idToProduct.get(10));
		System.out.println();

		Product2 result2 = idToProduct.replace(1, new Product2(1, "Big Door", 50));
		System.out.println(result2);
		System.out.println(idToProduct.get(1));
		System.out.println();

		Product2 result3 = idToProduct.replace(4, new Product2(1, "Big Door", 50));
		System.out.println(result3);
		System.out.println(idToProduct.get(4));
		System.out.println();

		System.out.println( idToProduct);
		idToProduct.replaceAll((id, oldProduct) ->
			new Product2(id, oldProduct.getName() , oldProduct.getWeight() + 10)
		);
		System.out.println( idToProduct);
		System.out.println();

		Product2 result4 = idToProduct.computeIfAbsent(10, id -> new Product2(id, "Custom product", 10));
		System.out.println(result4);
		System.out.println(idToProduct.get(10));
		System.out.println();

		Product2 result5 = idToProduct.computeIfAbsent(2, id -> new Product2(id, "Custom product", 10));
		System.out.println(result5);
		System.out.println(idToProduct.get(2));
		System.out.println();

		idToProduct.forEach((key, value) -> {
			System.out.println(key + " -> " + value);
		});
	}
}
