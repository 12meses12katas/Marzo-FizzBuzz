<?php
/**
 * FizzBuzzElement
 * simgle element render
 *
 * @author Gonzalo Ayuso <gonzalo123@gmail.com>
 * @copyright under GPL 2 licence
 */
class FizzBuzzElement
{
    const FIZZ = 'Fizz';
    const BUZZ = 'Buzz';
    public function render($element)
    {
        $out = array();
        if ($element % 3 == 0 || strpos((string) $element, '3') !== false ) {
            $out[] = self::FIZZ;
        }
            
        if ($element % 5 == 0 || strpos((string) $element, '5') !== false ) {
            $out[] = self::BUZZ;
        }
        
        if (count($out) > 0) {
            return implode('', $out);
        } else {
            return $element;
        }
    }
}
