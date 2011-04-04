<?php
include 'fizzbuzz.php';
class FizzBuzzTest extends UnitTestCase{
	var $fizzbuzznumber;
	function setUp(){
		$this->fizzbuzznumber = new FizzBuzzNumber();
	}
	function testUno(){
		$this->assertEqual($this->fizzbuzznumber->say(1),1);
	}
	function testDos(){
		$this->assertEqual($this->fizzbuzznumber->say(2),2);
	}
	function testTres(){
		$this->assertEqual($this->fizzbuzznumber->say(3),"Fizz");
	}
	function testMultiplosTresMenorQuince(){
		for($i=6;$i<15;$i+=3){
			$this->assertEqual($this->fizzbuzznumber->say($i),"Fizz");
		}
	}
	function testCinco(){
		$this->assertEqual($this->fizzbuzznumber->say(5),"Buzz");
	}
	function testMultiplosCincoMenorQuince(){
		$this->assertEqual($this->fizzbuzznumber->say(10),"Buzz");
	}
	function testQuince(){
		$this->assertEqual($this->fizzbuzznumber->say(15),"FizzBuzz");
	}
	function testNoMultiplosCincoOTres(){
		for($i=1;$i<=100;$i++){
			if( !isFizz($i) && !isBuzz($i)) $this->assertEqual($this->fizzbuzznumber->say($i),$i);
		}
	}

	function testTreintaUno(){
		$this->assertEqual($this->fizzbuzznumber->say(31),"Fizz");
	}
	function testContieneTres(){
		$this->assertTrue(contieneTres(31));
	}
	function testNoContieneTres(){
		$this->assertFalse(contieneTres(51));
	}
	function testTreintaCinco(){
		$this->assertEqual($this->fizzbuzznumber->say(35),"FizzBuzz");
	}
	function testCincuentaUno(){
		$this->assertEqual($this->fizzbuzznumber->say(51),"FizzBuzz");
	}
	function testCincuentaDos(){
		$this->assertEqual($this->fizzbuzznumber->say(52),"Buzz");
	}


}
?>