package com.monotonic.collections;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class LookupTableComparison {

	private static final int ITERATIONS = 5;
	private static final int NUMBER_OF_PRODUCTS = 20_200;

	private static final List<Product2> products = generateProducts();

	public static void main(String[] args){
		runLookups(new MapProductLookupTable());
		runLookups(new NaiveProductLookupTable());
	}

	private static List<Product2> generateProducts(){

		final List<Product2> products = new ArrayList<Product2>();
		final Random weightGenerator = new Random();
		for(int i = 0;i < NUMBER_OF_PRODUCTS;i++){
			products.add(new Product2(i, "Product" + i, 10 + weightGenerator.nextInt(10)));
		}

		Collections.shuffle(products);
		Collections.shuffle(products);
		return products;
	}

	public static void runLookups(final ProductLookupTable lookupTable){

		final List<Product2> products = LookupTableComparison.products;
		System.out.println("Running lookups with" + lookupTable.getClass().getSimpleName());

		for(int i = 0;i < ITERATIONS;i++){
			final long startTime = System.currentTimeMillis();

			for(Product2 product : products){
				lookupTable.addProduct(product);
			}

			for(Product2 product : products){
				final Product2 result = lookupTable.lookupById(product.getId());
				if(result != product){
					throw new IllegalStateException("Lookup table returned wrong result for " + product.getId());
				}
			}

			lookupTable.clear();
			System.out.println(System.currentTimeMillis() - startTime + "ms");

		}
	}
}
