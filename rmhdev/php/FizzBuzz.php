<?php

/**
 * Kata 2011-03: FizzBuzz
 *
 * Kata trying to resolve the FizzBuzz problem using TDD.
 *
 * LICENSE: MIT license
 *
 * @category   Kata
 * @author     Rober Martín H "rmhdev"
 * @license    MIT License
 * @version    0.1
 * @link       http://github.com/12meses12katas/Marzo-FizzBuzz
 */

class FizzBuzz {

    const SEPARATOR = "\n";
    const FIZZ      = "Fizz";
    const BUZZ      = "Buzz";
    const FIZZBUZZ  = "FizzBuzz";

    /**
     * Write an integer in FizzBuzz style
     *
     * @param int $number
     * @return string
     */
    function write($number) {
        
        return implode(self::SEPARATOR, array_map(array($this, "getCodeForNumber"), range(1, $number)));
    }

    /**
     * Write an integer in FizzBuzz style (Recursive)
     *
     * @param int $number
     * @return string
     */
    function writeRecursive($number){
        
        if (!$number) return "";

        $result = $this->getCodeForNumber($number--);

        return $this->writeRecursive($number) . (($result == 1) ? "" : self::SEPARATOR) . $result;
    }

    /**
     * Get the code for the number
     *
     * @param int $number
     * @return string
     */
    protected function getCodeForNumber($number){
        
        if ($this->isFizz($number) && $this->isBuzz($number)){
            return self::FIZZBUZZ;
        }
        elseif ($this->isFizz($number)){
            return self::FIZZ;
        }
        elseif ($this->isBuzz($number)){
            return self::BUZZ;
        }
        
        return $number;
    }


    protected function isFizz($number){
        return $this->isType($number, 3);
    }

    protected function isBuzz($number){
        return $this->isType($number, 5);
    }

    protected function isType($number, $mod){
        return (($number % $mod) == 0) ? true : false;
    }


    
    function write2($number){

        return implode(self::SEPARATOR, array_map(array($this, "getStrictCodeForNumber"), range(1, $number)));
    }

    protected function getStrictCodeForNumber($number){

        if ($this->isStrictFizz($number) && $this->isStrictBuzz($number)){
            return self::FIZZBUZZ;
        }
        elseif ($this->isStrictFizz($number)){
            return self::FIZZ;
        }
        elseif ($this->isStrictBuzz($number)){
            return self::BUZZ;
        }

        return $number;
    }

    protected function isStrictFizz($number){
        return $this->isStrictType($number, 3);
    }

    protected function isStrictBuzz($number){
        return $this->isStrictType($number, 5);
    }

    protected function isStrictType($number, $mod){
        return ((($number % $mod) == 0) || strstr((string)$number, (string)$mod)) ? true : false;
    }

}

?>