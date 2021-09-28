package com.monotonic.testing.m2;

/**
 * Describes the type of coffee that we're going to serve.
 */
public enum CoffeeType {
    Espresso(7, 0),
    Latte(7, 227),
    FilterCoffee(10, 0);

    private final int requiredBeans;
    private final int requiredMilk;

    CoffeeType(int requiredBeans, int requiredMilk) {
        this.requiredBeans = requiredBeans;
        this.requiredMilk = requiredMilk;
    }

    public int getRequiredBeans() {
        return requiredBeans;
    }

    public int getRequiredMilk() {
        return requiredMilk;
    }
}
