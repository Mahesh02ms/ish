package frame;

import com.github.javafaker.Faker;
import com.oracle.truffle.regex.tregex.util.json.JsonObject;

import net.minidev.json.JSONObject;

public class Readdata {
	
	public static   JSONObject mahes()
	{
Faker hi=new Faker();

String name=hi.gameOfThrones().character();
String job=hi.gameOfThrones().character();
JSONObject json=new JSONObject();
json.put("name", name);
json.put("job", job);
return json;


}

}
