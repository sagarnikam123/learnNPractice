package com.monotonic.collections;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ShoppingBasket {

	private final List<Product> items = new ArrayList<>();
	private int totalWeight =0;

	public void add(Product product){
		items.add(product);
		totalWeight += product.getWeight();
	}

	public List<Product> getItems(){
		return Collections.unmodifiableList(items);
	}

	public String toString(){
		return "Shopping Basket of \n" + items + "\n with weight: " + totalWeight;
	}

	public static void main(String[] args) {

		ShoppingBasket basket = new ShoppingBasket();
		basket.add(ProductFixtures.door);
		System.out.println(basket);

		// Exception in thread "main" java.lang.UnsupportedOperationException
		basket.getItems().add(ProductFixtures.window);
		System.out.println(basket);
	}

}
