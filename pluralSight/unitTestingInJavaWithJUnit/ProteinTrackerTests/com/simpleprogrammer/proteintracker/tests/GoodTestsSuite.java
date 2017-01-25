package com.simpleprogrammer.proteintracker.tests;
import org.junit.experimental.categories.Categories;
import org.junit.experimental.categories.Categories.ExcludeCategory;
import org.junit.experimental.categories.Categories.IncludeCategory;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

@RunWith(Categories.class)
@IncludeCategory(GoodTestsCategory.class)
@ExcludeCategory(BadCategory.class)
@Suite.SuiteClasses({
	HelloJUnitTest.class,
	TrackingServiceTest.class
})

public class GoodTestsSuite {

}
