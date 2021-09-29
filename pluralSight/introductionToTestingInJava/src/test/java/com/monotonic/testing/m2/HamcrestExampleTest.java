package com.monotonic.testing.m2;

import org.hamcrest.MatcherAssert;
import org.hamcrest.Matchers;
import org.junit.jupiter.api.Test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HamcrestExampleTest {

    @Test
    public void mapShouldContainValue() {
        Map<String, Integer> values = getValues();

        //Assertions.assertEquals("B",values.containsKey("B"));
        MatcherAssert.assertThat(values, Matchers.hasKey("B"));
    }

    private Map<String, Integer> getValues() {
        final HashMap<String, Integer> map = new HashMap<>();
        map.put("A", 1);

/*      java.lang.AssertionError:
        Expected: map containing ["B"->ANYTHING]
        but: map was [<A=1>, <b=2>]*/
        //map.put("b", 2);

        map.put("B", 2);
        return map;
    }

    @Test
    public void listOrderingIsIrrelevant() {
        List<Integer> numbers = getNumbers();

/*      org.opentest4j.AssertionFailedError:
        Expected :5
        Actual   :4*/
        //Assertions.assertEquals(5, (int) numbers.get(4));

        MatcherAssert.assertThat(numbers, Matchers.hasItem(5));
    }

    private List<Integer> getNumbers() {
        return Arrays.asList(1, 2, 3, 5, 4);

/*      java.lang.AssertionError:
        Expected: a collection containing <5>
                but: mismatches were: [was <1>, was <2>, was <3>, was <4>]*/
        // return Arrays.asList(1, 2, 3, 4);
    }

}
