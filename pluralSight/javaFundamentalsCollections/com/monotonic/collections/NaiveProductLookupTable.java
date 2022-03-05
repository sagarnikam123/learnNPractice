package com.monotonic.collections;

import java.util.ArrayList;
import java.util.List;

public class NaiveProductLookupTable implements ProductLookupTable {

	private List<Product2> products = new ArrayList<Product2>();

	@Override
	public void addProduct(Product2 productToAdd) {

		for(Product2 product : products){
			if (product.getId() == productToAdd.getId()){
				throw new IllegalArgumentException("Unable to add product, duplicate id for " + productToAdd);
			}
		}
		products.add(productToAdd);
	}

	@Override
	public Product2 lookupById(int id) {

		for(Product2 product : products){
			if (product.getId() == id){
				return product;
			}
		}
		return null;
	}

	@Override
	public void clear() {
		products.clear();
	}

}
