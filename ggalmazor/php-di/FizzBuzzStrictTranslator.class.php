<?php

require_once 'FizzBuzzTranslator.abstract.php';

class FizzBuzzStrictTranslator extends AbstractFizzBuzzTranslator {

  public function isFizzy($number) {
    return $number % 3 == 0 && strpos((string) $number, "3") !== false;
  }

  public function isBuzzy($number) {
    return $number % 5 == 0 && strpos((string) $number, "5") !== false;
  }

  public function isFizzBuzzy($number) {
    return $number % 15 == 0;
  }

}
