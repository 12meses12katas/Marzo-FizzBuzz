<?php

class Count {

  protected $rules = array();

  public static function createWithSetOfRules() {
    $c = new self;
    $c->setTranslationRule("fizz", function($number) { return $number % 3 == 0; });
    $c->setTranslationRule("buzz", function($number) { return $number % 5 == 0; });
    $c->setTranslationRule("fizzbuzz", function($number) { return $number % 15 == 0; });
    return $c;
  }

  public static function createWithAlternativeSetOfRules() {
    $c = self::createWithSetOfRules();
    $c->setTranslationRule("fizz", function($number) { return ($number % 3 == 0 || strpos((string)$number, "3") !== false); });
    $c->setTranslationRule("buzz", function($number) { return ($number % 5 == 0 || strpos((string)$number, "5") !== false); });
    return $c;
  }

  public function to($number) {
    $count = "";
    $counter = 1;
    while ($number >= $counter) {
      $separator = ($counter > 1) ? " " : "";
      $token = $this->getToken($counter);
      $count .= $separator . $token;
      $counter++;
    }
    return $count;
  }
  
  protected function getToken($number) {
    $token = "{$number}";
    foreach ($this->rules as $translation => $rule) {
      if ($rule($number)) {
        $token = $translation;
      }
    }
    return $token;
  }

  public function setTranslationRule($translation, $rule) {
    $this->rules[$translation] = $rule;
  }

}