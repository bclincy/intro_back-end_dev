<?php
$opts = array(
    'http' => array(
        'method' => "GET",
        'header' => "Accept-language: en\r\n" .
            "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36",
        "content-type: application/json",
    )
);

$context = stream_context_create($opts);

// Open the file using the HTTP headers set above

$githubUser = file_get_contents('https://api.github.com/users', false, $context);
$data = json_decode($githubUser, true);
$firstUser = $data[1];
$firstUserData = file_get_contents($firstUser['url'], false, $context);
$info = json_decode($firstUserData, true);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="standard.css" />
    <style>
        .hero img {
            float: right;
        }

<<<<<<< HEAD
        .hero article {
            background-color: white;
            opacity: 0.5;
=======
        /* .hero article {
            /* background-color: white; */
            /* opacity: 0.5; */
             */

        .card-items {
            display: inline-block;
        }
        .container {
            display: flex;
            width: 100%;
>>>>>>> 09ffb103be6c1708bce0801daa163ea5aa666b7b
        }
    </style>
</head>

<body>
    <div class="hero">
        <h1>Display Users</h1>
        <article>

            <?php

            $i = 0;
            while ($i <= 4) {

                var_dump($data[$i]);
                $userdetails = $data[$i];
                $userData = file_get_contents($userdetails['url'], false, $context);
                $info = json_decode($userData, true);

            ?>
                <article>
                    <h3><?php echo $info["id"]?> User</h3>:
                    <img src="<?php echo $info['avatar_url']; ?>" alt="User Image"/>
                    <ul>
                        <li>Name:<?php echo $info['name']; ?></li>
                        <li><?php echo $info['name']; ?></li>
                    </ul>
                </article>
            <?php
                $i++;
            } ?>

    </div>
    <p>This Assignment you are getting data from the github's API allowing you to get user
        data. This hits two endpoints user, then get user details. Go through 5 of these results and display
        the data. You can decide how or what data you'd want to display.</p>
</body>
</html>