package thoughtWorks.Hotel;

public class Customer {

	/*
	INPUT 2: Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)  
	OUTPUT 2: Bridgewood
	*/ 
	
	private String cutomerType = null;
	private int weekDays = 0;
	private int weekEnds = 0;
	
	public String getCutomerType() {
		return cutomerType;
	}

	public void setCutomerType(String cutomerType) {
		this.cutomerType = cutomerType;
	}
	
	public int getWeekDays() {
		return weekDays;
	}

	public void setWeekDays(int weekDays) {
		this.weekDays = weekDays;
	}
	
	public int getWeekEnds() {
		return weekEnds;
	}

	public void setWeekEnds(int weekEnds) {
		this.weekEnds = weekEnds;
	}
	
	public Customer(String customerType,int weekDays,int weekEnds){
		this.weekDays = weekDays;
		this.weekEnds = weekEnds;
		this.cutomerType = customerType;
	} 
	
	public String CalculateHotel(Customer customer){
		
		String bestHotel = null;
		int lakeWood = 0;
		int bridgeWood = 0;
		int ridgeWood = 0;
		
		if (customer.cutomerType.equalsIgnoreCase("regular")) {

			lakeWood = 90 * this.weekEnds + 110 * this.weekDays;
			bridgeWood = 60 * this.weekEnds + 160 * this.weekDays;
			ridgeWood = 150 * this.weekEnds + 220 * this.weekDays;

		} else {
			lakeWood = 80 * this.weekEnds + 80 * this.weekDays;
			bridgeWood = 50 * this.weekEnds + 110 * this.weekDays;
			ridgeWood = 40 * this.weekEnds + 100 * this.weekDays;
		}

	//	System.out.println("LakeWood - "+lakeWood+" bridegeWood-"+bridgeWood+" ridgeWood-"+ridgeWood);
		
		if (lakeWood < bridgeWood) {
			if (lakeWood < ridgeWood) {
				bestHotel = "LakeWood";
			}else{
				bestHotel = "RidgeWood";
			}
		} else if (bridgeWood < ridgeWood) {
			bestHotel = "BridgeWood";
		} else if(ridgeWood < bridgeWood){
			bestHotel = "RidgeWood";
		}else{
			bestHotel = "RidgeWood";
		}
		
		return bestHotel;
			
		}
		

	}
	
	

