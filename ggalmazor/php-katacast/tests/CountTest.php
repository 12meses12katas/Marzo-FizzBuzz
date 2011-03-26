<?php

require_once '../src/Count.php';

class CountTest extends PHPUnit_Framework_TestCase {

  public function getNoRulesCountTestCases() {
    return array(
        "should count to 1" => array(1, "1"),
        "should count to 2" => array(2, "1 2"),
        "should count to 3" => array(3, "1 2 3"),
    );
  }

  /**
   * @dataProvider getNoRulesCountTestCases
   */
  public function testNoRulesTestCases($number, $expected) {
    $c = new Count();
    $this->assertEquals($expected, $c->to($number));
  }

  public function getNormalRulesCountTestCases() {
    return array(
        "should translate three to fizz" => array(3, "1 2 fizz"),
        "should translate five to buzz" => array(5, "1 2 fizz 4 buzz"),
        "should translate multiples of three to fizz" => array(6, "1 2 fizz 4 buzz fizz"),
        "should translate multiples of five to buzz" => array(10, "1 2 fizz 4 buzz fizz 7 8 fizz buzz"),
        "should translate fifteen to fizzbuzz" => array(15, "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz"),
        "should translate multiples of fifteen to fizzbuzz" => array(30, "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz 19 buzz fizz 22 23 fizz buzz 26 fizz 28 29 fizzbuzz"),
        "acceptance test" => array(100, "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz 19 buzz fizz 22 23 fizz buzz 26 fizz 28 29 fizzbuzz 31 32 fizz 34 buzz fizz 37 38 fizz buzz 41 fizz 43 44 fizzbuzz 46 47 fizz 49 buzz fizz 52 53 fizz buzz 56 fizz 58 59 fizzbuzz 61 62 fizz 64 buzz fizz 67 68 fizz buzz 71 fizz 73 74 fizzbuzz 76 77 fizz 79 buzz fizz 82 83 fizz buzz 86 fizz 88 89 fizzbuzz 91 92 fizz 94 buzz fizz 97 98 fizz buzz")
    );
  }

  /**
   * @dataProvider getNormalRulesCountTestCases
   */
  public function testNormalRulesTestCases($number, $expected) {
    $c = Count::createWithSetOfRules();
    $this->assertEquals($expected, $c->to($number));
  }

  public function getAlternativeRulesCountTestCases() {
    return array(
        "should translate multiples of three and numbers with three to fizz" => array(13, "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz fizz"),
        "should translate multiples of five and numbers with five to buzz" => array(52, "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz fizz 14 fizzbuzz 16 17 fizz 19 buzz fizz 22 fizz fizz buzz 26 fizz 28 29 fizzbuzz fizz fizz fizz fizz buzz fizz fizz fizz fizz buzz 41 fizz fizz 44 fizzbuzz 46 47 fizz 49 buzz buzz buzz"),
        "acceptance test" => array(100, "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz fizz 14 fizzbuzz 16 17 fizz 19 buzz fizz 22 fizz fizz buzz 26 fizz 28 29 fizzbuzz fizz fizz fizz fizz buzz fizz fizz fizz fizz buzz 41 fizz fizz 44 fizzbuzz 46 47 fizz 49 buzz buzz buzz buzz buzz buzz buzz buzz buzz buzz fizzbuzz 61 62 fizz 64 buzz fizz 67 68 fizz buzz 71 fizz fizz 74 fizzbuzz 76 77 fizz 79 buzz fizz 82 fizz fizz buzz 86 fizz 88 89 fizzbuzz 91 92 fizz 94 buzz fizz 97 98 fizz buzz")
    );
  }

  /**
   * @dataProvider getAlternativeRulesCountTestCases
   */
  public function testAlternativeRulesTestCases($number, $expected) {
    $c = Count::createWithAlternativeSetOfRules();
    $this->assertEquals($expected, $c->to($number));
  }

}