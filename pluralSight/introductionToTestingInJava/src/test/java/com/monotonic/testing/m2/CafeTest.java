package com.monotonic.testing.m2;

import org.hamcrest.MatcherAssert;
import org.hamcrest.Matchers;
import org.junit.jupiter.api.*;

import static com.monotonic.testing.m2.CoffeeType.Espresso;
import static com.monotonic.testing.m2.CoffeeType.Latte;

public class CafeTest {

    public static final int ESPRESSO_BEANS = Espresso.getRequiredBeans();
    public static final int NO_MILK = 0;
    public static final int NO_BEANS = 0;

    private Cafe cafe;

    /*
    // new object created before every test runs
    public CafeTest(){
        System.out.println("Constructor");
    }

    @BeforeAll
    public static void beforeClass() {
        System.out.println("before class");
    }

    @AfterAll
    public static void afterClass() {
        System.out.println("after class");
    }
    */

    @BeforeEach
    public void before() {
        //System.out.println("before each test");
        cafe = new Cafe();
    }

    /*
    @AfterEach
    public void after() {
        System.out.println("after each test");
    }*/

    @Test
    public void canBrewEspresso() {
        //System.out.println("Hello World!");
        // given
        withBeans();
        // when
        Coffee coffee = cafe.brew(Espresso);
        // then

        MatcherAssert.assertThat(coffee, Matchers.hasProperty("beans", Matchers.equalTo(ESPRESSO_BEANS)));
        Assertions.assertEquals(Espresso, coffee.getType(), "Wrong coffee type");
        // Expected :1 Actual   :0
        //Assertions.assertEquals(1, coffee.getMilk());
        Assertions.assertEquals(NO_MILK, coffee.getMilk(), "Wrong amount of milk");
        Assertions.assertEquals(ESPRESSO_BEANS, coffee.getBeans(), "Wrong number of beans");
    }

    @Test
    public void brewingEspressoConsumeBeans() {
        withBeans();
        cafe.brew(Espresso);

        Assertions.assertEquals(NO_BEANS, cafe.getBeansInStock());
    }

    @Test
    public void canBrewLatte() {
        withBeans();
        cafe.restockMilk(Latte.getRequiredMilk());

        Coffee coffee = cafe.brew(CoffeeType.Latte);
        Assertions.assertEquals(CoffeeType.Latte, coffee.getType(), "Wrong coffee type");
    }

    @Test
    public void mustRestockMilk() {
        Assertions.assertThrows(IllegalArgumentException.class, () -> cafe.restockMilk(NO_MILK));
    }

    @Test
    public void mustRestockBeans() {
        Assertions.assertThrows(IllegalArgumentException.class, () -> cafe.restockBeans(NO_BEANS));
    }

    @Test
    public void latteRequiresMilk() {
        withBeans();
        Assertions.assertThrows(IllegalStateException.class, () -> cafe.brew(CoffeeType.Latte));
    }

    @Test
    public void printFilterCoffeeIngredients() {
        cafe.restockBeans(Latte.getRequiredBeans());
        cafe.restockMilk(Latte.getRequiredMilk());

        Coffee coffee = cafe.brew(Latte);
        System.out.println(coffee);
    }

    private void withBeans() {
        cafe.restockBeans(ESPRESSO_BEANS);
    }
}
