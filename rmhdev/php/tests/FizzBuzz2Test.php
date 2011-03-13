<?php

/**
 * Kata 2011-03: FizzBuzz.
 *
 * Kata trying to resolve the FizzBuzz problem using TDD.
 *
 * LICENSE: MIT license
 *
 * @category   Kata
 * @author     Rober Martín H "rmhdev"
 * @license    MIT License
 * @version    0.1
 * @link       http://github.com/12meses12katas/Marzo-FizzBuzz
 */
include_once __DIR__ . '/../FizzBuzz.php';

class FizzBuzz2Test extends PHPUnit_Framework_TestCase {

    function testProvider() {

        $testCases = array();
        $testCases['T0001'] = array(1   , $this->getExpected($this->getExpectedFizzBuzzArrayFor1()));
        $testCases['T0002'] = array(2   , $this->getExpected($this->getExpectedFizzBuzzArrayFor2()));
        $testCases['T0003'] = array(3   , $this->getExpected($this->getExpectedFizzBuzzArrayFor3()));
        $testCases['T0004'] = array(4   , $this->getExpected($this->getExpectedFizzBuzzArrayFor4()));
        $testCases['T0005'] = array(5   , $this->getExpected($this->getExpectedFizzBuzzArrayFor5()));
        $testCases['T0006'] = array(6   , $this->getExpected($this->getExpectedFizzBuzzArrayFor6()));
        $testCases['T0015'] = array(15  , $this->getExpected($this->getExpectedFizzBuzzArrayFor15()));
        $testCases['T0030'] = array(30  , $this->getExpected($this->getExpectedFizzBuzzArrayFor30()));
        $testCases['T0033'] = array(33  , $this->getExpected($this->getExpectedFizzBuzzArrayFor33()));
        $testCases['T0035'] = array(35  , $this->getExpected($this->getExpectedFizzBuzzArrayFor35()));

        return $testCases;
    }

    /**
     * @dataProvider testProvider
     */
    function test_fizz_buzz($actual, $expected) {

        $fb = new FizzBuzz();

        $this->assertEquals($fb->write2($actual), $expected);
    }


    protected function getExpected($list){
        return implode(FizzBuzz::SEPARATOR, $list);
    }

    protected function getExpectedFizzBuzzArrayFor1(){
        return array(1);
    }
    protected function getExpectedFizzBuzzArrayFor2(){
        return array_merge($this->getExpectedFizzBuzzArrayFor1(), array(2));
    }
    protected function getExpectedFizzBuzzArrayFor3(){
        return array_merge($this->getExpectedFizzBuzzArrayFor2(), array(FizzBuzz::FIZZ));
    }
    protected function getExpectedFizzBuzzArrayFor4(){
        return array_merge($this->getExpectedFizzBuzzArrayFor3(), array(4));
    }
    protected function getExpectedFizzBuzzArrayFor5(){
        return array_merge($this->getExpectedFizzBuzzArrayFor4(), array(FizzBuzz::BUZZ));
    }
    protected function getExpectedFizzBuzzArrayFor6(){
        return array_merge($this->getExpectedFizzBuzzArrayFor5(), array(FizzBuzz::FIZZ));
    }
    protected function getExpectedFizzBuzzArrayFor15(){
        return array_merge($this->getExpectedFizzBuzzArrayFor6(), array(
            7, 8, FizzBuzz::FIZZ, FizzBuzz::BUZZ, 11, FizzBuzz::FIZZ, FizzBuzz::FIZZ, 14, FizzBuzz::FIZZBUZZ));
    }
    protected function getExpectedFizzBuzzArrayFor30(){
        return array_merge($this->getExpectedFizzBuzzArrayFor15(), array(
            16, 17, FizzBuzz::FIZZ, 19, FizzBuzz::BUZZ, FizzBuzz::FIZZ, 22, FizzBuzz::FIZZ, FizzBuzz::FIZZ, FizzBuzz::BUZZ, 26, FizzBuzz::FIZZ, 28, 29, FizzBuzz::FIZZBUZZ));
    }
    protected function getExpectedFizzBuzzArrayFor33(){
        return array_merge($this->getExpectedFizzBuzzArrayFor30(), array(FizzBuzz::FIZZ, FizzBuzz::FIZZ, FizzBuzz::FIZZ));
    }
    protected function getExpectedFizzBuzzArrayFor35(){
        return array_merge($this->getExpectedFizzBuzzArrayFor33(), array(FizzBuzz::FIZZ, FizzBuzz::FIZZBUZZ));
    }

}

?>