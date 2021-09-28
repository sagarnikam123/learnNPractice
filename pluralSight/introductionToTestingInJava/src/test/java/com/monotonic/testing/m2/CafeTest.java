package com.monotonic.testing.m2;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class CafeTest {

    @Test
    public void canBrewEspresso() {
        //System.out.println("Hello World!");
        // given
        Cafe cafe = new Cafe();
        cafe.restockBeans(7);
        // when
        Coffee coffee = cafe.brew(CoffeeType.Espresso);
        // then
        Assertions.assertEquals(CoffeeType.Espresso, coffee.getType());
        // Expected :1 Actual   :0
        //Assertions.assertEquals(1, coffee.getMilk());
        Assertions.assertEquals(0, coffee.getMilk());
        Assertions.assertEquals(7, coffee.getBeans());
    }

    @Test
    public void brewingEspressoConsumeBeans() {
        Cafe cafe = new Cafe();
        cafe.restockBeans((7));
        cafe.brew(CoffeeType.Espresso);

        Assertions.assertEquals(0, cafe.getBeansInStock());
    }

    @Test
    public void canBrewLatte() {
        Cafe cafe = new Cafe();
        cafe.restockBeans(7);
        cafe.restockMilk(227);

        Coffee coffee = cafe.brew(CoffeeType.Latte);
        Assertions.assertEquals(CoffeeType.Latte, coffee.getType());
    }

    @Test
    public void mustRestockMilk() {
        Cafe cafe = new Cafe();
        Assertions.assertThrows(IllegalArgumentException.class, () -> cafe.restockMilk(0));
    }

    @Test
    public void mustRestockBeans() {
        Cafe cafe = new Cafe();
        Assertions.assertThrows(IllegalArgumentException.class, () -> cafe.restockBeans(0));
    }

    @Test
    public void latteRequiresMilk() {
        Cafe cafe = new Cafe();
        cafe.restockBeans(7);
        Assertions.assertThrows(IllegalStateException.class, () -> cafe.brew(CoffeeType.Latte));
    }

    @Test
    public void printFilterCoffeeIngredients() {
        Cafe cafe = new Cafe();
        cafe.restockBeans(10);
        cafe.restockMilk(10);

        Coffee coffee = cafe.brew(CoffeeType.FilterCoffee);
        System.out.println(coffee);
    }
}
