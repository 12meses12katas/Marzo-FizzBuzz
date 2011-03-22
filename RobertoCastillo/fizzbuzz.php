<?php
// Autor:	Roberto Carlos Castillo Medina
// Date:	03-March-2011
// License/
// Usage:	Open Source / for free
// Description: Este script muestra la primer parte de la Kata de Marzo FizzBuzz

class fizzbuzz{
	
const MAXIMO=100;
const MINIMO=1;
const FIZZ="Fizz <br>";
const BUZZ="Buzz <br>";
const FIZZBUZZ="FizzBuzz <br>";
private $num=0;

public function mostrar_fizzbuzz(){
    
	for ($this->num = self::MINIMO; $this->num <= self::MAXIMO; $this->num++) {
	   
    	if ($this->esFuzzBuzzy($this->num)){
	        echo self::FIZZBUZZ;
    	} else {
        	if ($this->esFuzz($this->num)){
            	echo self::FIZZ;
	        } else {
    	        if ($this->esBuzz($this->num)) {
        	        echo self::BUZZ;
            	} else {
                	echo $this->num, "<br>";
	            }
    	    }
	    }
	}
}


private function esFuzz($num){
	if($num % 3 == 0 || strchr($num, "3")){
		return true;
		}		
	}
	
private function esBuzz($num){
	if($num % 5 == 0 || strchr($num, "5")){
		return true;
		}	
	}	
	
private function esFuzzBuzzy($num){
	if(($num % 3 == 0 && $num % 5 == 0) || (strstr($num, "3") && strstr($num, "5")) || (strstr($num,"3") && ($num % 5 == 0)) || (strstr($num,"5") && ($num % 3 == 0))){
		return true;
		}	
	}
	
}
?>