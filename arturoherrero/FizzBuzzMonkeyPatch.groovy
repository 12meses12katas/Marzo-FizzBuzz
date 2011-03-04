/**
 *   kata:    Fizz Buzz http://www.codingdojo.org/cgi-bin/wiki.pl?KataFizzBuzz
 *   Author:  Arturo Herrero
 *   Web:     http://arturoherrero.com/
 *   Twitter: @ArturoHerrero
 */

import groovy.util.GroovyTestCase

class FizzBuzzMonkeyPatchTest extends GroovyTestCase {

    static {
        Number.metaClass.fizzBuzz = { ->
            def answer = ""
        
            if (delegate.isDivisibleBy(3) || delegate.contains(3))
                answer += "Fizz"
                
            if (delegate.isDivisibleBy(5) || delegate.contains(5))
                answer += "Buzz"
                
            if (answer.empty)
                answer = delegate.toString()
            
            return answer
        }
        
        Number.metaClass.isDivisibleBy = { divisor ->
            delegate % divisor == 0
        }
        
        Number.metaClass.contains = { digit ->
            delegate.toString().contains(digit.toString())
        }
    }

    void testOne() {
        assert "1" == 1.fizzBuzz()
    }
    
    void testTwo() {
        assert "2" == 2.fizzBuzz()
    }
    
    void testThree() {
        assert "Fizz" == 3.fizzBuzz()
    }
    
    void testFour() {
        assert "4" == 4.fizzBuzz()
    }
    
    void testFive() {
        assert "Buzz" == 5.fizzBuzz()
    }
    
    void testSix() {
        assert "Fizz" == 6.fizzBuzz()
    }
    
    void testSeven() {
        assert "7" == 7.fizzBuzz()
    }
    
    void testTen() {
        assert "Buzz" == 10.fizzBuzz()
    }
    
    void testFifteen() {
        assert "FizzBuzz" == 15.fizzBuzz()
    }
    
    void testContainsThree() {
        assert "Fizz" == 13.fizzBuzz()
    }
    
    void testContainsFive() {
        assert "Buzz" == 52.fizzBuzz()
    }
    
}

