<?php
// Autor:	Roberto Carlos Castillo Medina
// Date:	03-March-2011
// License/
// Usage:	Open Source / for free
// Description: Este script muestra la primer parte de la Kata de Marzo FizzBuzz

define("MAXIMO", 100);
define("MINIMO", 1);


for ($num = MINIMO; $num <= MAXIMO; $num++) {
    if ($num % 3 == 0 && $num % 5 == 0) {
        echo "FIZZBUZZ <br>";
    } else {
        if ($num % 3 == 0) {
            echo "FIZZ <br>";
        } else {
            if ($num % 5 == 0) {
                echo "BUZZ <br>";
            } else {
                echo $num, "<br>";
            }
        }
    }
}
?>