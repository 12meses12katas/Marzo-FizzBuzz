<?php
require_once '../FizzBuzzElement.php';

class FizzBuzzElementTest extends PHPUnit_Framework_TestCase
{
    function dataProvider() 
    {
        $testCases = array(
            'T1'  => array(1,  1),
            'T2'  => array(2,  2),
            'T3'  => array(3,  'Fizz'),
            'T4'  => array(4,  4),
            'T5'  => array(5,  'Buzz'),
            'T6'  => array(6,  'Fizz'),
            'T20' => array(20, 'Buzz'),
            'T13' => array(13, 'Fizz'),
            'T15' => array(15, 'FizzBuzz'),
            'T53' => array(53, 'FizzBuzz'),
        );
        
        return $testCases;
    }
    /** @dataProvider dataProvider */
    function testSimple($actual, $expected) 
    {
        $fizzBuzzElement = new FizzBuzzElement();
        $this->assertEquals($fizzBuzzElement->render($actual), $expected);
    }
}
