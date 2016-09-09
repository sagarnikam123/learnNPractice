package runner;

import printing.TryNCatch;

public class TryNCatchMain {

	public static void main(String[] args) {
		TryNCatch tnc = new TryNCatch(true, "myPrinter" );
		
		try{
			tnc.print(-2);
		}catch(IllegalArgumentException exception){
			System.out.println(exception.getMessage());
		}

	}

}
