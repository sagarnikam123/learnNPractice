package com.monotonic.collections._4_sets;

import org.junit.Test;
import static org.junit.Assert.assertThat;
import static org.hamcrest.Matchers.containsInAnyOrder;
import static com.monotonic.collections.ProductFixtures.*;

public class ProductCatalogueTest {

	@Test
	public void shouldOnlyHoldUniqueProducts() throws Exception{
		
		ProductCatalogue catalogue = new ProductCatalogue();
		
		catalogue.isSuppliedBy(bobs);
		catalogue.isSuppliedBy(kates);
		//asssertThat(catalogue, containsInAnyOrder(door, floorPanel, window));
		
	}
	
	@Test
	public void shouldFindLightVanProducts() throws Exception{
		
		ProductCatalogue catalogue = new ProductCatalogue();
		
		catalogue.isSuppliedBy(bobs);
		catalogue.isSuppliedBy(kates);
		
		assertThat(catalogue.lightVanProducts(), containsInAnyOrder(window));
	}
	
	@Test
	public void shouldFindHeavyVanProducts() throws Exception{
		
		ProductCatalogue catalogue = new ProductCatalogue();
		
		catalogue.isSuppliedBy(bobs);
		catalogue.isSuppliedBy(kates);
		
		assertThat(catalogue.heavyVanProducts(), containsInAnyOrder(door, floorPanel));
	}
	
}
