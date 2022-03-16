<?php
$executionStartTime = microtime(true);
include_once 'functions.php';

// params
$rom_filepath 	= "mw3s.bin";
$text_base_hex	= '82CB';
//$text_base_hex	= '00007C0A';
$text_base_dec	= hexdec($text_base_hex);

// read FULL file:
$handle   = fopen($rom_filepath, "rb");
$filesize = filesize($rom_filepath);
$contents = fread($handle, $filesize);
fclose($handle);

echo 'Filesize: ' . $filesize . '<br>';
echo 'Fetched ' . strlen($contents) . ' Bytes into $contents' . '<br>';
echo 'Looking for a possible Pointer that points to ' . $text_base_hex;
echo '<br><hr><br>';
$contents_words = str_split($contents, 2);

$founds = [];

for($i=0; $i < ($filesize-1); $i++){
	$current_offset_dec = $i;
	$potential_pointer = bin2dec($contents[$i]) + bin2dec($contents[$i+1]);
	$sum = $current_offset_dec + $potential_pointer;
	if($sum == $text_base_dec){
		$founds[] = '<br>FOUND! @' . dec2hex($current_offset_dec, 8) . ':' . bin2hex($contents[$i]) . ' ' . bin2hex($contents[$i+1]) . '<br>';
	}
}

if(count($founds)){
	echo implode($founds, '');
}else{
	echo '<br>Nothing was found :-(';
}

$executionEndTime = microtime(true);
$seconds = $executionEndTime - $executionStartTime;
echo "<br><br><hr><br><small>This script took $seconds to execute.</small>";
?>