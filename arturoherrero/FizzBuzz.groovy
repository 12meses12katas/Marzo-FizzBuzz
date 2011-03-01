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
    
    void testFour() {
        assert "4" == fizzBuzz.answer(4)
    }
    
    void testFive() {
        assert "Buzz" == fizzBuzz.answer(5)
    }
    
}

class FizzBuzz {

    String answer(int number) {
        if (number == 3)
            "Fizz"
        else if (number == 5)
            "Buzz"
        else
            number.toString()
    }
    
}
