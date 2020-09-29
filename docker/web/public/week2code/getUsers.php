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
        /* .hero img {
            float: right;

        } */

        /* .hero article {
            /* background-color: white; */
            /* opacity: 0.5; */
             */
            .headline {
                text-align: center;
            }

            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                max-width: 300px;
                text-align: center;
                font-family: arial;
                background-color: gray;
                margin-top: 15px;
            }
        .container {
            display: flex;
            padding: 0;
            margin: 0;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .ul-description{
            list-style-type: none;
        }
        
    </style>
</head>

<body>
        <h1 class="headline">Display Users</h1>
        <div class="container">
                <?php
                $i = 0;
                while ($i <= 4) {
                    // var_dump($data[$i]);
                    $userdetails = $data[$i];
                    $userData = file_get_contents($userdetails['url'], false, $context);
                    $info = json_decode($userData, true);
                ?>
                    <div class="card">
                        <h3><?php echo $info["id"]?>User</h3>
                        <img src="<?php echo $info['avatar_url']; ?>" alt="User Image" style="width: 200px" style="height: 200px"/>
                        <div>
                            <ul class="ul-description">
                                <li>Name:<?php echo $info['name']; ?></li>
                                <li><?php echo $info['name']; ?></li>
                            </ul>
                        </div>
                    </div>
                <?php
                    $i++;
                } ?>
        </div>
    <p>This Assignment you are getting data from the github's API allowing you to get user
        data. This hits two endpoints user, then get user details. Go through 5 of these results and display
        the data. You can decide how or what data you'd want to display.</p>
</body>
</html>