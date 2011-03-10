<?php
/*********************************************************************************/
/* Desarrollado en una mañana de Domingo por Carlos López [http://www.carlop.es] */
/*********************************************************************************/

class FizzBuzz {

  const FIZZ = "<span class=\"fb\">Fizz</span><br />";
  const BUZZ = "<span class=\"fb\">Buzz</span><br />";
  const FIZZBUZZ = "<span class=\"fb\">FizzBuzz?</span><br />";
  
  public function execute() {
    for($i=1;$i<=100;$i++) {
      if($this->isDivisible($i, 3) && $this->isDivisible($i, 5)) {
        print self::FIZZBUZZ;
      } elseif($this->isDivisible($i, 3) || $this->hasNumber($i, 3)) {
        print self::FIZZ;
      } elseif($this->isDivisible($i, 5) || $this->hasNumber($i, 5)) {
        print self::BUZZ;
      } else {
        print $i . "<br />";
      }
    }
  }
  
  private function isDivisible($i, $n) {
    if ($i % $n == 0) {
      return true;
    } else {
      return false;
    }
  }
  
  private function hasNumber($i, $n) {
    $i = (string)$i;
    $n = (string)$n;
    if(strpos($i, $n) === false && $i !== $n) {
      return false;
    } else {
      return true;
    }
  }
  
}

?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>FizzBuzz!</title>
  <style type="text/css" media="all">
    body {background:#eee;color:#333;text-shadow:0px 1px 0px #fff;font-family:sans-serif;}
    .fb {font-size:1.2em;font-weight:bold;}
  </style>
</head>
<body>
<h1>FizzBuzz!</h1>
<?php
  $c = new FizzBuzz;
  $c->execute();
?>  
</body>
</html>