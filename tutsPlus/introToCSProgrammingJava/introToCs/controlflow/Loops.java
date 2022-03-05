package introToCs.controlflow;

public class Loops {

	public static void main(String[] args) {
		// Working with Loops

		int number =1;

		while(number <= 10){
			//System.out.println(number);
			number++;
		}

		int number2 = 11;
		do{
			System.out.println(number2);
			number2++;
		} while(number2 <= 20);

		for(int i = 21; i <= 30 ; i++ ){
			System.out.println(i);
		}

	}

}
