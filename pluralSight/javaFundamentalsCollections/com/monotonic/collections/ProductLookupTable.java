package com.monotonic.collections;

public interface ProductLookupTable {

	Product2 lookupById(int id);
	
	void addProduct(Product2 productToAdd);
	
	void clear();
}
