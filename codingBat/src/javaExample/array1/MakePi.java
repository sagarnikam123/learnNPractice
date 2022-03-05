/**************************************************************************************************

    makePi - solved

    Return an int array length 3 containing the first 3 digits of pi, {3, 1, 4}.
***************************************************************************************************
makePi() → {3, 1, 4}
**************************************************************************************************/
package javaExample.array1;

public class MakePi
{

    public static void main(String[] args)
    {
    	int ranjha [];
    	System.out.println(ranjha = makePi());
    	for(int i : ranjha){
    		System.out.println(i);
    	}
    }

    public static int [] makePi(){
    	double pi = 22.0/7.0;
    	int kide [] = new int[3];
    	kide[0] = Integer.parseInt(String.valueOf(pi).substring(0,1));
    	kide[1] = Integer.parseInt(String.valueOf(pi).substring(2,3));
    	kide[2] = Integer.parseInt(String.valueOf(pi).substring(3,4));

    	return kide;
    }
}
