<?php

/**
 * FizzBuzz
 *
 * @author Gonzalo Ayuso <gonzalo123@gmail.com>
 * @copyright under GPL 2 licence
 */

class FizzBuzz
{
    const FIZZ = 'Fizz';
    const BUZZ = 'Buzz';
    /**
     * @param Integer $elems
     * @return Array
     */
    public function run($elems = 100)
    {
        list($fizz, $buzz) = array(self::FIZZ, self::BUZZ);
        return array_map(function ($element) use ($fizz, $buzz) {
            $out = array();
            if ($element % 3 == 0 || strpos((string) $element, '3') !== false ) {
                $out[] = $fizz;
            } 
            if ($element % 5 == 0 || strpos((string) $element, '5') !== false ) {
                $out[] = $buzz;
            }
            
            if (count($out) > 0) {
                return implode('', $out);
            } else {
                return $element;
            }
        }, range(0, $elems-1)); 
    }       
}
