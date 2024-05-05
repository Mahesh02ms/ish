package frame;

import org.junit.BeforeClass;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class Testrun {
	
	@Karate.Test
	public Karate runn() {
		 return Karate.run("get").relativeTo(getClass());
		 
	}
	
	@Karate.Test
	Karate Ram(){
		 return Karate.run("get").tags("@second").relativeTo(getClass());
		
	}

	@Karate.Test
	public Karate Mah() {
		 return Karate.run("Post").relativeTo(getClass());
		 
	}

	@Karate.Test
	public Karate shiva() {
		 return Karate.run("Put").relativeTo(getClass());
		 
	}

	@Karate.Test
	public Karate Niha() {
		 return Karate.run("gett").relativeTo(getClass());
		 
	}

	@Karate.Test
	public Karate Nisha() {
		 return Karate.run("pass").relativeTo(getClass());
		 
	}
	/*@Test 
	public Karate path() {
		 return Karate.run("/Karateframework/src/test/java/frame/get.feature");
	*/
		


	@BeforeClass
	
	public static void before()
	
	{
		System.setProperty("karate.env","qa");
		
	}

	@Karate.Test
	public Karate fig() {
		 return Karate.run("config").relativeTo(getClass());
		 
	}

	}
	

	


