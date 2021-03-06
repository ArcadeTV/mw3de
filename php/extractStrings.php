<pre>
<?php
ini_set('error_reporting', E_ALL | E_STRICT);
$executionStartTime = microtime(true);
include_once 'functions.php';

// params
$rom_filepath 		= "Wonder Boy in Monster World (USA, Europe).md";
$pointers_base_hex	= '1DD94';
$pointers_base_dec	= hexdec($pointers_base_hex);

// read FULL file:
$handle   = fopen($rom_filepath, "rb");
$filesize = filesize($rom_filepath);
$contents = fread($handle, $filesize);
fclose($handle);

$pointers_end_dec   = $pointers_base_dec + hexdec(bit2hex($contents[$pointers_base_dec+1]) . bit2hex($contents[$pointers_base_dec+2]));
$pointers_end_hex   = dec2hex($pointers_end_dec);
$pointers_count	    = ($pointers_end_dec-$pointers_base_dec) / 3;

echo $pointers_end_hex . '-' . $pointers_end_hex . ': ' . $pointers_count . ' pointers.' . "\n";

$index = 0;
for($i=$pointers_base_dec; $i < $pointers_end_dec; $i+=3) {
    $index++;
    echo str_pad($index, 3, "0", STR_PAD_LEFT) . ': ' . bit2hex($contents[$i]) . ' ' . bit2hex($contents[$i+1]) . bit2hex($contents[$i+2]);

    if($i < $pointers_end_dec-3) {
        $pointerValue_dec     = hexdec(strval(bit2hex($contents[$i+1]) . bit2hex($contents[$i+2])));
        $str_start_dec        = $i + $pointerValue_dec;
		$str_start_hex 		  = dec2hex($str_start_dec, 8);
        $nextPointerValue_dec = hexdec(strval(bit2hex($contents[$i+4]) . bit2hex($contents[$i+5])));
        $len_dec              = $nextPointerValue_dec - $pointerValue_dec;
        $len_hex              = dec2hex($len_dec,4);

        echo ' | Length: ' 
        . $len_dec 
        . '($' 
        . $len_hex 
        . ') Bytes:' 
        . "\n";
		echo 'Start: $' . $str_start_hex . "\n";
        echo prettyByteDisplay(implode('', array_map('bit2hex', str_split(substr($contents, $str_start_dec, $len_dec)) ) ));
    }
    echo "\n\n";
}

echo '<br><hr><br>';
die();
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
	$points_to_dec = $current_offset_dec + hexdec(strval($pointer_left)) + hexdec(strval($pointer_right));

	$next_pointer_left  = bit2hex($pointers_bin[$i+2]);
	$next_pointer_right = bit2hex($pointers_bin[$i+3]);
	$next_points_to_dec = $current_offset_dec + hexdec(strval($next_pointer_left)) + hexdec(strval($next_pointer_right));

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