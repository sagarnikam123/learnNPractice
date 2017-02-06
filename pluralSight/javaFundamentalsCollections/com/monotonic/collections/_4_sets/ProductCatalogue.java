package com.monotonic.collections._4_sets;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

import com.monotonic.collections.Product;
import com.monotonic.collections.Supplier;

import static com.monotonic.collections.Product.BY_NAME;

public class ProductCatalogue implements Iterable<Product>{

	//private final Set<Product> products = new HashSet<>();
	//private final List<Product> products = new ArrayList();
	//private final Set<Product> products = new TreeSet<>(Product.BY_NAME);
	//private final SortedSet<Product> products = new TreeSet<>(Product.BY_NAME);
	private final SortedSet<Product> products = new TreeSet<>(Product.BY_WEIGHT);
	
	public void isSuppliedBy(Supplier supplier){ products.addAll(supplier.products()); }
	
	@Override
	public Iterator<Product> iterator() { return products.iterator(); }

	public Set<Product> lightVanProducts() {
		Product heaviestLightVanProduct = findHeaviestLightVanProduct();
		return products.headSet(heaviestLightVanProduct);
	}
	
	private Product findHeaviestLightVanProduct() {
		
		for(Product product : products){
			if(product.getWeight() > 20){
				return product;
			}
		}
		return products.last();
	}

	public Set<Product> heavyVanProducts() {
		Product heaviestLightVanProduct = findHeaviestLightVanProduct();
		return products.tailSet(heaviestLightVanProduct);
	}

}
