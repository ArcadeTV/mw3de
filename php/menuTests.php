<pre><?php error_reporting(E_ALL);
	ini_set('display_errors', 1);

	$executionStartTime = microtime(true);
	include_once 'functions.php';
	/*
	// params
	$rom_filepath = "mw3s.bin";
	$filesize 	  = filesize($rom_filepath);

	// read FULL file:
	$handle   = fopen($rom_filepath, "rb");
	$contents = fread($handle, $filesize);
	fclose($handle);

	$contents_hex_array = array_map( 'bit2hex', str_split($contents, 1) );
	*/
	$base = '82B6';
	$base_dec = hexdec($base);
	echo 'Base: ' . $base . ' | Dec.: ' . $base_dec . '<br>';
	$items = [
		'INVENTAR',
		'WAFFE',
		'RÜSTUNG',
		'SCHILD',
		'SCHUHE',
		'ITEM',
		'MAGIE'
	];

	$first_string_offset = $base_dec + (count($items)*2);
	echo dec2hex($first_string_offset, 8) . '<br>';

	$pointer_bytes = (count($items)*2);
	$sum = 0;
	foreach ($items as $key => $item) {
		$sum += $pointer_bytes;
		echo dec2hex($pointer_bytes + strlen($item) + 1, 4) . '<br>';
	}

	$executionEndTime = microtime(true);
	$seconds = $executionEndTime - $executionStartTime;
	echo "<br><br><hr><br><small>This script took $seconds to execute.</small>";
	?>
	
</pre>