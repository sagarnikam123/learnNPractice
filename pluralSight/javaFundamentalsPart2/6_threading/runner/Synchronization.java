package runner;

import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;

import printing.ContinuousPrinterSynchronization;

public class Synchronization {

	public static void main(String[] args) throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException
	{
		ContinuousPrinterSynchronization cp = new ContinuousPrinterSynchronization();
		ExecutorService executor = java.util.concurrent.Executors.newFixedThreadPool(100);
		executor.submit(cp);
		executor.submit(cp);
		executor.submit(cp);
		executor.submit(cp);
		executor.submit(cp);
		executor.submit(cp);
		executor.shutdown();
		
		for(int i=0;i< 100;i++){
			System.out.println("Main thread " + i);
		}
	}
	
	
}
