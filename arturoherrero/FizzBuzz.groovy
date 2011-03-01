/**
 *   kata:    Fizz Buzz http://www.codingdojo.org/cgi-bin/wiki.pl?KataFizzBuzz
 *   Author:  Arturo Herrero
 *   Web:     http://arturoherrero.com/
 *   Twitter: @ArturoHerrero
 */

import groovy.util.GroovyTestCase

class FizzBuzzTest extends GroovyTestCase {
    
    def fizzBuzz = new FizzBuzz()
    
    void testOne() {
        assert "1" == fizzBuzz.answer(1)
    }
    
    void testTwo() {
        assert "2" == fizzBuzz.answer(2)
    }
    
    void testThree() {
        assert "Fizz" == fizzBuzz.answer(3)
    }
    
}

class FizzBuzz {

    String answer(int number) {
        if (number == 1)
            "1"
        else if (number == 2)
            "2"
        else
            "Fizz"
    }
    
}
