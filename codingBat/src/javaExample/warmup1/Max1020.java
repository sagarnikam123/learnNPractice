/**************************************************************************************************

    max1020 - solved
    
    Given 2 positive int values,
    return the larger value that is in the range 10..20 inclusive, 
    or return 0 if neither is in that range.
***************************************************************************************************
max1020(11, 19) → 19
max1020(19, 11) → 19
max1020(11, 9) → 11
max1020(9, 21) → 0	0	
max1020(10, 21) → 10	21    
max1020(21, 10) → 10	21    
max1020(9, 11) → 11	11
max1020(23, 10) → 10	23    
max1020(20, 10) → 20	20    
max1020(7, 20) → 20	20
max1020(17, 16) → 17	17
**************************************************************************************************/
package javaExample.warmup1;

public class Max1020{

    public static void main(String[] args){

         System.out.println(max1020(11, 19) );
         System.out.println(max1020(19, 11) );
         System.out.println(max1020(11, 9) );
         System.out.println(max1020(9, 21));
         System.out.println(max1020(10, 21)); 
         System.out.println(max1020(21, 10));    
         System.out.println(max1020(9, 11)); 
         System.out.println(max1020(23, 10));    
         System.out.println(max1020(20, 10));    
         System.out.println(max1020(7, 20)); 
         System.out.println(max1020(17, 16));
    
    }
    
    public static int max1020(int a, int b){
        
    	int returnMax = 0;
    	
    	if(!check1020Range(a) && !check1020Range(b)){
    		returnMax = 0;
    	}else if(check1020Range(a) && check1020Range(b)){
    		if(a > b){ returnMax = a ;}
            if(b > a){ returnMax = b;}
    	}else if(check1020Range(a)){
    		returnMax = a;
    	}else{
    		returnMax = b;
    	}
        return returnMax;
    }
    
    public static boolean check1020Range(int checkInt){
    	
    	if( checkInt >=10 && checkInt <= 20){
    		return true;
    	}
    	return false;
    }
}


