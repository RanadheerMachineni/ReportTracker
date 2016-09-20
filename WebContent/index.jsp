<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<script src="js/prefixfree.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/template.css">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./css/loginform.css">

</head>
<body>
	<!-- Header -->
	<div>
		<div>
			<img alt="" class="logo-local" src="./images/logo.png"> <img
				alt="" class="logo-global" src="./images/logo_tcm34-89251.jpg">
		</div>
		<div class="headerContent">
			<h3>Report Tracker</h3>
		</div>
		<div>
			<div class="straightLine"></div>
		</div>
	</div>


	<br>
	<div class="loginForm">
		<form method="post" action="AuthenticateUser">
			<div class="login">
				<input type="text" placeholder="username" name="user"><br>
				<input type="password" placeholder="password" name="password"><br>
				<input type=submit value="Login">
			</div>
		</form>
	</div>


</body>
</html>