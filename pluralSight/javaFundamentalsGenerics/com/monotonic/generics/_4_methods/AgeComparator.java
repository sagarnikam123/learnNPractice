package com.monotonic.generics._4_methods;

import java.util.Comparator;

public class AgeComparator implements Comparator<Person>{

	@Override
	public int compare(final Person left, final Person right) {
		
		return Integer.compare(left.getAge(), right.getAge());
		// return -1 * Integer.compare(left.getAge(), right.getAge());
	}

}
