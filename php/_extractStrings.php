<pre>
<?php
$executionStartTime = microtime(true);
include_once 'functions.php';

// params
$rom_filepath 		= "mw3s.bin";
$pointers_base_hex	= '00021720';
$pointers_base_dec	= hexdec($pointers_base_hex);
$pointers_count		= 65;

// read FULL file:
$handle   = fopen($rom_filepath, "rb");
$filesize = filesize($rom_filepath);
$contents = fread($handle, $filesize);
fclose($handle);

echo '<br><hr><br>';
echo 'Filesize: ' . $filesize . '<br>';
echo 'Byte at $00000006: ' . bit2hex($contents[hexdec('00000006')]) . '<br>';
echo 'Fetched ' . strlen($contents) . ' Bytes into $contents' . '<br>';
echo '<br><hr><br>';

$pointers_bin = substr($contents, $pointers_base_dec, $pointers_count*2);
$pointers = str_split($pointers_bin, 2);

foreach ($pointers as $i => $pointer_bin) {
	if($i < $pointers_count){
		$pointer_value_dec = hexdec(bin2hex($pointer_bin[0].$pointer_bin[1])); // 16Bit or 2Bytes!

		$current_offset_dec = $pointers_base_dec + ($i*2);
		$points_to_dec = $pointers_base_dec + $pointer_value_dec;

		$next_pointer_value_dec = hexdec(bin2hex($pointers[$i+1][0].$pointers[$i+1][1]));

		$next_points_to_dec = bin2dec($pointers_bin[$i+1]);
		$stringlength = $next_pointer_value_dec - $pointer_value_dec;

		$contents_bytes = substr($contents, $points_to_dec, $stringlength);

		echo sprintf('%02d', $i) . ': ' 
		. ( implode(array_map( 'bit2hex', str_split($pointer_bin, 1) ), ' ') ) 
		. ' @offset: ' . dec2hex($current_offset_dec, 8)
		. ' points to: ' . dec2hex($points_to_dec, 8)
		. ' and reads: ' . ( implode(array_map( 'bit2hex', str_split($contents_bytes, 1) ), ' ') ) 
		. ' (' . $stringlength . ' Bytes long)'
		. '<br>';
	}else{
		break;
	}
		
}

for($i=0; $i < count($pointers); $i++){
	$current_offset_dec = $pointers_base_dec + ($i*2);
	$pointer_left  = bit2hex($pointers_bin[$i]);
	$pointer_right = bit2hex($pointers_bin[$i+1]);
	$points_to_dec = $current_offset_dec + hexdec($pointer_left) + hexdec($pointer_right);

	$next_pointer_left  = bit2hex($pointers_bin[$i+2]);
	$next_pointer_right = bit2hex($pointers_bin[$i+3]);
	$next_points_to_dec = $current_offset_dec + hexdec($next_pointer_left) + hexdec($next_pointer_right);

	$stringlength = $next_points_to_dec - $points_to_dec;

	echo sprintf('%02d', $i) . ': '
	. dec2hex($current_offset_dec, 8) . ': ' . $pointer_left . $pointer_right
	. ' points to ' . dec2hex($points_to_dec, 8) 
	. ' and reads: ' . ( implode(array_map( 'bit2hex', str_split(substr($contents, $points_to_dec, 10), 1) ), ' ') ) 
	. ' (' . $stringlength . ' Bytes long)' . '<br>';

}



$executionEndTime = microtime(true);
$seconds = $executionEndTime - $executionStartTime;
echo "<br><br><hr><br><small>This script took $seconds to execute.</small>";
?>
</pre>