<?php 
require_once('settings.php');

use JeroenDesloovere\VCard\VCard;
use App\AddressBook\Foo;


$foo = new Foo();
$stmt = $db->query('SELECT * FROM states');
$result = $stmt->fetchAll();
$stateSelect = stateSelector($result);
function stateSelector (array $states) {
   $selState = '<select id="state" name="state" required="required" class="form-control">  <option value="" disabled selected>State...</option>';
   foreach($states as $state) {
      $selState .= sprintf('<option value="%s">%s</option>%c', $state['abrivation'], $state['state'], 10);
   }
   
   return $selState .= '</select>';
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
   //Format input && validate
   $phoneUtil = \libphonenumber\PhoneNumberUtil::getInstance();
   $fname = ucwords(strtolower($_REQUEST['fname']));
   $lname = ucwords(strtolower($_REQUEST['lname']));
   $mobile = $phoneUtil->parse($_REQUEST['mobile'], 'US');

   $uploadImgPath = __DIR__ . '/uploads/';
   $qrcodeImgsPath = __DIR__ . '/images/';
   $vcfPath = __DIR__ .'/vcf/';
   $filename = strtolower(sprintf('%s-%s-%s', $fname, $lname, time()));
   //define vcard
   $vcard = new VCard();
   
   // define variables
   $lastname = $_REQUEST['lname'];
   $firstname = $_REQUEST['fname'];
   $additional = '';
   $prefix = '';
   $suffix = '';
   $qrlink = sprintf('http://%s/vcf/%s.vcf', $_SERVER['SERVER_NAME'], $filename);
    // $qrlink = 'http://' . $_SERVER['SERVER_NAME'] . '/';
    // die(var_dump($qrlink));
    echo is_dir($vcfPath) ? $vcfPath . ' is a directory' : 'directory does not exists';

   // File Management
   $photo = upload_photo($filename, $uploadImgPath);
   $qrcode = sprintf('https://api.qrserver.com/v1/create-qr-code/?data=%s&amp;size=250x250', $firstname);
   $qrcodeDownloaded = $foo->downloadImg($qrcode, $filename);
   if ($photo !== false) {
      $vcard->addPhoto($uploadImgPath . $photo);
   }

   // format phone number
   $phone = $foo->format_phone_us($mobile);
   var_dump($phone);

   // add personal data
   $vcard->addName($lname, $fname, $additional, $prefix, $suffix);

   // add work data
   $vcard->addCompany($_REQUEST['company']);
   $vcard->addJobtitle($_REQUEST['title']);
   $vcard->addRole($_REQUEST['role']);
   $vcard->addEmail($_REQUEST['email']);
   $vcard->addPhoneNumber($mobile, 'PREF;MOBILE');
   $vcard->addPhoneNumber($mobile, 'MOBILE');
   $vcard->addAddress(null, null, $_REQUEST['address'], $_REQUEST['city'], $_REQUEST['state'], $_REQUEST['zipcode'], 'USA');
   $vcard->addLabel('street, worktown, workpostcode United States');
   $vcard->addURL($_REQUEST['url']);
   $vcard->setFilename($filename);
   $vcard->setSavePath($vcfPath);
   $vcard->save();
}

function upload_photo (string $name, string $filepath) {
       if(isset($_FILES['photo']) && $_FILES['photo']['error'] == 0){
        $allowed = array('jpg' => 'image/jpg', 'jpeg' => 'image/jpeg', 'gif' => 'image/gif', 'png' => 'image/png');
        $filename = $_FILES['photo']['name'];
        $filetype = $_FILES['photo']['type'];
        $filesize = $_FILES['photo']['size'];
        // Verify file extension
        $ext = pathinfo($filename, PATHINFO_EXTENSION);
        $name = $name . '.' . $ext;
        $newFile = sprintf('%s%s', $filepath, $name);
        if(!array_key_exists($ext, $allowed)) die('Error: Please select a valid file format.');
    
        // Verify file size - 5MB maximum
        $maxsize = 5 * 1024 * 1024;
        if($filesize > $maxsize) die('Error: File size is larger than the allowed limit.');
    
        // Verify MYME type of the file
        if(in_array($filetype, $allowed)){
            // Check whether file exists before uploading it
            if(file_exists($filepath . $filename) || file_exists($newFile) === true){
                echo $filename . ' is already exists.';
            } else{
                move_uploaded_file($_FILES['photo']['tmp_name'], $newFile);
                $ret = true;
            } 
        } else{
            echo 'Error: There was a problem uploading your file. Please try again.'; 
        }
    } else{
        echo 'Error: ' . $_FILES['photo']['error'];
    }

    return isset($ret) && $ret === true ? $name : false;
}

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Intro To Backend Development Final Project</title>
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
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Contact QRCode</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h1 class="text-uppercase text-white font-weight-bold">Create your own instant contact QR Code</h1>
                        <hr class="divider my-4" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 font-weight-light mb-5">Fill out the form and we'll create your personalize QR Code that will be an instant contact download.</p>
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0">We've got what you need!</h2>
                                                <hr class="divider light my-4" />
                        <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Get Started!</a>
                    </div>
                    <div class="col-lg-12">
                        <form class="form-horizontal" method="post" enctype="multipart/form-data" action="<?php echo sprintf('%s/finalproject/',  $_SERVER['HTTP_ORIGIN']); ?>">
                        <fieldset>

                        <!-- Form Name -->
                        <legend>New Contact and QR Code</legend>

                        <!-- Text input-->
                        <div class="form-group">
                        <label class="col-md-4 control-label" for="fname">First Name</label>  
                        <div class="col-md-4">
                        <input id="fname" name="fname" type="text" placeholder="John" class="form-control input-md" required="required">
                        <span class="help-block">Please enter your first name</span>  
                        </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                        <label class="col-md-4 control-label" for="lname">Last Name</label>  
                        <div class="col-md-4">
                        <input id="lname" name="lname" type="text" placeholder="Doe" class="form-control input-md" required="required">
                        <span class="help-block">Please enter your last name</span>  
                        </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                           <label class="col-md-4 control-label" for="title">Title</label>  
                           <div class="col-md-4">
                              <input id="title" name="title" type="text" placeholder="Cheif Executive Officer" class="form-control input-md">
                              <span class="help-block">Enter your title</span>  
                           </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                           <label class="col-md-4 control-label" for="email">email</label>  
                           <div class="col-md-4">
                              <input id="email" name="email" type="email" placeholder="somebody@home.com" class="form-control input-md" required="required">
                              <span class="help-block">Enter your email address</span>  
                           </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                           <label class="col-md-4 control-label" for="mobile">mobile</label>  
                           <div class="col-md-4">
                              <input id="mobile" name="mobile" type="tel" placeholder="231-555-1212" class="form-control input-md" required="required">
                              <span class="help-block">Please a mobile number</span>  
                           </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                           <label class="col-md-4 control-label" for="company">Company</label>  
                           <div class="col-md-4">
                              <input id="company" name="company" type="text" placeholder="i13IDS.com" class="form-control input-md">
                              <span class="help-block">Please enter your company name</span>  
                           </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                           <label class="col-md-4 control-label" for="website">Website</label>  
                           <div class="col-md-4">
                              <input id="url" name="url" type="url" placeholder="https://brianclincy.com" class="form-control input-md">
                              <span class="help-block">Please enter your website URL</span>  
                           </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                           <label class="col-md-4 control-label" for="address">Address Line 1</label>  
                           <div class="col-md-4">
                              <input id="address" name="address" type="text" placeholder="123 Main St" class="form-control input-md">
                              <span class="help-block">Please enter your address</span>  
                           </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                           <label class="col-md-4 control-label" for="address2">Address Line 2</label>  
                           <div class="col-md-4">
                              <input id="address2" name="address2" type="text" placeholder="Apt 1A" class="form-control input-md">
                              <span class="help-block">Apt/Suite/Route</span>  
                           </div>
                        </div>

                        <!-- Select Basic -->
                        <div class="form-group">
                           <label class="col-md-4 control-label" for="state">State</label>
                           <div class="col-md-4">
                              <?php echo $stateSelect; ?>
                           </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                        <label class="col-md-4 control-label" for="city">City</label>  
                        <div class="col-md-4">
                        <input id="city" name="city" type="text" placeholder="Muskegon" class="form-control input-md">
                        <span class="help-block">Please Enter your City</span>  
                        </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                        <label class="col-md-4 control-label" for="zipcode">zip code</label>  
                        <div class="col-md-4">
                        <input id="zipcode" name="zipcode" type="text" placeholder="49442" class="form-control input-md" required="required">
                        <span class="help-block">Please enter your zip code</span>  
                        </div>
                        </div>

                        <!-- File input-->
                        <div class="form-group">
                        <label class="col-md-4 control-label" for="photoUpload">Photo</label>  
                        <div class="col-md-4">
                        <input type="file" name="photo" id="photo"  class="form-control input-md">
                        <span class="help-block">Upload Your Profile Picture<p><strong>Note:</strong> Only .jpg, .jpeg, .gif, .png formats allowed to a max size of 5 MB.</p></span>  
                        </div>
                        </div>
                        <!-- Button (Double) -->
                        <div class="form-group">
                        <label class="col-md-4 control-label" for="save">Save</label>
                        <div class="col-md-8">
                           <button id="save" name="save" class="btn btn-success">Create QR Code</button>
                           <button id="reset" name="reset" class="btn btn-danger">Reset</button>
                        </div>
                        </div>
                        </fieldset>
                        </form>
                        </div>
                </div>
            </div>
        </section>
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container">
                <h2 class="text-center mt-0">How it Works</h2>
                <hr class="divider my-4" />
                <div class="row">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-gem text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Instant Show contact on Mobile and Computer</h3>
                            <p class="text-muted mb-0">Our themes are updated regularly to keep them bug free!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-laptop-code text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Up to Date</h3>
                            <p class="text-muted mb-0">All dependencies are kept current to keep things fresh.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-globe text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Ready to Publish</h3>
                            <p class="text-muted mb-0">You can use this design as is, or you can make changes!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-heart text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Made with Love</h3>
                            <p class="text-muted mb-0">Is it really open source if it's not made with love?</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Portfolio-->
        <div id="portfolio">
            <div class="container-fluid p-0">
                <div class="row no-gutters">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="assets/img/portfolio/fullsize/1.jpg">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/1.jpg" alt="" />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="assets/img/portfolio/fullsize/2.jpg">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/2.jpg" alt="" />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="assets/img/portfolio/fullsize/3.jpg">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/3.jpg" alt="" />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="assets/img/portfolio/fullsize/4.jpg">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/4.jpg" alt="" />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="assets/img/portfolio/fullsize/5.jpg">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/5.jpg" alt="" />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="assets/img/portfolio/fullsize/6.jpg">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/6.jpg" alt="" />
                            <div class="portfolio-box-caption p-3">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Call to action-->
        <section class="page-section bg-dark text-white">
            <div class="container text-center">
                <h2 class="mb-4">Free Download at Start Bootstrap!</h2>
                <a class="btn btn-light btn-xl" href="https://startbootstrap.com/themes/creative/">Download Now!</a>
            </div>
        </section>
        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="mt-0">Let's Get In Touch!</h2>
                        <hr class="divider my-4" />
                        <p class="text-muted mb-5">Ready to start your next project with us? Give us a call or send us an email and we will get back to you as soon as possible!</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
                        <i class="fas fa-phone fa-3x mb-3 text-muted"></i>
                        <div>+1 (555) 123-4567</div>
                    </div>
                    <div class="col-lg-4 mr-auto text-center">
                        <i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
                        <!-- Make sure to change the email address in BOTH the anchor text and the link target below!-->
                        <a class="d-block" href="mailto:contact@yourwebsite.com">contact@yourwebsite.com</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container"><div class="small text-center text-muted">Copyright © 2020 - Start Bootstrap</div></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>