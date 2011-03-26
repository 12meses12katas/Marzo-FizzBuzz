<?php

interface FizzBuzzTranslator {

  public function say($number);

  public function isFizzy($number);

  public function isBuzzy($number);

  public function isFizzBuzzy($number);
}