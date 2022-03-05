package greetings.hello;

public class UsingScopes7 {

	@SuppressWarnings("unused")
	private static int age = 50;

	public static void main(String[] args) {

		{
			int age = 25;
			System.out.println(age);
		}

		int age = 20;
		System.out.println(age);

	}

}
