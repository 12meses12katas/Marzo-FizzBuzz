<?php
$a="fizz";
$b="buzz";

for ($x=1;$x<=100;$x++){

	if ($x%3!=0 and $x%5!=0)
		echo $x."<br>";
	elseif ($x%3==0 and $x%5!=0)
		echo $a."<br>";
	elseif ($x%3!=0 and $x%5==0)
		echo $b."<br>";
	else
		echo $a.$b."<br>";
}
?>