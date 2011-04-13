<?php
$a="fizz";
$b="buzz";
$tres=array(3,13,23,43,63,73,83,93);
$cinc=array(5,15,25,45,65,75,85,95);

for ($x=1;$x<=100;$x++){

	$sf=0;
	
	for ($y=30,$z=50;$y<=39,$z<=59;$y++,$z++){
		if ($x==$y) $sf=1;
		if ($x==$z) $sf=2;
	}

	if($x==35 or $x==53) $sf=3;
	
	for ($y=0;$y<=7;$y++){
		if ($x==$tres[$y]) $sf=1;
		if ($x==$cinc[$y]) $sf=2;
	}

	if (($x%3==0 and $x%5==0) or $sf==3 or ($x%3==0 and $sf==2) or ($sf==1 and $x%5==0))
		echo $a.$b."<br>";
	elseif (($x%3==0 and $x%5!=0) or $sf==1)
		echo $a."<br>";
	elseif (($x%3!=0 and $x%5==0) or $sf==2)
		echo $b."<br>";
	else echo $x."<br>";	
}
?>