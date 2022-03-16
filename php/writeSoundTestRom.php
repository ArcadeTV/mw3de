<pre>
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$executionStartTime = microtime(true);
include_once 'functions.php';

// params
$rom_filepath = "mw3s.bin";
$base_hex	= '0001DF29';
$base_dec	= hexdec($base_hex);
$type="0B19"; // Sound Controller
// table
$table = array(
	'0' => '30',
	'1' => '31',
	'2' => '32',
	'3' => '33',
	'4' => '34',
	'5' => '35',
	'6' => '36',
	'7' => '37',
	'8' => '38',
	'9' => '39',
	'A' => '41',
	'B' => '42',
	'C' => '43',
	'D' => '44',
	'E' => '45',
	'F' => '46'
);

// read FULL file:
$handle   = fopen($rom_filepath, "rb");
$filesize = filesize($rom_filepath);
$contents = fread($handle, $filesize);
fclose($handle);



$numbers = range(24, 255); // SFX from #24
$hexes   = array_map('dec2hex', $numbers);

$teststring = '';
for($i=0; $i<count($numbers); $i++){
	echo $type . $hexes[$i] . '=&lt;&gt;<br>';
	$teststring .= strtr($type.$hexes[$i], $table) . '09'.$type.$hexes[$i] . '050909';
}
echo $teststring.'<br><br>';

$bytesArray = str_split($teststring, 2);
echo count($bytesArray);

// Write Dialogue to text_start offset:
for($i=0; $i < count($bytesArray); $i++){
    $offset_dec = $base_dec + $i;
    $contents[$offset_dec] = pack('H*', $bytesArray[$i]);

}

file_put_contents('soundtest.bin', $contents);

$executionEndTime = microtime(true);
$seconds = $executionEndTime - $executionStartTime;
echo "<br><br><hr><br><small>This script took $seconds to execute.</small>";
?>
</pre>