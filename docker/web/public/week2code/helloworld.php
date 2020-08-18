<?php 
$name = 'Brian Clincy';
$date = new DateTime();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All about <?php echo $name; ?></title>
    <style>
    .copyright {
        font-size: small;
        font-weight: 800;
        
    }
    </style>
</head>
<body>
    <h1>Hello <?php echo $name; ?></h1>
    <p>This is the first Script the world wants to see. Most of the time you'll see 
    Hello World Script. 
    </p>
    <div class="copyright">Copyrighted <?php echo $date->format('m-d-Y'); ?></div>
</body>
</html>