<?php 
$txt = 'This is text: Single text vs Double quotes';
$txtdbl = "$txt... was the txt included double quotes ";
$txtsingle = '$txt ... was the txt included single quotes';
$int = 193;
$float = 1283.92090;

function str2num($str):floatval {
      if (strpos($str, '.') !== FALSE && strpos($str,    ',') !== FALSE && strpos($str, '.') < strpos($str,','))
          {
            $str = str_replace('.','',$str);
            $str = strtr($str,',','.');           
        }
        else
        {
            $str = str_replace(',','',$str);           
        }
       
        return (float)$str;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Variables</title>
</head>
<body>
    
</body>
</html>