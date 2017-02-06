package com.monotonic.collections;

import java.util.Comparator;

public class Product2 {

	public static final Comparator<Product2> BY_WEIGHT = new Comparator<Product2>() {
		@Override
		public int compare(final Product2 p1, final Product2 p2) {
			return Integer.compare(p1.getWeight(), p2.getWeight());
		}
	};
	
	public static final Comparator<Product2> BY_NAME = new Comparator<Product2>(){

		@Override
		public int compare(Product2 o1, Product2 o2) {
			return 0;
		}
		
	};

	private final int id;
	private final String name;
	private final int weight;

	public Product2(final int id, final String name, final int weight) {
		this.id = id;
		this.name = name;
		this.weight = weight;
	}

	public String getName() {
		return name;
	}

	public int getId() {
		return id;
	}

	public int getWeight() {
		return weight;
	}

	@Override
	public String toString() {
		return "Product{ " + "id=" + id + ", name= '" + name + "\'" + ", weight=" + weight + "}";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + weight;
		return result;
	}
	

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product2 other = (Product2) obj;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (weight != other.weight)
			return false;
		return true;
	}
	
}