/**************************************************************************************************

    makeTags - solved

    The web is built with HTML strings like "<i>Yay</i>" which draws Yay as italic text.
    In this example, the "i" tag makes <i> and </i> which surround the word "Yay".
    Given tag and word strings, create the HTML string with tags around the word, e.g. "<i>Yay</i>".
***************************************************************************************************
makeTags("i", "Yay") → "<i>Yay</i>"
makeTags("i", "Hello") → "<i>Hello</i>"
makeTags("cite", "Yay") → "<cite>Yay</cite>"
makeTags("address", "here") → "<address>here</address>"
makeTags("body", "Heart") → "<body>Heart</body>"
makeTags("i", "i") → "<i>i</i>"
makeTags("i", "") → "<i></i>"
**************************************************************************************************/
package javaExample.string1;

public class MakeTags
{

    public static void main(String[] args)
    {
    	System.out.println(makeTags("i", "Yay"));
    	System.out.println(makeTags("i", "Hello"));
    	System.out.println(makeTags("cite", "Yay"));
    }

    public static String makeTags(String kanhopatra,String pan){
    	return "<"+kanhopatra+">"+pan+"</"+kanhopatra+">";
    }

}
