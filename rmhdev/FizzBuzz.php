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
    function write($number)
    {
        $result = array();
        for ($i=1; $i<= $number; $i++){
            if (($i % 15) == 0){
                $result[] = self::FIZZBUZZ;
            }
            elseif (($i % 3) == 0){
                $result[] = self::FIZZ;
            }
            elseif (($i % 5) == 0){
                $result[] = self::BUZZ;
            }
            else {
                $result[] = $i;
            }
        }

        return implode(" ", $result);
    }

    function writeRecursive($number){
        
        if (!$number) return "";

        $result = "";
        if (($i % 15) == 0){
            $result = self::FIZZBUZZ;
        }
        elseif (($i % 3) == 0){
            $result = self::FIZZ;
        }
        elseif (($i % 5) == 0){
            $result = self::BUZZ;
        }
        else {
            $result = $i;
        }

        return writeRecursive($number--) . (($result == 1) ? "" : " ") . $result;
    }
}

?>