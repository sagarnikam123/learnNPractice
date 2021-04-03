package inputAndOutputWithStreamsAndFiles;

import com.sun.xml.internal.messaging.saaj.util.ByteInputStream;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class StreamReader {
    public static void main(String[] args) {
        //Reading one byte at a time
        InputStreamReader input = null;
        int intVal;
        try{
            while ((intVal = input.read()) >= 0){

            }
        } catch (IOException exp) {
            System.out.println("IO Exception occurred" + exp);
        }
    }
}
