package com.monotonic.testing.m4;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class LeapYearTest {

    /* a year is a leap year if it is divisible by four but,
    year divisible by 100, are not leap years,
    except years divisible by 400
     */

    @Test
    public void leapYearsAreDivisibleByFour() {
        Assertions.assertTrue(LeapYear.isLeap(2016));
    }

    @Test
    public void normalYearIsNotDivisibleByFour() {
        Assertions.assertFalse(LeapYear.isLeap(3));
    }

    @Test
    public void yearsDivisibleBy100AreNotLeapYears() {
        Assertions.assertFalse(LeapYear.isLeap(1900));
    }

    @Test
    public void yearsDivisibleBy400AreLeapYears() {
        Assertions.assertTrue(LeapYear.isLeap(2000));
    }
}
