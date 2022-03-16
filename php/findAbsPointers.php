<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$executionStartTime = microtime(true);
include_once '../mwiii-crude/functions.php';

// params
$rom_filepath = "../mwiii-crude/mw3s.bin";
$filesize 	  = filesize($rom_filepath);


// read FULL file:
$handle   = fopen($rom_filepath, "rb");
$contents = fread($handle, $filesize);
fclose($handle);

echo 'Filesize: ' . $filesize . '<br>';
echo 'Byte at $00000006: ' . bit2hex($contents[hexdec('00000006')]) . '<br>';
echo 'Fetched ' . strlen($contents) . ' Bytes into $contents' . '<br>';
echo '<br><hr><br>';

$offsets_hex = array();

$begin = 65536;  // $00010000
$end   = 131072; // $00020000

for($i=$begin; $i < $filesize; $i++){
	$offsets_hex[] = dec2hex($i, 8);
}

for($f=$begin; $f < $begin+1000; $f++){
	echo $f % 1000 ? '' : 'f:'.$f.'<br>'; 
	// check every 8 bytes if this equals an existing offset:
	$check = bit2hex(substr($contents, $f, 8), 8);
	if(in_array($check, $offsets_hex) && dechex($check) >= $begin){
		echo 'FOUND! @' . dec2hex($f, 8) . ': ' . $check . '(Content: ' . bit2hex( substr($contents, bin2dec($contents[$f]), 8), 8 ) . ')<br>';
	}

}


$executionEndTime = microtime(true);
$seconds = $executionEndTime - $executionStartTime;
echo "<br><br><hr><br><small>This script took $seconds to execute.</small>";
?>