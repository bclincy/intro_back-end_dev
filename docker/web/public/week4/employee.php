<?php

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

//$stmt = $db->query('SELECT *  FROM `employee` WHERE `id` = 1');
//$results = $stmt->fetchAll();
//print_r($results);

// new code
$id = 1;
$stm = $db->prepare('SELECT *  FROM `employee` WHERE `id` = ?');
$stm->bindValue(1, $id);
$stm->execute();
$row = $stm->fetch(PDO::FETCH_ASSOC);
// end of new code
?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Edit Employee</title>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
   <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <!------ Include the above in your HEAD tag ---------->

</head>

<body>

   <div class="container">
      <form class="well form-horizontal">
         <fieldset>
            <div class="form-group">
               <label class="col-md-4 control-label">First Name</label>
               <div class="col-md-8 inputGroupContainer">
                  <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="fname" name="fname" placeholder="First Name" class="form-control" required="true" value="<?php echo $row['first_name'] . PHP_EOL; ?>" type="text"></div>
               </div>
            </div>
            <div class="form-group">
               <label class="col-md-4 control-label">Last Name</label>
               <div class="col-md-8 inputGroupContainer">
                  <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="lname" name="lname" placeholder="Last Name" class="form-control" required="true" value="<?php echo $row['last_name'] . PHP_EOL; ?>" type="text"></div>
               </div>
            </div>
            <div class="form-group">
               <label class="col-md-4 control-label">Job Title</label>
               <div class="col-md-8 inputGroupContainer">
                  <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span><input id="jobstitle" name="jobtitle" placeholder="Computer Engineer" class="form-control" required="true" value="<?php echo $row['job_title'] . PHP_EOL; ?>" type="text"></div>
               </div>
            </div>
            <div class="form-group">
               <label class="col-md-4 control-label">Salary</label>
               <div class="col-md-8 inputGroupContainer">
                  <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span><input id="salary" name="salary" placeholder="85000" class="form-control" required="true" value="<?php echo $row['salary'] . PHP_EOL; ?>" type="text"></div>
               </div>
            </div>
            <div class="form-group">
               <label class="col-md-4 control-label">Notes</label>
               <div class="col-md-8 inputGroupContainer">
                  <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span><input id="notes" name="notes" placeholder="notes" class="form-control" required="true" value="<?php echo $row['notes'] . PHP_EOL; ?>" type="text"></div>
               </div>
            </div>
         </fieldset>
      </form>

   </div>
</body>

</html>