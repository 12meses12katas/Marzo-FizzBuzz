<?php
require_once '../FizzBuzz.php';

class FizzBuzzTest extends PHPUnit_Framework_TestCase
{
    function dataProvider() 
    {
        $fizzBuzz = new FizzBuzz(new FizzBuzzElement());
        $arr = $fizzBuzz->run();
        
        $testCases = array(
            'T0'  => array(count($arr), 100),
            'T2'  => array($arr[1],  1),
            'T3'  => array($arr[3],  'Fizz'),
            'T4'  => array($arr[4],  4),
            'T5'  => array($arr[5],  'Buzz'),
            'T6'  => array($arr[6],  'Fizz'),
            'T20' => array($arr[20], 'Buzz'),
            'T13' => array($arr[13], 'Fizz'),
            'T15' => array($arr[15], 'FizzBuzz'),
            'T53' => array($arr[53], 'FizzBuzz'),
        );
        return $testCases;
    }
    
    /** @dataProvider dataProvider */
    function testSimple($actual, $expected) 
    {
        $this->assertEquals($actual, $expected);
    }
}
