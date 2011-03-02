/**
 *   kata:    Fizz Buzz http://www.codingdojo.org/cgi-bin/wiki.pl?KataFizzBuzz
 *   Author:  Arturo Herrero
 *   Web:     http://arturoherrero.com/
 *   Twitter: @ArturoHerrero
 */

import groovy.util.GroovyTestCase

class FizzBuzzMonkeyPatchTest extends GroovyTestCase {

    static {    
        Number.metaClass.divisibleByThree = { ->
            delegate % 3 == 0
        }

        Number.metaClass.divisibleByFive = { ->
            delegate % 5 == 0
        }

        Number.metaClass.fizzBuzz = { ->
            if (delegate.divisibleByThree() && delegate.divisibleByFive())
                "FizzBuzz"
            else if (delegate.divisibleByThree())
                "Fizz"
            else if (delegate.divisibleByFive())
                "Buzz"
            else
                delegate.toString()
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
    
}

