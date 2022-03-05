package introToCs.intermediate;

public class NestedifStatements {

	public static void main(String[] args) {
		// Nested "if" Statements
		String gender = "female";
		int age =43;

		if(gender.equalsIgnoreCase("male")){
			if(age > 30){
				System.out.println("You are a male over the age of 30");
			}else{
				System.out.println("You are a male under the age of 30");
			}
		}else{
			if(age > 30){
				System.out.println("You are a female over the age of 30");
			}else{
				System.out.println("You are a female under the age of 30");
			}

		}

	}

}
