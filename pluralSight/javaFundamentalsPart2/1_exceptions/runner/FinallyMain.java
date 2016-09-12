package runner;

import printing.Finally;

public class FinallyMain {

	public static void main(String[] args) {
		Finally finallyPrinter = new Finally(true, "myPrinter" );
		
		try{
			finallyPrinter.print(-2);
		}catch(IllegalArgumentException exception){
			System.out.println(exception.getMessage());
			return;
		}
		finally{
			finallyPrinter.TurnOff();
		}

	}

}
