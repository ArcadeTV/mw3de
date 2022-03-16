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


	$offsets_hex = '0001DD94';
	$count = 131;
	$chaincount = 3;

	$types = array();

	for($i=0; $i < $count; $i++){
		$start = hexdec($offsets_hex) + ($i*$chaincount);
		$bytes_to_grab = substr($contents, $start, $chaincount);

		$content_hex_array = array_map('bit2hex', str_split($bytes_to_grab, 1) );
		if(!in_array($content_hex_array[0], $types)){
			$types[] = $content_hex_array[0];
		}
		echo dec2hex($start, 8) . ': ' . implode($content_hex_array, '') . '<br>';
	}

	var_dump($types);

	$executionEndTime = microtime(true);
	$seconds = $executionEndTime - $executionStartTime;
	echo "<br><br><hr><br><small>This script took $seconds to execute.</small>";
	?>
	
</pre>