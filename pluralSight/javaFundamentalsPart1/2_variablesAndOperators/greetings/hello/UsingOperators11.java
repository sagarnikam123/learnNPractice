package greetings.hello;

public class UsingOperators11 {

	public static void main(String[] args) {
		
		// simple assignment operators
		int number = 3;
		number = 3 + 2;
		number = 5 - 1;
		
		number++;
		number--;
		System.out.println(number);

		// complex assignment
		//number = number + 2;
		number += 2;
		number *= 2;
		System.out.println(number);
		
		// boolean
		boolean value = true;
		System.out.println(value);
		System.out.println(3 > 2);
		System.out.println(3 < 2);
		System.out.println(3 >= 3);
		System.out.println(3 == 3);
		System.out.println(3 != 3);
		System.out.println(true && true);
		System.out.println(true && false);
		System.out.println(true || false);
		System.out.println(false || false);
		System.out.println(!false);
		System.out.println(!true);
		
	}

}
