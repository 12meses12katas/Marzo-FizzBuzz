<?php
include 'fizzbuzz.php';
class FizzBuzzTest extends UnitTestCase{
      var $fizzbuzznumber;
      function setUp(){
          $this->$fizzbuzznumber = new FizzBuzzNumber();
      }
      function testUno(){
          $this->assertEqual($fizzbuzznumber->say(1),1);
      }
      function testDos(){
          $this->assertEqual($fizzbuzznumber->say(2),2);
      }
      function testTres(){
          $this->assertEqual($fizzbuzznumber->say(3),"Fizz");
      }
      function testMultiplosTresMenorQuince(){
          for($i=6;$i<15;$i+=3){
                 $this->assertEqual($this->fizzbuzznumber->say($i),"Fizz");
          }
      }
      function testCinco(){
          $this->assertEqual($fizzbuzznumber->say(5),"Buzz");
      }
      function testMultiplosCincoMenorQuince(){
          $this->assertEqual($this->fizzbuzznumber->say(10),"Buzz");
      }
      function testQuince(){
          $this->assertEqual($this->fizzbuzznumber->say(15),"FizzBuzz");
      }
}
?>
