package frame;

import com.github.javafaker.Faker;

public class jobdata {
	public static String ish() {
	Faker nisha=new Faker();
	String mahi=nisha.name().fullName().toLowerCase()+ nisha.random().nextInt(1, 11);
	return mahi;
		
		
	}
}
