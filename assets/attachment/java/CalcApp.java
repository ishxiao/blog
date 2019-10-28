/**
 * The CalcApp class implements an application that
 * simply prints result to standard output.
 */
import java.math.*;
import java.io.*;

class CalcApp {
    public static void main(String[] args) {
        // System.out.println("2^167="); 
        BigInteger a = new BigInteger("2");
        File f = new File("result_of_pow(2,167).txt");
        try{
			FileOutputStream fos1=new FileOutputStream(f);
			OutputStreamWriter dos1=new OutputStreamWriter(fos1);
			for(int i = 1; i < 168; i++){
				dos1.write("2^"+i+" = "+ a.pow(i) + "\n");
			}
			System.out.println("2^167 = "+ a.pow(167)); // Display the result.
			dos1.close();
		}
		catch(IOException e){
			System.out.println("Eorror" + e);
		}
    }
}