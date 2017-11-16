package thoughtWorks.Hotel;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class HotelRoom {
	
	/***
	 * takes customer input (type & dates), gives best hotel name.
	 * @param args Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)  
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		String line = null;
		
		while((line=br.readLine())!=null){
			String inputSplit [] = line.split(":");
			
			String cutomerType = inputSplit[0].trim();
			String dates [] = inputSplit[1].split(",");
			
			int weekDays = 0;
			int weekEnds = 0;
			
			for(String date : dates){
				int length = date.trim().length();
				String day =date.trim().substring(length-4, length-1);
				if (day.equalsIgnoreCase("sat") || day.equalsIgnoreCase("sun")){
					weekEnds++;
				}else{
					weekDays++;
				}
						
			}
//			System.out.println("Customer type - "+cutomerType);
//			System.out.println("Days - weekdays: "+weekDays+" weeEnds: "+weekEnds);
			
			Customer customer = new Customer(cutomerType,weekDays,weekEnds);
			String bestHotel = customer.CalculateHotel(customer);
			
			//System.out.println(" "+line.trim()+" - "+bestHotel);
			System.out.println(bestHotel);
		}

	} //main

} //class
