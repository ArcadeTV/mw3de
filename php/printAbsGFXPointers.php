<pre><?php error_reporting(E_ALL);
	ini_set('display_errors', 1);

	$executionStartTime = microtime(true);
	include_once 'functions.php';

	// params



	//JP:
	/*
	$rom_filepath = "mw3j.bin";
	$offset_hex 	 = '0003F000';
	$offset_hex_end = '0003FBBF';
	*/
	// US-PAL
	$offset_hex 	 = '00041000';
	$offset_hex_end = '00041B3F';

	$rom_filepath = "mw3s.bin";
	$filesize 	  = filesize($rom_filepath);

	// read FULL file:
	$handle   = fopen($rom_filepath, "rb");
	$contents = fread($handle, $filesize);
	fclose($handle);

	$count = (hexdec($offset_hex_end) - hexdec($offset_hex)) / 4;

	for($i=0; $i < $count; $i++){
		$start = hexdec($offset_hex) + ($i*4);
		$longword = substr($contents, $start, 4);

		$content_hex_array = array_map('bit2hex', str_split($longword, 1) );
		$content_hex_array[0] = '[Type ' . $content_hex_array[0] . '] $';
		echo (($i+1) < 10 ? '0' . strval($i+1) : $i+1) . ' - ' . dec2hex($start, 8) . ': ' . implode($content_hex_array, '') . '<br>';
	}


	$executionEndTime = microtime(true);
	$seconds = $executionEndTime - $executionStartTime;
	echo "<br><br><hr><br><small>This script took $seconds to execute.</small>";
	?>
	
</pre>