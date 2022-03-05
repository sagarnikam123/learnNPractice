package arrayalgorithms;

public class ArraySearcher {

	public static void main(String[] args) {
		// Searching Arrays
		String [] toys = {"Bike","Pogo Stick","YoYo","Action Figure"};
		int result = stringSearcher(toys,"Crayons");

		if(result == -1){
			System.out.println("No match found.");
		}else{
			System.out.println("Result: "+ toys[result]);
		}
	}

	public static int stringSearcher(String [] arr, String val){

		int match = -1 ;

		for(int i = 0; i < arr.length; i++){

			if(arr[i].equalsIgnoreCase(val)){
				match = i;
				break;
			}
		}

		return match;

	}

}
