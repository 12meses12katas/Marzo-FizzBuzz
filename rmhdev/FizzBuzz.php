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

    const FIZZ     = "Fizz";
    const BUZZ     = "Buzz";
    const FIZZBUZZ = "FizzBuzz";

    /**
     * Write an integer in FizzBuzz style
     *
     * @param int $number
     * @return string
     */
    function write($number) {
        
        $result = array();
        for ($i=1; $i<= $number; $i++){
            $result[] = $this->getCodeForNumber($i);
        }

        return implode(" ", $result);
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

        return $this->writeRecursive($number) . (($result == 1) ? "" : " ") . $result;
    }

    /**
     * Get the code for the number
     *
     * @param int $number
     * @return string
     */
    protected function getCodeForNumber($number){
        
        if (($number % 15) == 0){
            return self::FIZZBUZZ;
        }
        elseif (($number % 3) == 0){
            return self::FIZZ;
        }
        elseif (($number % 5) == 0){
            return self::BUZZ;
        }
        
        return $number;
    }
}

?>