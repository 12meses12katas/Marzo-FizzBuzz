<?php
class FizzBuzzNumber{
	function say($turn){
		if(isFizz($turn) && isBuzz($turn)){
			return "FizzBuzz";
		}
		else if(isBuzz($turn)){
			return "Buzz";
		}
		else if(isFizz($turn)){
			return "Fizz";
		}
		else{
			return $turn;
		}
	}
}

function isFizz($n){
	return ($n % 3 == 0) || contieneTres($n);
}
function isBuzz($n){
	return ($n % 5 == 0)|| contieneCinco($n);
}

function contieneTres($n){
	return strchr((string) $n, "3");
}
function contieneCinco($n){
	return strchr((string) $n, "5");
}
?>