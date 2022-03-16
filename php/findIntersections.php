<pre><?php error_reporting(E_ALL);
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

	$contents_hex_array = array_map( 'bit2hex', str_split($contents, 1) );

	$needles 	 = array(5,2,4,8,32);
	$needles_hex = array_map('dec2hex', $needles);

	$buffersize = 16;

    for($i=0; $i < count($contents_hex_array)-$buffersize; $i ++) {
        // create a buffer that has the size of the highest bytecount of our table:
        $specimen = array_slice($contents_hex_array, $i, $buffersize);
        if(in_array_all($needles_hex, $specimen)){
		    echo 'Found intersection within offset $' . dec2hex($i) . ' +'.$buffersize.'<br>';
		}


	}


	$executionEndTime = microtime(true);
	$seconds = $executionEndTime - $executionStartTime;
	echo "<br><br><hr><br><small>This script took $seconds to execute.</small>";
	?>
	
</pre>