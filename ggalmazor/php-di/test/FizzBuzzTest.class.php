<?php

require_once '../FizzBuzzFactory.class.php';

class FizzBuzzTest extends PHPUnit_Framework_TestCase {

  public function getNormalCountTestCases() {
    return array(
        '1 counts 1' => array(1, "1"),
        '2 counts 1 2' => array(2, "1 2"),
        '3 counts 1 2 fizz' => array(3, "1 2 fizz"),
        '100 counts it' => array(100, "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz 19 buzz fizz 22 23 fizz buzz 26 fizz 28 29 fizzbuzz 31 32 fizz 34 buzz fizz 37 38 fizz buzz 41 fizz 43 44 fizzbuzz 46 47 fizz 49 buzz fizz 52 53 fizz buzz 56 fizz 58 59 fizzbuzz 61 62 fizz 64 buzz fizz 67 68 fizz buzz 71 fizz 73 74 fizzbuzz 76 77 fizz 79 buzz fizz 82 83 fizz buzz 86 fizz 88 89 fizzbuzz 91 92 fizz 94 buzz fizz 97 98 fizz buzz"),
    );
  }

  /**
   * @dataProvider getNormalCountTestCases
   */
  public function testNormalCountCases($limit, $expected) {
    $fizzBuzz = FizzBuzzFactory::create();
    $this->assertEquals($expected, $fizzBuzz->countTo($limit));
  }

  public function getStrictCountTestCases() {
    return array(
        '1 counts 1' => array(1, "1"),
        '2 counts 1 2' => array(2, "1 2"),
        '3 counts 1 2 fizz' => array(3, "1 2 fizz"),
        '100 counts it' => array(100, "1 2 fizz 4 buzz 6 7 8 9 10 11 12 13 14 fizzbuzz 16 17 18 19 20 21 22 23 24 buzz 26 27 28 29 fizzbuzz 31 32 fizz 34 buzz fizz 37 38 fizz 40 41 42 43 44 fizzbuzz 46 47 48 49 buzz 51 52 53 54 buzz 56 57 58 59 fizzbuzz 61 62 fizz 64 buzz 66 67 68 69 70 71 72 73 74 fizzbuzz 76 77 78 79 80 81 82 83 84 buzz 86 87 88 89 fizzbuzz 91 92 fizz 94 buzz 96 97 98 99 100"),
    );
  }

  /**
   * @dataProvider getStrictCountTestCases
   */
  public function testStrictCountCases($limit, $expected) {
    $fizzBuzz = FizzBuzzFactory::create(FizzBuzzFactory::MODE_STRICT);
    $this->assertEquals($expected, $fizzBuzz->countTo($limit));
  }

}

