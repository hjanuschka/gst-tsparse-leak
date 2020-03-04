<?php



$t = fsockopen("localhost", 4011);




while( true )  {
	$fp1 = fopen("placeholder.ts", "rb");
		while($r = fread($fp1, 4096)) {
			fwrite($t, $r);
			fflush($t);
		}

		fclose($fp1);
}


exit;
