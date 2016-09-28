package printing;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface PrintingDevice 
{
	String defaultPrintMethod();
	int defaultNumberOfCopies();
}
