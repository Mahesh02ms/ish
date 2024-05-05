package frame;

import com.github.javafaker.Faker;

public class TESTGENRATOR {
	public  static String random () {		
		Faker  nam=new Faker();
		String shiva=nam.name().firstName().toLowerCase()+ nam.random().nextInt(1,15);
				return shiva;
		}


public  static String deva () {		
	Faker  mahi=new Faker();
	String sai=mahi.name().fullName()+mahi.random().nextInt(1,15);
			return sai;
	}
	

}