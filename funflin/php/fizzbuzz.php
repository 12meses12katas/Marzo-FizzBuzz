<?php
/**
 * Class for generate numbers and change some numbers to fizz, buzz or fizzbuzz
 */
class fizzbuzz
{

    const FIZZ = 'Fizz';
    const BUZZ = 'Buzz';
    const FIZZNUM = '3';
    const BUZZNUM = '5';
    const SEPARADOR = ' ';

/**
 * Generate secuence of numbers
 * 
 * @param int $count last number of secuence
 * 
 * @return string of numbers and predefined words
 */
    public function getNumbers($count)
    {
        $salida = '';
        $i = 1;
        while ($i <= $count) {
            $i == 1 ? $separador = '' : $separador = self::SEPARADOR;
            $salida .= $separador . $this->generateToken($i);
            $i++;
        }
        return $salida;
    }

/**
 * Generate token 
 * 
 * @param int $number number to check
 * 
 * @return string value generate 
 */
    private function generateToken($number)
    {
        $token = '';
        if ($this->isFizz($number)) {
            $token .= self::FIZZ;
        }
        if ($this->isBuzz($number)) {
            $token .= self::BUZZ;
        }

        if (empty($token)) {
            $token = $number;
        }
        return $token;
    }
/**
 * Check if number is fizz
 * 
 * @param int $number to check
 * 
 * @return boolean  
 */
    private function isFizz($number)
    {
        return $this->isDivisibleOrIsPart($number, self::FIZZNUM);
    }
/**
 * Check if number is buzz
 * 
 * @param int $number to check
 * 
 * @return boolean
 */
    private function isBuzz($number)
    {
        return $this->isDivisibleOrIsPart($number, self::BUZZNUM);
    }
/**
 * Check if $number is divider or if $objetive is part of $number
 *  
 * @param int $number   to test
 * @param int $objetive divider and number to find
 * 
 * @return type 
 */
    private function isDivisibleOrIsPart($number,$objetive)
    {
        return ($number % $objetive == 0)||(strpos($number, $objetive)!==false);
    }
}
