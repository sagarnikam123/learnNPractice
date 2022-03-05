package com.monotonic.collections._5_queues.b_priority_queues;

import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.Queue;

import com.monotonic.collections._5_queues.Category;
import com.monotonic.collections._5_queues.Customer;
import com.monotonic.collections._5_queues.Enquiry;

public class PriorityHelpDesk {

	private static final Comparator<Enquiry> BY_CATEGORY = new Comparator<Enquiry>() {

		public int compare(final Enquiry o1, final Enquiry o2){
			return o1.getCategory().compareTo(o2.getCategory());
		}
	};

	private Queue<Enquiry> enquiries = new PriorityQueue<Enquiry>(BY_CATEGORY);

	public void enquire(final Customer customer, final Category type){ enquiries.offer(new Enquiry(customer, type)); }

	public void processAllEnquires(){
		Enquiry enquiry;
		while((enquiry = enquiries.poll()) != null){
			enquiry.getCustomer().reply("Have you tried turning it off and on again?");;
		}
	}

	public static void main(String[] args){

		PriorityHelpDesk helpDesk = new PriorityHelpDesk();
		helpDesk.enquire(Customer.JACK, Category.PHONE);
		helpDesk.enquire(Customer.JILL, Category.PRINTER);
		helpDesk.enquire(Customer.MARY, Category.COMPUTER);

		helpDesk.processAllEnquires();
	}
}
