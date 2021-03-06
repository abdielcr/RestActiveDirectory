<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 

<html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Minimal and Clean Sign up / Login and Forgot Form by FreeHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />
	
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	<%@ page import= "com.telnor.reset.login.rest.CambioPass" %>

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/style.css">
	
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	
	<!-- Google reCaptcha -->
	 <script src="https://www.google.com/recaptcha/api.js" async defer>
	 
	 </script>
	 <style>
    /* already defined in bootstrap4 */
    .text-xs-center {
        text-align: center;
    }

    .g-recaptcha {
        display: inline-block;
    }
</style>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>1
	<script src="js/respond.min.js"></script>
	<![endif]-->
	</head>
	<body>
	 
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-4">
					<form action="procesaForma.jsp" METHOD="post" class="fh5co-form animate-box" data-animate-effect="fadeIn">
						<h2 style="margin-left:80px">RESTABLECE TU CONTRASEŅA</h2>
						<div class="form-group">
							<label for="username" class="sr-only">Username</label>
							<input type="text" class="form-control" id="username" name="username" required placeholder="USUARIO" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">Password_anterior</label>
							<input type="password" class="form-control" id="password" name="password" required placeholder="CONTRASEŅA ANTERIOR" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">Password_nueva</label>
							<input type="password" class="form-control" id="newPassword" name="newPassword" required  placeholder="CONTRASEŅA NUEVA" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">Password_repite_contraseņa</label>
							<input type="password" class="form-control" id="repeatpassword" name="repeatpassword" required placeholder="CONFIRMA CONTRASEŅA" autocomplete="off">
						</div>
						
						<div class="text-xs-center">
							<div class="g-recaptcha" data-sitekey="6LeuHKMUAAAAAILhcdxRmYbrKQSebuko8ihfiOqj" data-callback="recaptcha_callback" style="text-aling:center">
							</div>
						</div>
						<br>
						<div class="text-xs-center">
						<div class="form-group" id="btn">
							<input type="submit" value="RESTABLECER" class="btn btn-primary" id="button1" 
							style="display:none;margin-left: auto;margin-right: auto;">
						</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	
	<!-- Captcha Google JS Implementation -->
	<script type="text/javascript">
		function recaptcha_callback() {
      	document.getElementById("button1").style.display = "block"
		};                                 
	</script>
	
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
	<!-- Validacion contraseņa identica -->
	<script>
	var password = document.getElementById("newPassword"),confirm_password = document.getElementById("repeatpassword");

	function validatePassword(){
  		if(password.value != confirm_password.value) {
   			confirm_password.setCustomValidity("Las contraseņas no coiciden");
  		} 
  		else {
    		confirm_password.setCustomValidity('');
  		}
	}

	password.onchange = validatePassword;
	confirm_password.onkeyup = validatePassword;
	</script>
	</body>
</html>

