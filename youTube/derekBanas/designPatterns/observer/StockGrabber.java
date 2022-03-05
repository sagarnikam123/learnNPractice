package observer;

import java.util.ArrayList;

public class StockGrabber implements Subject{

	private ArrayList<Observer> observers;
	private double ibmPrice;
	private double aaplPrice;
	private double googPrice;

	public StockGrabber(){

		observers = new ArrayList<Observer>();
	}

	@Override
	public void register(Observer newObserver) {
		observers.add(newObserver);

	}

	@Override
	public void unregister(Observer deleteObserver) {

		int observerIndex = observers.indexOf(deleteObserver);
		System.out.println("Observer " + (observerIndex + 1) + " deleted");
		observers.remove(observerIndex);
	}

	@Override
	public void notfiyObserver() {

		for (Observer observer : observers){
			observer.update(ibmPrice, aaplPrice, googPrice);
		}

	}

	public void setIBMPrice(double newIBMPrice){
		this.ibmPrice = newIBMPrice();
	}

}
