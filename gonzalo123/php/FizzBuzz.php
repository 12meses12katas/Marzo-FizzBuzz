<?php
require_once 'FizzBuzzElement.php';

/**
 * FizzBuzz
 * Compose the serie
 *
 * @author Gonzalo Ayuso <gonzalo123@gmail.com>
 * @copyright under GPL 2 licence
 */

class FizzBuzz
{
    /** @var FizzBuzzElement */
    private $fizzBuzzElement;
    
    /**
     * @param FizzBuzzElement $fizzBuzzElement
     */
    public function __construct(FizzBuzzElement $fizzBuzzElement)
    {
        $this->fizzBuzzElement = $fizzBuzzElement;
    }
    
    /**
     * Main function. Return the serie
     *
     * @param Integer $elems
     * @return Array
     */
    public function run($elems = 100)
    {
        $out = array();
        foreach (range(1, $elems) as $elem) {
            $out[$elem] =  $this->fizzBuzzElement->render($elem);
        }
        return $out;
    }
}
