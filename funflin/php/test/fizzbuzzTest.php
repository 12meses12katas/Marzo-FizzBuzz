<?php
require_once '../fizzbuzz.php';

class fizzbuzzTest extends PHPUnit_Framework_TestCase {

    public function getGenerateDataTestCase()
    {
        $separador = ' ';
        $array1 = '1';
        $array2 = $array1.$separador.'2';
        $array3 = $array2.$separador.'Fizz';        
        $array5 = $array3.$separador.'4'.$separador.'Buzz';
        $array15 = $array5.$separador.'Fizz'.$separador.'7'.$separador.'8';
        $array15 .= $separador.'Fizz'.$separador.'Buzz'.$separador.'11';
        $array15 .= $separador.'Fizz'.$separador.'13'.$separador.'14';
        $array15 .= $separador.'FizzBuzz';
        
        $array30 = $array15.$separador.'16'.$separador.'17'.$separador.'Fizz';
        $array30 .= $separador.'19'.$separador.'Buzz'.$separador.'Fizz';
        $array30 .= $separador.'22'.$separador.'23'.$separador.'Fizz';
        $array30 .= $separador.'Buzz'.$separador.'26'.$separador.'Fizz';
        $array30 .= $separador.'28'.$separador.'29'.$separador.'FizzBuzz';
        
        return array(
            'contamos hasta 1' =>array(1,$array1),
            'contamos hasta 2' =>array(2,$array2),
            'contamos hasta 3' =>array(3,$array3),
            'contamos hasta 5' =>array(5,$array5),
            'contamos hasta 15' =>array(15,$array15),
            'contamos hasta 30' =>array(30,$array30),

        );
    }

    /**
     * @dataProvider getGenerateDataTestCase
     */
    public function testWithData($number,$expected)
    {
        $f = new fizzbuzz();
        $this->assertEquals($expected, $f->getNumbers($number));        
    }
}
?>
