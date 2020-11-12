<?php
//if (empty($_SERVER['HTTP_REFERER']) || strpos($_SERVER['HTTP_HOST'], $_SERVER['HTTP_REFERER']) === false ) {
//    header("Location: " . $_SERVER['HTTP_REFERER'] . '/finalproject/');
//}

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- Third party plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Contactless Contacts</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collsapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/#about">About</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/#portfolio">Portfolio</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h1 class="text-uppercase text-white font-weight-bold">QR Code and Contactless Contact was Successfully Created</h1>
                        <hr class="divider my-4" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 font-weight-light mb-5"><h2><?php echo sprintf('%s %s', $_REQUEST['fname'], $_REQUEST['lname']); ?></h2> </p>
                        <p class="text-white-75 font-weight-light mb-5"><img src="/finalproject/images/<?php echo $_REQUEST['filename'] . '.png'; ?>" alt="Personal QR Code" width="300" height="300" /></p>
                        <p class="text-white-75 font-weight-light mb-5"><a href="/finalproject/vcf/<?php echo $_REQUEST['filename'] . '.vcf'; ?>" class="btn" download><i class="fa fa-download"></i>Download VCF</a>
                        </p>
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="/finalproject/images/<?php echo $_REQUEST['filename'] . '.png'; ?>" download>Download QR Code Image</a>
                    </div>
                </div>
            </div>
        </header>
    </body>
</html>