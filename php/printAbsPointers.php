<pre>
	<?php error_reporting(E_ALL);
	ini_set('display_errors', 1);

	$executionStartTime = microtime(true);
	include_once 'functions.php';

	// params
	$rom_filepath = "mw3s.bin";
	$filesize 	  = filesize($rom_filepath);


	// read FULL file:
	$handle   = fopen($rom_filepath, "rb");
	$contents = fread($handle, $filesize);
	fclose($handle);


	$offsets_hex = '0001CC00';
	$count = 30;

	for($i=0; $i < $count; $i++){
		$start = hexdec($offsets_hex) + ($i*4);
		$longword = substr($contents, $start, 4);

		$content_hex_array = array_map('bit2hex', str_split($longword, 1) );

		echo dec2hex($start, 8) . ': ' . implode($content_hex_array, '') . '<br>';
	}


	$executionEndTime = microtime(true);
	$seconds = $executionEndTime - $executionStartTime;
	echo "<br><br><hr><br><small>This script took $seconds to execute.</small>";
	?>
	
</pre>