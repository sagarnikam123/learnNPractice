package arrayalgorithms;

import java.util.Arrays;

public class SelectionSort {

	public static void main(String[] args) {
		// Selection Sort
		
		int [] nums = {8, 2, 5, 6, 1, 9};
		
		for(int i =0; i < nums.length -1 ; i++){
			
			for(int j = i+1;j < nums.length; j++ ){
				
				if(nums[i] > nums[j]){
					int iVal = nums[i];
					nums[i] = nums[j];
					nums[j] = iVal;
				}
			}
		}
		
		System.out.println(Arrays.toString(nums));

	}

}
