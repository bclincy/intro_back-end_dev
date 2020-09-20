<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Create Custom Contact with QRCode</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <form class="well form-horizontal" action="/">
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
                <label class="col-md-4 control-label">Company</label>
                <div class="col-md-8 inputGroupContainer">
                    <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="company" name="company" placeholder="ClinCorp Group LLC" class="form-control" required="true" value="" type="text"></div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label">Job Title</label>
                <div class="col-md-8 inputGroupContainer">
                    <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span><input id="jobstitle" name="jobtitle" placeholder="Computer Engineer" class="form-control" required="true" value="" type="text"></div>
                </div>
            </div>
                        <div class="form-group">
                        <label class="col-md-4 control-label">Address Line 1</label>
                        <div class="col-md-8 inputGroupContainer">
                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span><input id="address2" name="address1" placeholder="123 Main Street" class="form-control" required="true" value="" type="text"></div>
                        </div>
                        </div>
                        <div class="form-group">
                        <label class="col-md-4 control-label">Address Line 2</label>
                        <div class="col-md-8 inputGroupContainer">
                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span><input id="address2" name="address2" placeholder="Apt E" class="form-control" required="true" value="" type="text"></div>
                        </div>
                        </div>
                    </fieldset>
                </form>
</div>



</body>
</html>