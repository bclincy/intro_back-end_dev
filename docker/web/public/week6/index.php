<?php 
/**
 * Setup autoloading
 */
require __DIR__ . '/../../app/vendor/autoload.php';
$charset = 'utf8';
$dsn = sprintf('mysql:host=%s;dbname=%s;charset=%s', $_ENV['MYSQL_HOST'], $_ENV['MYSQL_DATABASE'], $charset);
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
try {
     /**
      * $db pdo
      */
     $db = new PDO($dsn, $_ENV['MYSQL_USER'], $_ENV['MYSQL_PASSWORD'], $options);
} catch (\PDOException $e) {
     throw new \PDOException($e->getMessage(), (int)$e->getCode());
}

use JeroenDesloovere\VCard\VCard;
// $curUrl = sprint_f('/s/qcards' ;
// define vcard
$vcard = new VCard();

// define variables
$lastname = 'Desloovere';
$firstname = 'Jeroen';
$additional = '';
$prefix = '';
$suffix = '';

// add personal data
$vcard->addName($lastname, $firstname, $additional, $prefix, $suffix);

// add work data
$vcard->addCompany('Clincy');
$vcard->addJobtitle('Web Developer');
$vcard->addRole('Data Protection Officer');
$vcard->addEmail('info@jeroendesloovere.be');
$vcard->addPhoneNumber(1234121212, 'PREF;WORK');
$vcard->addPhoneNumber(123456789, 'WORK');
$vcard->addAddress(null, null, 'street', 'worktown', null, 'workpostcode', 'Belgium');
$vcard->addLabel('street, worktown, workpostcode Belgium');
$vcard->addURL('http://www.jeroendesloovere.be');

$vcard->addPhoto(__DIR__ . '/images/qcard.png');
return $vcard->save();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Intro Project Intro</title>
</head>
<body>
    <div class="container">
                 <form class="well form-horizontal">
                      <fieldset>
                         <div class="form-group">
                            <label class="col-md-4 control-label">First Name</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="fname" name="fname" placeholder="First Name" class="form-control" required="true" value="" type="text"></div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Last Name</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="lname" name="lname" placeholder="Last Name" class="form-control" required="true" value="" type="text"></div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Job Title</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span><input id="jobstitle" name="jobtitle" placeholder="Computer Engineer" class="form-control" required="true" value="" type="text"></div>
                            </div>
                         </div>
                      </fieldset>
                   </form>
  
</div>
</body>
</html>