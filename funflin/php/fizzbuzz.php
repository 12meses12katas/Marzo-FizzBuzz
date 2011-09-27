<?php

class fizzbuzz {

    const FIZZ = 'Fizz';
    const BUZZ = 'Buzz';
    const SEPARADOR = ' ';
    function getNumbers($count) {
        $salida = '';
        $i = 1;
        while ($i <= $count) {
            $i == 1 ? $separador = '' : $separador = self::SEPARADOR;
            $salida .= $separador . $this->generateToken($i);
            $i++;
        }
        return $salida;
    }

    private function generateToken($number) {
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
    
    private function isFizz($number)
    {
        return $number % 3 == 0;
    }
    
    private function isBuzz($number)
    {
        return $number % 5 == 0;
    }
}

?>
