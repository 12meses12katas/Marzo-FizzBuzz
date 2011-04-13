<?php
include 'fizzbuzz.php';
class FizzBuzzTest extends UnitTestCase{

      function testUno(){
          $fizzbuzznumber = new FizzBuzzNumber();
          $this->assertEqual($fizzbuzznumber->say(1),1);
      }

      function testDos(){
          $fizzbuzznumber = new FizzBuzzNumber();
          $this->assertEqual($fizzbuzznumber->say(2),2);
      }

      function testTres(){
          $fizzbuzznumber = new FizzBuzzNumber();
          $this->assertEqual($fizzbuzznumber->say(3),"Fizz");
      }

}
?>
