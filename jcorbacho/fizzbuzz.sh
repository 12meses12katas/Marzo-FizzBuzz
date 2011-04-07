#!/bin/bash

## -----------------------------------------------------------
## Author: Jose Corbacho Gil (jose@corbacho.net)
## Date: 2011/03/05
## Version: 1.0
## Marzo-FizzBuzz
## -----------------------------------------------------------

## isDivisible
isDivisible ()
{
   result=0
   number=$1
   modul=$2
   let MODULUS=$number%$modul
   [ $MODULUS -eq 0 ] && result=1  
   return $result

}

## hasNumber
hasNumber()
{
   result=0
   number=$1
   numberToCheck=$2
   echo $number | grep $numberToCheck > /dev/null 2>&1
   [ $? -eq 0 ] && result=1
   return $result

}



## Main code
## -----------------------------------------------

for i in `seq 1 100`;do
    isDivisible $i 3
    fizz=$?

    if [ $fizz -eq 0 ]; then
       hasNumber $i 3
       fizz=$?
    fi

    isDivisible $i 5
    buzz=$?

    if [ $buzz -eq 0 ]; then
       hasNumber $i 5
       buzz=$?
    fi

    echo -n "$i: "


    if [[ $fizz -eq 1 && $buzz -eq 1 ]]; then
       echo "FizzBuzz"
    elif [ $fizz -eq 1 ]; then
       echo "Fizz"
    elif [ $buzz -eq 1 ]; then
       echo "Buzz"
    else 
       echo $i
    fi
done

