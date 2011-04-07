/*  JUnit Tutorial
 *  http://www.vogella.de/articles/JUnit/article.html
 */
	

package net.corbacho.MarzoFizzBuzz;

import junit.framework.Test;
import junit.framework.TestSuite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

@RunWith(Suite.class)
@Suite.SuiteClasses( { 
	FizzBuzzCounterTest.class,
	})


public class AllTests {

	public static Test suite() {
		TestSuite suite = new TestSuite("Test for net.corbacho.MarzoFizzBuzz");
		//$JUnit-BEGIN$

		//$JUnit-END$
		return suite;
	}

}



