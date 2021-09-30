package com.monotonic.testing.m4;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class WordWapTest {

    public static final int LINE_LENGTH = 5;

    // a method that breaks words on specified space with new line,
    // like a word processor would.
    @Test
    public void lineShouldWrapIfOverLineLength() {
        String result = WordWrap.wrap("The Sleepy", LINE_LENGTH);
        Assertions.assertEquals("The S\nleepy", result);
    }

    @Test
    public void shortLinesShouldNotWrap() {
        String result = WordWrap.wrap("The", LINE_LENGTH);
        Assertions.assertEquals("The", result);
    }

    @Test
    public void longerLineShouldWrapTwice() {
        String result = WordWrap.wrap("The Sleepy Brow", LINE_LENGTH);
        Assertions.assertEquals("The S\nleepy\n Brow", result);
    }

    @Test
    public void evenLongerLinesShouldWrapThrice() {
        String result = WordWrap.wrap("The Sleepy Brown Fox", LINE_LENGTH);
        Assertions.assertEquals("The S\nleepy\n Brow\nn Fox", result);
    }

    @Test
    public void longLinesDontHaveToBeAMultipleOfLineLength() {
        String result = WordWrap.wrap("The Sleepy Brown Fox.", LINE_LENGTH);
        Assertions.assertEquals("he S\nleepy\n Brow\nn Fox\n", result);
    }
}
