<?php
require_once '../fizzbuzz.php';

/**
 *  Test class for fizzbuzz class
 */
class fizzbuzzTest extends PHPUnit_Framework_TestCase
{
    /**
     * Generator of data for test
     * 
     * @return array with arrays of test      
     */
    public function getGenerateDataTestCase()
    {
        $separador = ' ';
        $arrayOne = '1';
        $arrraTwo = $arrayOne.$separador.'2';
        $arrayThree = $arrraTwo.$separador.'Fizz';
        $arrayFive = $arrayThree.$separador.'4'.$separador.'Buzz';

        $arrayFifteen = $arrayFive.$separador.'Fizz'.$separador.'7'.$separador;
        $arrayFifteen .= '8'.$separador.'Fizz'.$separador.'Buzz'.$separador;
        $arrayFifteen .= '11'.$separador.'Fizz'.$separador.'Fizz'.$separador;
        $arrayFifteen .= '14'.$separador.'FizzBuzz';

        $arrayThirty = $arrayFifteen.$separador.'16'.$separador.'17';
        $arrayThirty .= $separador.'Fizz'.$separador.'19'.$separador.'Buzz';
        $arrayThirty .= $separador.'Fizz'.$separador.'22'.$separador.'Fizz';
        $arrayThirty .= $separador.'Fizz'.$separador.'Buzz'.$separador.'26';
        $arrayThirty .= $separador.'Fizz'.$separador.'28'.$separador.'29';
        $arrayThirty .= $separador.'FizzBuzz';

        $arraySixty = $arrayThirty.$separador.'Fizz'.$separador.'Fizz';
        $arraySixty .= $separador.'Fizz'.$separador.'Fizz'.$separador;
        $arraySixty .= 'FizzBuzz'.$separador.'Fizz'.$separador.'Fizz';
        $arraySixty .= $separador.'Fizz'.$separador.'Fizz'.$separador.'Buzz';
        $arraySixty .= $separador.'41'.$separador.'Fizz'.$separador.'Fizz';
        $arraySixty .= $separador.'44'.$separador.'FizzBuzz'.$separador.'46';
        $arraySixty .= $separador.'47'.$separador.'Fizz'.$separador.'49';
        $arraySixty .= $separador.'Buzz'.$separador.'FizzBuzz'.$separador;
        $arraySixty .= 'Buzz'.$separador.'FizzBuzz'.$separador.'FizzBuzz';
        $arraySixty .= $separador.'Buzz'.$separador.'Buzz'.$separador;
        $arraySixty .= 'FizzBuzz'.$separador.'Buzz'.$separador.'Buzz';
        $arraySixty .= $separador.'FizzBuzz';

        return array(
            'contamos hasta 1' =>array(1,$arrayOne),
            'contamos hasta 2' =>array(2,$arrraTwo),
            'contamos hasta 3' =>array(3,$arrayThree),
            'contamos hasta 5' =>array(5,$arrayFive),
            'contamos hasta 15' =>array(15,$arrayFifteen),
            'contamos hasta 30' =>array(30,$arrayThirty),
            'contamos hasta 50' =>array(60,$arraySixty),

        );
    }

    /**
     * test fuction 
     *      
     * @param int   $number   numbers of values to generate
     * @param array $expected array of values expected
     *
     * @return null
     * 
     * @dataProvider getGenerateDataTestCase
     * 
     */
    public function testWithData($number,$expected)
    {
        $f = new fizzbuzz();
        $this->assertEquals($expected, $f->getNumbers($number));
    }
}
