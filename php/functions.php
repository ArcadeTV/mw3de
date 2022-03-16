<?php 
function in_array_all($needles, $haystack) {
   return empty(array_diff($needles, $haystack));
}

/**
 * Format the output of a long hex-value-string.
 *
 * @bytestring   2-digit hex string
 *
 * @return same string with spaces between every byte and linebreaks every 16 bytes.
 */
function prettyByteDisplay($bytestring, $br = true){
    $return = '';
    $lines = str_split($bytestring, 32);
    foreach ($lines as $line) {
        $bytes = str_split($line, 2);
        $return .= implode(' ', $bytes) . ($br ? '<br>' : '');
    }

    return $return;
}

function bin2dec($bin){
	return bindec( base_convert(ord($bin), 10, 2) );
}

/**
	 * Converts binary to hex
	 *
     * @param $bin binary
	 *
     * @param $digits int (how many digits to return, overhead is filled with zeros)
     *
	 * @return hex value, padded left with zeros according to $digits
	 */
    function bit2hex($bin, $digits = 2){
        // get the base 10 value of the current character
        $base10value = ord($bin);
        // now convert that byte from base 10 to base 2 (i.e 01001010...)
        return strtoupper( str_pad(  dechex( bindec( base_convert($base10value, 10, 2) ) )  , $digits, '0', STR_PAD_LEFT) );
    }

    /**
	 * Converts decimal to hex
	 *
     * @param $bin binary
	 *
     * @param $digits int (how many digits to return, overhead is filled with zeros)
     *
	 * @return hex value, padded left with zeros according to $digits
	 */
    function dec2hex($dec, $digits = 2){
        return strtoupper( str_pad(  dechex( bindec( base_convert($dec, 10, 2) ) )  , $digits, '0', STR_PAD_LEFT) );
    }

    /**
     * Converts signed decimal to hex (Two's complement)
     *
     * @param $value int, signed
     *
     * @param $reverseEndianness bool, if true reverses the byte order (see machine dependency)
     *
     * @return string, upper case hex value, both bytes padded left with zeros
     */
    function signed2hex($value, $reverseEndianness = true)
    {
        $packed = pack('s', $value);
        $hex='';
        for ($i=0; $i < 2; $i++){
            $hex .= strtoupper( str_pad( dechex(ord($packed[$i])) , 2, '0', STR_PAD_LEFT) );
        }
        $tmp = str_split($hex, 2);
        $out = implode('', ($reverseEndianness ? array_reverse($tmp) : $tmp));
        return $out;
    }

    /**
     * Converts signed hex to decimal
     *
     * @param $hex string, signed hex, eg: FE75 or FF8C
     *
     * @return hex value, padded left with zeros according to $digits
     */
    function hex2signed($hex)
    {
        // ignore non hex characters
        $hex = preg_replace('/[^0-9A-Fa-f]/', '', $hex);

        // converted decimal value:
        $dec = hexdec($hex);

        // maximum decimal value based on length of hex + 1:
        //   number of bits in hex number is 8 bits for each 2 hex -> max = 2^n
        //   use 'pow(2,n)' since '1 << n' is only for integers and therefore limited to integer size.
        $max = pow(2, 4 * (strlen($hex) + (strlen($hex) % 2)));

        // complement = maximum - converted hex:
        $_dec = $max - $dec;

        // if dec value is larger than its complement we have a negative value (first bit is set)
        return $dec > $_dec ? -$_dec : $dec;
    }
?>