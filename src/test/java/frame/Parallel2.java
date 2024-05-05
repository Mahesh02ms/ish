package frame;

import com.ibm.icu.util.BytesTrie.Result;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate.Test;

	import com.intuit.karate.Results;
	import com.intuit.karate.Runner;
	import static org.junit.jupiter.api.Assertions.*;

	class Parallel2 {

	    @Test
	    void testParallel() {
	        Results results = Runner.path("classpath:frame").tags("~@skipme").parallel(5);
	        assertEquals(0, results.getFailCount(), results.getErrorMessages());
	    }
@Test
	
}

