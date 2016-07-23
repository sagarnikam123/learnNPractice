package thoughtWorks.SuperHero;

import java.util.HashMap;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class SmsHero {

	private static HashMap<String, String> superHero = new HashMap<String, String>();

	/***
	 * A function to call out respective super hero for saving.
	 * @param args 0 <space> <superHeroCode> e.g. 0 78737626
	 * @throws IOException
	 */
	public static void main(String[] args) throws IOException {

		superHero.put("78737626", "SUPERMAN");
		superHero.put("8467", "THOR");
		superHero.put("76246", "ROBIN");
		superHero.put("4766626", "IRONMAN");
		superHero.put("4467874337", "GHOSTRIDER");
		superHero.put("2278246", "CAPTAINAMERICA");
		superHero.put("35274", "FLASH");
		superHero.put("965837463", "WOLVERINE");
		superHero.put("228626", "BATMAN");
		superHero.put("4855", "HULK");
		superHero.put("25233", "BLADE");
		superHero.put("7426866", "PHANTOM");
		superHero.put("774337626", "SPIDERMAN");
		superHero.put("2522594369", "BLACKWIDOW");
		superHero.put("4355269", "HELLBOY");
		superHero.put("78647437", "PUNISHER");

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		String line = null;

		while ((line = br.readLine()) != null) {
			
			String code[] = line.trim().split(" ");
			//System.out.println(code[1]);
			if (superHero.containsKey(code[1])) {
				//System.out.println(line.trim()+" - "+superHero.get(code[1]));
				System.out.println("  "+superHero.get(code[1]));
			}else{
				System.out.println("we can't find superHero for the code "+code[1]);
			}

		}
		br.close();

	} // main

} // class
