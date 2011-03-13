<?php 

define ("MAX", 100);
define ("MIN", 1);
define ("FIZZ", 3);
define ("BUZZ", 5);

class Fizzbuzz {
	
	private function isFizz($num) {
		if ($num % FIZZ == 0)
			return true;
		return false;
	}
	
	private function isBuzz($num) {
		if ($num % BUZZ == 0)
			return true;
		return false;
	}
	
	public function getFizzBuzz(){
		$nums = null;
		for ($i = MIN; $i <= MAX; $i++){
			$num = "";
			$fb["b"] = false;
			$fb["f"] = false;
			if ($fb["f"] = $this->isFizz($i))
				$num .= "FIZZ";
			if ($fb["b"] = $this->isBuzz($i))
				$num .= "BUZZ";
			if (!$fb["b"] && !$fb["f"])
				$num = $i;
			$nums[] = $num;
		}
		return $nums;
	}
}

?>
