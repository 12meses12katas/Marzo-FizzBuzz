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

class FizzBuzzTest extends PHPUnit_Framework_TestCase {

    function testProvider() {

        $f  = FizzBuzz::FIZZ;
        $b  = FizzBuzz::BUZZ;
        $fb = FizzBuzz::FIZZBUZZ;

        $testCases = array();
        $testCases['T0001'] = array(1   , "1");
        $testCases['T0002'] = array(2   , $testCases['T0001'][1] . " 2");
        $testCases['T0003'] = array(3   , $testCases['T0002'][1] . " $f");
        $testCases['T0004'] = array(4   , $testCases['T0003'][1] . " 4");
        $testCases['T0005'] = array(5   , $testCases['T0004'][1] . " $b");
        $testCases['T0006'] = array(6   , $testCases['T0005'][1] . " $f");
        $testCases['T0015'] = array(15  , $testCases['T0006'][1] . " 7 8 $f $b 11 $f 13 14 $fb");
        $testCases['T0030'] = array(30  , $testCases['T0015'][1] . " 16 17 $f 19 $b $f 22 23 $f $b 26 $f 28 29 $fb");

        return $testCases;
    }

    /**
     * @dataProvider testProvider
     */
    function test_fizz_buzz($actual, $expected) {

        $fb = new FizzBuzz();

        $this->assertEquals($fb->write($actual), $expected);
    }

    /**
     * @dataProvider testProvider
     */
    function test_fizz_buzz_recursive($actual, $expected) {

        $fb = new FizzBuzz();

        $this->assertEquals($fb->write($actual), $expected);
    }

}

?>