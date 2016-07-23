package arrayalgorithms;

public class CalcSumAvg {

	public static void main(String[] args) {
		// calculating the sum and avaerage of integer values
		int [] nums = {5, 10, 15, 20, 25};
		
		int sums =0;
		
		for(int i=0; i < nums.length; i++){
			sums = sums + nums[i];
		}
		
		int avg = sums / nums.length;
		
		System.out.println("Sum : "+ sums);
		System.out.println("Average : "+ avg);
	}

}
