<?php

//require_once '/Applications/MAMP/bin/php5.3/lib/php/share/pear/PHPUnit/Framework.php';

require_once '../FizzBuzz.php';

class FizzBuzzTest extends PHPUnit_Framework_TestCase {

    /**
     *
     * @var FizzBuzz
     */
    public $FizzBuzz;

    public function setUp() {
        $this->FizzBuzz = new FizzBuzz;
    }

    public function tearDown() {

    }

    public function testFramework() {
        $this->assertTrue(true);
    }

    public function testFromIsLowerThanTo() {
        $this->assertTrue($this->FizzBuzz->check_range());
    }

    public function testCanSetFrom() {
        $this->FizzBuzz->set_from(100);
        $this->assertEquals(100, $this->FizzBuzz->from);
    }

    public function testCanSetTo() {
        $this->FizzBuzz->set_to(1);
        $this->assertEquals(1, $this->FizzBuzz->to);
    }

    public function testFromIsGreaterThanTo() {
        $this->FizzBuzz->set_from(100);
        $this->FizzBuzz->set_to(1);
        $this->assertFalse($this->FizzBuzz->check_range());
    }

    public function testIsDivisibleBy3() {
        $result = $this->FizzBuzz->is_divisible(3, 3);
        $this->assertTrue($result);
    }

    public function testIsNotDivisibleBy3() {
        $result = $this->FizzBuzz->is_divisible(4, 3);
        $this->assertFalse($result);
    }

    public function testIsDivisibleBy5() {
        $result = $this->FizzBuzz->is_divisible(5, 5);
        $this->assertTrue($result);
    }

    public function testIsNotDivisibleBy5() {
        $result = $this->FizzBuzz->is_divisible(6, 5);
        $this->assertFalse($result);
    }
    
    public function testFizzBuzzRun() {
        $this->FizzBuzz->run();
    }

}
