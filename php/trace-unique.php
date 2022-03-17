<?php 
parse_str(implode('&', array_slice($argv, 1)), $_GET);
if(isset($_GET['filepath']) && !empty($_GET['filepath'])){
    $filepath = $_GET['filepath'];
    $file = file($filepath);
    $uniqueLines = [];
    foreach($file as $line) {
        $entry = trim( substr($line,0,49) );
        if(!in_array($entry, $uniqueLines) && $entry !== "TRACE STARTED" && $entry !== "TRACE STOPPED" && !empty($entry)){
            $uniqueLines[] = $entry;
        }
    }
    if(isset($_GET['sort']) && !empty($_GET['sort'])){
        natsort($uniqueLines);
    }
    echo implode("\n", $uniqueLines);
}else{
    echo "Usage:\nphp -f trace-unique.php filepath=Path/to/your/Gens/tracefile.log";
}
?>