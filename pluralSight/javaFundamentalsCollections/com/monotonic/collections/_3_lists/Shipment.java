package com.monotonic.collections._3_lists;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import com.monotonic.collections.Product;

public class Shipment implements Iterable<Product> {

	private static final int LIGHT_VAN_MAX_WEIGHT = 20;
	public static final int PRODUCT_NOT_PRESENT = -1;

	private final List<Product> products = new ArrayList<>();

	private List<Product> lightVanProducts;
	private List<Product> heavyVanProducts;

	public void add(Product product) {
		products.add(product);
	}

	public void replace(Product oldProduct, Product newProduct) {

		final int index = products.indexOf(oldProduct);
		if (index != -1) {
			products.set(index, newProduct);
		}
	}

	public void prepare() {

		// sort our list of products by weight
		// Collections.sort(products, Product.BY_WEIGHT);
		products.sort(Product.BY_WEIGHT);

		// find the product index that needs the heavy van
		int splitPoint = findSplitPoint();

		// assign views of the product list for heavey and light vans
		lightVanProducts = products.subList(0, splitPoint);
		heavyVanProducts = products.subList(splitPoint, products.size());
	}

	private int findSplitPoint() {
		for (int i = 0; i < products.size(); i++) {
			final Product product = products.get(i);
			if (product.getWeight() > LIGHT_VAN_MAX_WEIGHT) {
				return i;
			}
		}
		return 0;
	}

	public List<Product> getHeavyVanProducts() {
		return heavyVanProducts;
	}

	public List<Product> getLightVanProducts() {
		return lightVanProducts;
	}

	@Override
	public Iterator<Product> iterator() {
		return products.iterator();
	}

}
