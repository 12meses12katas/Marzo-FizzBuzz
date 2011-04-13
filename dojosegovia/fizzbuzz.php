<?php

class FizzBuzzNumber{
    function say($turn){
        if(($turn % 15) == 0){
             return "FizzBuzz";
        }
        if(($turn % 3) == 0){
             return "Fizz";
        }
        if(($turn % 5) == 0){
             return "Buzz";
        }
        else{
            return $turn;
        }
    }
}
?>
