<?php

class FizzBuzz {

  public $translator;

  public function __construct(FizzBuzzTranslator $translator) {
    $this->translator = $translator;
  }

  public function countTo($limit) {
    $count = "";
    $counter = 1;
    while ($counter <= $limit) {
      $count .= "{$this->translator->say($counter)} ";
      $counter++;
    }
    return trim($count);
  }

}
