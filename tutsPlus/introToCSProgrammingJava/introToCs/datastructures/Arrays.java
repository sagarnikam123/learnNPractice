package introToCs.datastructures;

import java.util.ArrayList;

public class Arrays {

	public static void main(String[] args) {
		// Working with Arrays and ArrayLists
		int [] evenNums = {2,4,6,8,10};
		// System.out.println(evenNums[2]);
		evenNums[2] = 12;
		// System.out.println(evenNums[2]);
		// System.out.println(evenNums.length);

		for(int i =0 ; i < evenNums.length ; i++){
			// System.out.println(evenNums[i]);
		}


		ArrayList<String> bdayList = new ArrayList<String>();

		bdayList.add("BMX Bike");
		bdayList.add("Compact Camera");
		bdayList.add("New Socks");
		// System.out.println(bdayList.get(1));
		bdayList.set(1, "DSLR Camera");
		// System.out.println(bdayList.get(1));

		for(int i =0 ; i < bdayList.size() ; i++){
			System.out.println(bdayList.get(i));
		}

	}

}
