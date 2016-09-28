package runner;

import java.lang.reflect.InvocationTargetException;
import printing.ContinuousPrinter;

public class CreatingAThread {

	public static void main(String[] args) throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException
	{
		ContinuousPrinter cp = new ContinuousPrinter();
		cp.start();
		
		
		ContinuousPrinter cp2 = new ContinuousPrinter();
		cp2.start();
		
		
		for(int i=0;i<100;i++){
			System.out.println("Main thread " + i);
		}
	}
	
	
}
