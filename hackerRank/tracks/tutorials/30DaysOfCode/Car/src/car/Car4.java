package car;

public class Car4 {

	int maxSpeed = 100;
	int minSpeed = 0;
	
	double weight = 4079;	// pound
	
	boolean isTheCarOn = false;
	char condition = 'A';
	String nameOfCar = "Lucy";
	
	double maxFuel = 16; // gallon
	double currentFuel = 8;
	double mpg = 26.4; // mass per gallon
	
	int numberOfPeopleInCar = 1;
	int maxNumberOfPeopleInCar = 6;
	
	public Car4() {
		
	}
	
	public Car4(int customMaxSpeed, double customWeight, boolean customIsTheCarOn ) {
		maxSpeed = customMaxSpeed;
		weight = customWeight;
		isTheCarOn = customIsTheCarOn;
	}

	// Getters and Setters
	public int getMaxSpeed() {
		return this.maxSpeed;
	}
	
	public void setMaxSpeed(int newMaxSpeed) {
		this.maxSpeed = newMaxSpeed;
	}
	
	public int getMinSpeed() {
		return this.minSpeed;
	}
	
	public boolean getIsTheCarOn() {
		return this.isTheCarOn;
	}
	
	public double getWeight() {
		return this.weight;
	}
	
	public void printVariables(){
		System.out.println("This is the max speed " + maxSpeed);
		System.out.println(minSpeed);
		System.out.println(weight);
		System.out.println(isTheCarOn);
		System.out.println(condition);
		System.out.println(nameOfCar);
		System.out.println(numberOfPeopleInCar);
	}
	
	public void upgradeMaxSpeed(){
		setMaxSpeed(getMaxSpeed() + 10);
	}
	
	public void getIn() {
		// if there aren't too many people in the car
		if (numberOfPeopleInCar < maxNumberOfPeopleInCar) {
			// someone can get in
			numberOfPeopleInCar++;
			System.out.println("Someone got in");
		} else {
			// otherwise print out the fact the car is full
			System.out.println("The Car is full! " + numberOfPeopleInCar + " = " + maxNumberOfPeopleInCar );
		}
	}
	
	public void getOut() {
		// if there's people in the car
		if (numberOfPeopleInCar > 0) {
			// then tell one to get out
		numberOfPeopleInCar--;
		} else {
			// otherwise no one can get out and we'll print that.
			System.out.println("No one is in the car " + numberOfPeopleInCar);
		}
	}
	
	public double howManyMilesTillOutOfGas() {
		return currentFuel * mpg;
	}
	
	public double maxMilesPerFillUp() {
		return maxFuel * mpg;
	}
	
	public void turnTheCarOn() {
		// if the car isn't on...
		if(!isTheCarOn) {
			// turn it on
			isTheCarOn = true;
			System.out.println("Car gets started...");
		}else {
			// otherwise print out the fact it's on
			System.out.println("The Car is already on " + isTheCarOn);
		}
	}
	
	public static void main(String[] args) {
		Car4 tommyCar = new Car4();
		tommyCar.getOut();
		tommyCar.getOut();
		tommyCar.getIn();
		tommyCar.getIn();
		tommyCar.getIn();
		tommyCar.getIn();
		tommyCar.getIn();
		tommyCar.getIn();
		tommyCar.getIn();
		tommyCar.turnTheCarOn();
		tommyCar.turnTheCarOn();

	}

}
