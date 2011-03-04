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
    
    void testContainsThree() {
        assert "Fizz" == fizzBuzz.answer(13)
    }
    
    void testContainsFive() {
        assert "Buzz" == fizzBuzz.answer(52)
    }
    
}

class FizzBuzz {

    String answer(int number) {
        def answer = ""
        
        if (divisibleBy(number:number, divisor:3) || contains(number:number, digit:3))
            answer += "Fizz"
            
        if (divisibleBy(number:number, divisor:5) || contains(number:number, digit:5))
            answer += "Buzz"
            
        if (answer.empty)
            answer = number.toString()
        
        return answer
    }
    
    def divisibleBy(map) {
        map.number % map.divisor == 0
    }
    
    def contains(map) {
        map.number.toString().contains(map.digit.toString())
    }
    
}

