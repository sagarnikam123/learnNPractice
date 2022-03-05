/**************************************************************************************************

    makeAbba - solved

    Given two strings, a and b, return the result of putting them together in the order abba,
    e.g. "Hi" and "Bye" returns "HiByeByeHi".
***************************************************************************************************
makeAbba("Hi", "Bye") → "HiByeByeHi"
makeAbba("Yo", "Alice") → "YoAliceAliceYo"
makeAbba("What", "Up") → "WhatUpUpWhat"
makeAbba("aaa", "bbb") → "aaabbbbbbaaa"
makeAbba("x", "y") → "xyyx"
makeAbba("x", "") → "xx"
makeAbba("", "y") → "yy"
makeAbba("Bo", "Ya") → "BoYaYaBo"
makeAbba("Ya", "Ya") → "YaYaYaYa"
**************************************************************************************************/
package javaExample.string1;

public class MakeAbba
{

    public static void main(String[] args)
    {
    	System.out.println(makeAbba("Hi", "Bye"));
    	System.out.println(makeAbba("Yo", "Alice"));
    	System.out.println(makeAbba("What", "Up"));
    }

    public static String makeAbba(String dhamni,String pingala){

    	return dhamni+pingala+pingala+dhamni;
    }

}
