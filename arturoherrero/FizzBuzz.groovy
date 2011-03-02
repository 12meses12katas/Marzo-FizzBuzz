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
    
    void testSix() {
        assert "Fizz" == fizzBuzz.answer(6)
    }
    
    void testSeven() {
        assert "7" == fizzBuzz.answer(7)
    }
    
    void testTen() {
        assert "Buzz" == fizzBuzz.answer(10)
    }
    
    void testFifteen() {
        assert "FizzBuzz" == fizzBuzz.answer(15)
    }
    
}

class FizzBuzz {

    String answer(int number) {
        if (divisibleByThree(number) && divisibleByFive(number))
            "FizzBuzz"
        else if (divisibleByThree(number))
            "Fizz"
        else if (divisibleByFive(number))
            "Buzz"
        else
            number.toString()
    }
    
    private divisibleByThree(int number) {
        number % 3 == 0
    }
    
    private divisibleByFive(int number) {
        number % 5 == 0
    }
    
}

