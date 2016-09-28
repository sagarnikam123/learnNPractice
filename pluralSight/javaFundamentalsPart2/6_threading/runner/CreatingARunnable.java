package runner;

import java.lang.reflect.InvocationTargetException;
import printing.ContinuousPrinterRunnable;

public class CreatingARunnable {

	public static void main(String[] args) throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException
	{
		ContinuousPrinterRunnable cp = new ContinuousPrinterRunnable();
		Thread thread = new Thread(cp);
		thread.start();
		
		for(int i=0;i<100;i++){
			System.out.println("Main thread " + i);
		}
	}
	
	
}
