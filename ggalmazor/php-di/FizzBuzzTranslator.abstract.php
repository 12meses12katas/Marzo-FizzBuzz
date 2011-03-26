<?php

require_once 'FizzBuzzTranslator.interface.php';

abstract class AbstractFizzBuzzTranslator implements FizzBuzzTranslator {

  public function say($number) {
    if ($this->isFizzBuzzy($number)) {
      return "fizzbuzz";
    }
    if ($this->isBuzzy($number)) {
      return "buzz";
    }
    if ($this->isFizzy($number)) {
      return "fizz";
    }
    return (string) $number;
  }

  public function isFizzy($number) {

  }

  public function isBuzzy($number) {

  }

  public function isFizzBuzzy($number) {
    
  }

}