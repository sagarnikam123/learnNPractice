package introToCs.controlflow;

public class SwitchStatement {

	public static void main(String[] args) {
		// Working with the Switch Statement

		int day = 10;

		switch(day){
		case 1: System.out.println("It's MONDAY!"); break;
		case 2: System.out.println("It's TUESDAY!"); break;
		case 3: System.out.println("It's WEDNESDAY!"); break;
		case 4: System.out.println("It's THURSDAY!"); break;
		case 5: System.out.println("It's FRIDAY!"); break;
		case 6: System.out.println("It's SATURDAY!"); break;
		case 7: System.out.println("It's SUNDAY!"); break;
		default: System.out.println("Invalid day of the week");


		}

	}

}
