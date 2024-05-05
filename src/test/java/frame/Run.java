package frame;

import org.junit.BeforeClass;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class Run {

	
	@Test
	
	public Karate calling() {
		
	return	Karate.run("Driven").relativeTo(getClass());
	}
	
	@BeforeClass
	
	public static void before()
	
	{
		System.setProperty("karate.env","qa");
		
	}
	
}
