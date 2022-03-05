package car;

public class Car3 {

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

	public Car3() {

	}

	public Car3(int customMaxSpeed, double customWeight, boolean customIsTheCarOn ) {
		maxSpeed = customMaxSpeed;
		weight = customWeight;
		isTheCarOn = customIsTheCarOn;
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

	public void wreckCar() {
		condition = 'C';
	}

	public void upgradeMinSpeed(){
		minSpeed = maxSpeed;
		maxSpeed = maxSpeed + 1;
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
		Car3 tommyCar = new Car3();
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
