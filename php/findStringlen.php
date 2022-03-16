<pre>
<?php
$executionStartTime = microtime(true);
include_once 'functions.php';

// params
$rom_filepath 		= "mw3s.bin";
$pointers_base_hex	= '00021720';
$dec_base_offset	= hexdec($pointers_base_hex);
$pointers_count		= 65;

// read FULL file:
$handle   = fopen($rom_filepath, "rb");
$filesize = filesize($rom_filepath);
$contents = fread($handle, $filesize);
fclose($handle);

$contents_hex_array = array_map( 'bit2hex', str_split($contents, 1) );

echo '<br><hr><br>';
echo 'Filesize: ' . $filesize . '<br>';
echo 'Byte at $00000006: ' . bit2hex($contents[hexdec('00000006')]) . '<br>';
echo 'Fetched ' . strlen($contents) . ' Bytes into $contents' . '<br>';
echo '<br><hr><br>';


// find end of pointers by using the value from the first pointer:
$firstPointerValue = bit2hex($contents[$dec_base_offset]) . bit2hex($contents[$dec_base_offset+1]);
$dec_firstPointerValue = hexdec($firstPointerValue);
$dec_end_offset_pointers = $dec_base_offset + $dec_firstPointerValue;
$pointers_total_bytes = $dec_end_offset_pointers - $dec_base_offset;

echo 'Found ' . ($pointers_total_bytes/2) . ' pointers.<br><br>';

// extract pointers:
$pointersObjectList = array();
$pointers_bin = substr($contents, $dec_base_offset, $pointers_total_bytes);
$pointers_count = ceil(strlen($pointers_bin) / 2);
$pointers_bin_array = str_split($pointers_bin, 2);

// Step 1: collect pointer data:
$i = 0;
foreach ($pointers_bin_array as $pointer_bin) {
    $pointerObj = new stdClass();

    $pointerObj->pointer_hexval = bit2hex(substr($pointer_bin, 0, 1)) . bit2hex(substr($pointer_bin, 1, 1));
    $pointerObj->pointer_offset = dec2hex($dec_base_offset+$i, 8);

    $content_offset_dec = $dec_base_offset + hexdec($pointerObj->pointer_hexval);
    $pointerObj->content_offset = dec2hex( $content_offset_dec, 8);

    $content_len = 0;
    $pointerObj->content = '';
    $needle = $content_offset_dec;
    while($contents_hex_array[$needle] !== '00'){
    	$pointerObj->content .= $contents_hex_array[$needle];
    	$needle ++;
    }
    $pointerObj->content .= $contents_hex_array[$needle]; // last is not catched in while loop because it leaves on $needle++

    $pointerObj->content_len = strlen($pointerObj->content)/2;

    $pointersObjectList[] = $pointerObj;
    $i+=2;
}

var_dump($pointersObjectList);

$executionEndTime = microtime(true);
$seconds = $executionEndTime - $executionStartTime;
echo "<br><br><hr><br><small>This script took $seconds to execute.</small>";
?>
</pre>