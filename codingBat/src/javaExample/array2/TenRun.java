/**************************************************************************************************

    tenRun - solved
    
    For each multiple of 10 in the given array, change all the values following it to be that 
    multiple of 10, until encountering another multiple of 10. So {2, 10, 3, 4, 20, 5}
    yields {2, 10, 10, 10, 20, 20}. 
***************************************************************************************************
tenRun({2, 10, 3, 4, 20, 5}) â†’ {2, 10, 10, 10, 20, 20}
tenRun({10, 1, 20, 2}) â†’ {10, 10, 20, 20}
tenRun({10, 1, 9, 20}) â†’ {10, 10, 10, 20}
tenRun({1, 2, 50, 1}) → {1, 2, 50, 50}
tenRun({1, 20, 50, 1}) → {1, 20, 50, 50}
tenRun({10, 10}) → {10, 10}
tenRun({10, 2}) → {10, 10}
tenRun({0, 2}) → {0, 0}
tenRun({1, 2}) → {1, 2}
tenRun({1}) → {1}
tenRun({}) → {}
**************************************************************************************************/
package javaExample.array2;

public class TenRun
{

    public static void main(String[] args)
    {
    	int bavarchi [] =  {10, 1, 9, 20};
    	int kekule [];
    	System.out.println(kekule = tenRun(bavarchi));
    	for(int principle : kekule){
    		System.out.println(principle);
    	}
    }
    
    public static int[] tenRun(int[] nums) {
    	
    	int jbossGalati [] = new int[nums.length];
    	boolean farebi = false;
    	int nadani = 0;
    	
    	for(int i=0;i<nums.length;i++){
    		if(nums[i] % 10==0){
    			nadani = nums[i];
    			farebi = true;
    			jbossGalati [i] = nums[i];
    		}else if(farebi){
    			jbossGalati [i] = nadani;
    		}else{
    			jbossGalati [i] = nums[i];
    		}
    	}
    	
        return jbossGalati;
    }


}