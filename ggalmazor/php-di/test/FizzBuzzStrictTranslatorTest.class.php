<?php

require_once '../FizzBuzzStrictTranslator.class.php';

class FizzBuzzStrictTranslatorTest extends PHPUnit_Framework_TestCase {

  public $fizzBuzzTranslator;

  public function setUp() {
    $this->fizzBuzzTranslator = new FizzBuzzStrictTranslator();
  }

  public function getSayTestCases() {
    return array(
        '1 says 1' => array(1, "1"),
        '2 says 2' => array(2, "2"),
        '3 says fizz' => array(3, "fizz"),
        '6 says 6' => array(6, 6),
        '33 says fizz' => array(33, "fizz"),
        '5 says buzz' => array(5, "buzz"),
        '10 says 10' => array(10, 10),
        '25 says buzz' => array(25, "buzz"),
        '15 says fizzbuzz' => array(15, "fizzbuzz"),
        '30 says fizzbuzz' => array(30, "fizzbuzz"),
        '45 says fizzbuzz' => array(45, "fizzbuzz"),
    );
  }

  /**
   * @dataProvider getSayTestCases
   */
  public function testSayCases($number, $expected) {
    $this->assertEquals($expected, $this->fizzBuzzTranslator->say($number));
  }

}

