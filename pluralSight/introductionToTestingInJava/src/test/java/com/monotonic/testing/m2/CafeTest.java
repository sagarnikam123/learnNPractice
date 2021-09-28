package com.monotonic.testing.m2;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import static com.monotonic.testing.m2.CoffeeType.Espresso;
import static com.monotonic.testing.m2.CoffeeType.Latte;

public class CafeTest {

    public static final int ESPRESSO_BEANS = Espresso.getRequiredBeans();
    public static final int NO_MILK = 0;
    public static final int NO_BEANS = 0;

    @Test
    public void canBrewEspresso() {
        //System.out.println("Hello World!");
        // given
        Cafe cafe = cafeWithBeans7();
        // when
        Coffee coffee = cafe.brew(Espresso);
        // then
        Assertions.assertEquals(Espresso, coffee.getType(), "Wrong coffee type");
        // Expected :1 Actual   :0
        //Assertions.assertEquals(1, coffee.getMilk());
        Assertions.assertEquals(NO_MILK, coffee.getMilk(), "Wrong amount of milk");
        Assertions.assertEquals(ESPRESSO_BEANS, coffee.getBeans(), "Wrong number of beans");
    }

    @Test
    public void brewingEspressoConsumeBeans() {
        Cafe cafe = cafeWithBeans7();
        cafe.brew(Espresso);

        Assertions.assertEquals(NO_BEANS, cafe.getBeansInStock());
    }

    @Test
    public void canBrewLatte() {
        Cafe cafe = cafeWithBeans7();
        cafe.restockMilk(Latte.getRequiredMilk());

        Coffee coffee = cafe.brew(CoffeeType.Latte);
        Assertions.assertEquals(CoffeeType.Latte, coffee.getType(), "Wrong coffee type");
    }

    @Test
    public void mustRestockMilk() {
        Cafe cafe = new Cafe();
        Assertions.assertThrows(IllegalArgumentException.class, () -> cafe.restockMilk(NO_MILK));
    }

    @Test
    public void mustRestockBeans() {
        Cafe cafe = new Cafe();
        Assertions.assertThrows(IllegalArgumentException.class, () -> cafe.restockBeans(NO_BEANS));
    }

    @Test
    public void latteRequiresMilk() {
        Cafe cafe = cafeWithBeans7();
        Assertions.assertThrows(IllegalStateException.class, () -> cafe.brew(CoffeeType.Latte));
    }

    @Test
    public void printFilterCoffeeIngredients() {
        Cafe cafe = new Cafe();
        cafe.restockBeans(Latte.getRequiredBeans());
        cafe.restockMilk(Latte.getRequiredMilk());

        Coffee coffee = cafe.brew(Latte);
        System.out.println(coffee);
    }

    private Cafe cafeWithBeans7() {
        Cafe cafe = new Cafe();
        cafe.restockBeans(ESPRESSO_BEANS);
        return cafe;
    }
}