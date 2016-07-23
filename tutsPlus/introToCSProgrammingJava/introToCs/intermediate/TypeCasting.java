package introToCs.intermediate;

public class TypeCasting {

	public static void main(String [] args){
		//Type Casting
		double dNum = 34.59;
		int iNum = (int) dNum;
		System.out.println(iNum);
		
		String sNum = "50";
		iNum = Integer.parseInt(sNum);
		System.out.println(iNum);
		
	}
	
}
