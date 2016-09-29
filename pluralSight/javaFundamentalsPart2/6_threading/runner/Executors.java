package runner;

import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import printing.ContinuousPrinterRunnable;

public class Executors {

	public static void main(String[] args) throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException
	{
		ContinuousPrinterRunnable cp = new ContinuousPrinterRunnable();

		//ExecutorService executor = java.util.concurrent.Executors.newFixedThreadPool(10);
		ExecutorService executor = java.util.concurrent.Executors.newSingleThreadExecutor();
		executor.submit(cp);
		executor.submit(cp);
		executor.submit(cp);
		executor.submit(cp);
		executor.submit(cp);
		executor.submit(cp);
		executor.shutdown();


		for(int i=0;i<100;i++){
			System.out.println("Main thread " + i);
		}
	}

}
