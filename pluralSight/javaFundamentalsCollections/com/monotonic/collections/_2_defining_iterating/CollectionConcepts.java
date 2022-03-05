package com.monotonic.collections._2_defining_iterating;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

import com.monotonic.collections.Product;

public class CollectionConcepts {

	public static void main(String[] args){

		Product door = new Product("Wooden Door", 35 );
		Product floorPanel = new Product("Floor Panel", 25);
		Product window = new Product("Glass Window", 10);

		Collection<Product> products = new ArrayList<>();
		products.add(door);
		products.add(floorPanel);
		products.add(window);

		// System.out.println(products);
		final Iterator<Product> productsIterator = products.iterator();
		while(productsIterator.hasNext()){
			Product product = productsIterator.next();
			if(product.getWeight() > 20){
				System.out.println(product);
			}else{
				productsIterator.remove();
			}
		}
		System.out.println("  ---  ");

		for(Product product : products){
			System.out.println(product);
		}

		/*
		java.util.ConcurrentModificationException

		for(Product product : products){

			if(product.getWeight() > 20){
				System.out.println(product);
			}else{
				products.remove(product);
				//products.add(window)
			}
		}
		*/

		System.out.println(products.size());
		System.out.println(products.isEmpty());
		System.out.println(products.contains(window));
		System.out.println(products.contains(door));

		Collection<Product> otherProducts = new ArrayList<>();
		otherProducts.add(window);
		otherProducts.add(door);

		products.removeAll(otherProducts);
		System.out.println(products);

	}

}
