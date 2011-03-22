<?php

/**
 * Description of Marzo-FizzBuzz
 *
 * @author Fergus
 */
class KataFizzBuzz
{
      const MAX = 100;
      const BUZZ = "Buzz";
      const FIZZ = "Fizz";
      const TRES = 3;
      const CINCO = 5;

      /**
       * Devuelve el número que se le pasa
       * a no ser que sea divicible por 3 o por 5,
       * en estos casos devolverá "Fizz" y "Buzz", respectivamente.
       * https://github.com/12meses12katas/Marzo-FizzBuzz
       * @param <int> $numero
       * @return <type>
       */
      public function fizzBuzz($numero)
      {
            if($numero%self::TRES==0){
                if($numero%self::CINCO==0){
                    return self::FIZZ . self::BUZZ;
                }else{
                    return self::FIZZ;
                }
            }elseif($numero%self::CINCO==0){
                return self::BUZZ;
            }else{
                return $numero;
            }
        }

        /**
       * Devuelve el número que se le pasa a no ser que sea divicible por 3
       * (o contenga un 3) o por 5 (o contenga un 5),
       * en estos casos devolverá "Fizz" y "Buzz", respectivamente.
       * https://github.com/12meses12katas/Marzo-FizzBuzz
         * @param <int> $numero
         * @return <type>
         */
    public function fizzBuzz2($numero)
      {
            if($numero%self::TRES==0 ||
                    (strrpos(strval($numero),strval(self::TRES))!==false)){
                if($numero%self::CINCO==0 ||
                        (strrpos(strval($numero),strval(self::CINCO))!==false)){
                    return self::FIZZ . self::BUZZ;
                }else{
                    return self::FIZZ;
                }
            }elseif($numero%self::CINCO==0 ||
                    (strrpos(strval($numero),strval(self::CINCO))!==false)){
                return self::BUZZ;
            }else{
                return $numero;
            }
        }

    public function recorrerNumeros()
      {
        for ($i = 1; $i <= self::MAX; $i++) {
            echo $this->fizzBuzz2($i);
        }
      }

}
?>
