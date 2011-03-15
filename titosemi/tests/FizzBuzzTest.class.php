<?php

require_once dirname(__FILE__) .  '/../FizzBuzz.class.php';

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

    public function test_Framework() {
        $this->assertTrue(true);
    }

    public function test_can_set_from() {
        $this->FizzBuzz->set_from(100);
        $this->assertEquals(100, $this->FizzBuzz->from);
    }

    public function test_can_set_to() {
        $this->FizzBuzz->set_to(1);
        $this->assertEquals(1, $this->FizzBuzz->to);
    }

    public function test_from_is_lower_than_to() {
        $this->assertTrue($this->FizzBuzz->check_range());
    }

    public function test_from_can_not_be_greater_than_to() {
        $this->FizzBuzz->set_from(100);
        $this->FizzBuzz->set_to(1);
        $this->assertFalse($this->FizzBuzz->check_range());
    }

    public function test_from_can_be_equals_as_to() {
        $this->FizzBuzz->set_from(1);
        $this->FizzBuzz->set_to(1);
        $this->assertTrue($this->FizzBuzz->check_range());
    }

    public function test_is_divisible_by_3() {
        $this->assertTrue($this->FizzBuzz->is_divisible(3, 3));
    }

    public function test_is_not_divisible_by_3() {
        $this->assertFalse($this->FizzBuzz->is_divisible(4, 3));
    }

    public function test_is_divisible_by_5() {
        $this->assertTrue($this->FizzBuzz->is_divisible(5, 5));
    }

    public function test_is_not_divisible_by_5() {
        $this->assertFalse($this->FizzBuzz->is_divisible(6, 5));
    }

    public function test_number_does_contain_three() {
        $this->assertTrue($this->FizzBuzz->contain_number(13, 3));
    }

    public function test_number_does_not_contain_three() {
        $this->assertFalse($this->FizzBuzz->contain_number(2, 3));
    }

    public function test_number_does_contain_five() {
        $this->assertTrue($this->FizzBuzz->contain_number(15, 5));
    }

    public function test_number_does_not_contain_five() {
        $this->assertFalse($this->FizzBuzz->contain_number(1, 5));
    }

    /**
     * @dataProvider FizzBuzz_data_provider
     */
    public function test_FizzBuzz_run($from, $to, $expected) {
        $this->FizzBuzz->set_from($from);
        $this->FizzBuzz->set_to($to);
        $this->assertEquals($expected, $this->FizzBuzz->run());
    }

    public function FizzBuzz_data_provider() {
        return array(
            '1' => array(1, 1, array(1 => 1)),
            '1-3' => array(1, 3, array(
                    1   => 1,
                    2   => 2,
                    3   => 'Fizz'
                )),
            '3-13' => array(3, 13, array(
                    3   => 'Fizz',
                    4   => 4,
                    5   => 'Buzz',
                    6   => 'Fizz',
                    7   => 7,
                    8   => 8,
                    9   => 'Fizz',
                    10  => 'Buzz',
                    11  => 11,
                    12  => 'Fizz',
                    13  => 'Fizz'
                )),
        );
    }

}
