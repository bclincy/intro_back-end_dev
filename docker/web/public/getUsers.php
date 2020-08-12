<?php
$directors = array( "Alfred Hitchcock", "Stanley Kubrick", "Martin Scorsese", "Fritz Lang", "Wes Craven");
$movie = array(
    "title" => 'Nightmare on Elm Street',
    "director" => 'Wes Craven',
    "year" => 1984,
);
$movies = array(
    array(
        "title" => 'Nightmare on Elm Street',
        "director" => 'Wes Craven',
        "year" => 1984,
    ),
    array(
        "title" => "Rear Window",
        "director" => "Alfred Hitchcock",
        "year" => 1954,
    ),

);
$empty = [];


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<H1>PHP Arrays</H1>
<p>In PHP you have two types of arrays, indexed and associative. If you combine them you have a multidimenisional array</p>
<blockquote>
    $directors = array( "Alfred Hitchcock", "Stanley Kubrick", "Martin Scorsese", "Fritz Lang" );
</blockquote>
Task one: Loop through and display $directors names;

<pre>
 <?php var_dump($movie); ?>
 </pre>
</body>
</html>