package com.monotonic.collections;

import java.util.HashMap;
import java.util.Map;

public class MapProductLookupTable implements ProductLookupTable{

	private final Map<Integer, Product2> idToProduct = new HashMap<Integer, Product2>();

	@Override
	public void addProduct(Product2 productToAdd) {
		final int id = productToAdd.getId();

		if(idToProduct.containsKey(id)){
			throw new IllegalArgumentException("Unable to add product, duplicate id for " + productToAdd);
		}
		idToProduct.put(id, productToAdd);
	}

	@Override
	public Product2 lookupById(int id) {
		return idToProduct.get(id);
	}

	@Override
	public void clear() {
		idToProduct.clear();
	}

}
