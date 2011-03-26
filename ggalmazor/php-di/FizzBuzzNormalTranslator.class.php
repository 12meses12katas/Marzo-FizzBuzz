<?php

require_once 'FizzBuzzTranslator.abstract.php';

class FizzBuzzNormalTranslator extends AbstractFizzBuzzTranslator {

  public function isFizzy($number) {
    return $number % 3 == 0;
  }

  public function isBuzzy($number) {
    return $number % 5 == 0;
  }

  public function isFizzBuzzy($number) {
    return $number % 15 == 0;
  }

}
