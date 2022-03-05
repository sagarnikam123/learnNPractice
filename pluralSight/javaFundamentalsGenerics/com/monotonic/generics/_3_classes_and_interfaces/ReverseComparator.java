package com.monotonic.generics._3_classes_and_interfaces;

import java.util.Comparator;

public class ReverseComparator<T> implements Comparator<T> {

	private Comparator<T> delegateComparator;

	public ReverseComparator(Comparator<T> delegateComparator) {
		this.delegateComparator = delegateComparator;
	}

	@Override
	public int compare(final T left, final T right) {
		return -1 * delegateComparator.compare(left, right);
	}

}
