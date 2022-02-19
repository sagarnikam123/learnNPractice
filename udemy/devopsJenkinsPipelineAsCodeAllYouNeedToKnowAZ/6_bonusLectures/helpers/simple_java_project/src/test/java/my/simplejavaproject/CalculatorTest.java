package my.simplejavaproject;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class CalculatorTest {
	@Test
	public void testAdd()
	{
	
		Calculator calculator = new Calculator();
		int result = calculator.add(1, 2);
		assertEquals(3, result);
		
	}
	
	@Test
	public void testMinus()
	{
	
		Calculator calculator = new Calculator();
		int result = calculator.minus(4, 1);
		assertEquals(3, result);
		
	}
	
	@Test
	public void testDivide()
	{
	
		Calculator calculator = new Calculator();
		int result = calculator.divide(6, 2);
		assertEquals(3, result);		
	}	
}
