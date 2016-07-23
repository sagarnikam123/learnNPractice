/*******************************************************************************************************
 Given a literal string of colors (for example “red red blue green red blue”, etc)
 write code to detect the largest number of adjacent repeats of each color name present in the string 
 (that is, red repeats at most 2 times, green 1 time, etc)
 *******************************************************************************************************/

package ratbhar;

import java.util.HashSet;

public class FindMaxAdjacentColors {

	public static void main(String[] args) {

		// inputs to programs
		String colorWali1 = "red red blue green red blue";
		String colorWali2 = "black yellow yellow yellow yellow blue green green red blue green";
		String colorWali3 = "red red blue green white white red blue";
		String colorWali4 = "red red blue";
		String colorWali5 = "red red blue green white blue red aakashi red blue";

		// breaking lines
		// manually try diff. inputs from above string
		String[] splittedLine = colorWali2.split(" ");

		// storing unique colors
		HashSet<String> uniqueColorLine = new HashSet<String>();
		for (String element : splittedLine) {
			uniqueColorLine.add(element);
		}

		for (String uniqueColor : uniqueColorLine) {
			int maxCount = 1;
			// for each unique colour
			for (int i = 0; i < splittedLine.length; i++) {

				int localCount = 1;
				if (uniqueColor.matches(splittedLine[i])) {
					// iterating over all colors
					for (int j = i + 1; j < splittedLine.length; j++) {
						if (uniqueColor.equalsIgnoreCase(splittedLine[j])) {
							localCount++;
						} else {
							break;
						}
					}
				}

				if (maxCount < localCount) {
					maxCount = localCount;
				}
			}
			// printing calculations
			System.out.println(uniqueColor + "  " + maxCount);

		}

	}

}
