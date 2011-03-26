<?php

require_once 'FizzBuzzNormalTranslator.class.php';
require_once 'FizzBuzzStrictTranslator.class.php';
require_once 'FizzBuzz.class.php';

class FizzBuzzFactory {
  const MODE_NORMAL = 'normal';
  const MODE_STRICT = 'strict';

  public static function create($mode = self::MODE_NORMAL) {
    switch ($mode) {
      case self::MODE_STRICT:
        $fizzBuzzTranslator = new FizzBuzzStrictTranslator();
        break;
      case self::MODE_NORMAL:
      default:
        $fizzBuzzTranslator = new FizzBuzzNormalTranslator();
        break;
    }
    return new FizzBuzz($fizzBuzzTranslator);
  }

}