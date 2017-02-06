package com.monotonic.collections;

public class ProductFixtures {

	public static Product door = new Product("Wooden Door", 35);
	public static Product floorPanel = new Product("Floor Panel", 25);
	public static Product window = new Product("Glass Window", 10);
	
	public static Supplier bobs = new Supplier("Bob's Household Supplies");
	public static Supplier kates = new Supplier("Kate's Home Goods");
	
	static{
		bobs.products().add(door);
		bobs.products().add(floorPanel);
		
		kates.products().add(floorPanel);
		kates.products().add(door);
		//new Product("Wooden Door", 35)
	}
}