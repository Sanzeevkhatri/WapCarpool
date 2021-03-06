<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Carpool</title>

<!-- Bootstrap Core CSS -->
<link href="view/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="view/css/style.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="view/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<%
    Cookie[] cookies=request.getCookies();
    String userName = "", password = "",rememberVal="";
    if (cookies != null) {
         for (Cookie cookie : cookies) {
           if(cookie.getName().equals("cookuser")) {
             userName = cookie.getValue();
           }
           if(cookie.getName().equals("cookpass")){
             password = cookie.getValue();
           }
           if(cookie.getName().equals("cookrem")){
             rememberVal = cookie.getValue();
           }
        }
    }
%>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"> <img
				src="view/images/logo.png" alt="logo"> <span>MUM
						Carpool</span>
			</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="about.html">About us</a></li>
				<li><a href="contact.html">Contact</a></li>

			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<section class="banner">
	<div class="container">


		<div class="top_form">

			<h1><%=request.getAttribute("logout")%></h1>
			<form method="POST" action="LoginController">

				<br class="clear"> <input value="<%=userName%>" name="email"
					type="email" placeholder="Email" required> <input
					value="<%=password%>" name="password" type="password"
					placeholder="Password" required style="margin-top: 20px;">


				<div class="checkbox">
					<label><input name="remember" id="remember" checked type="checkbox">
						Remember me</label>
				</div>
				<input type="submit" value="Login" style="margin-top: 5px;">



				<div class="or">
					<img src="view/images/or_bg.png" alt="">
				</div>
				<a href="index.jsp"><input type="button" value="Sign Up"
					style="width: 100%; margin: 15px 0 0 0; padding: 0; border: none; background: #91bb3f; color: #fff; cursor: pointer; font-weight: 600; height: 38px; border-radius: 5px; font-size: 16px; border-bottom: 2px solid #7aa527;">
				</a>

			</form>
		</div>
	</div>
	<!-- container end --> </section>
	<!-- banner end -->


	<footer>
	<div class="container">
		<p class="copyright">Copyright � Carpool 2016</p>
		<ul class="foot-social">
			<li><a href="#" target="_blank"><i
					class="fa fa-facebook-square"></i></a></li>
			<li><a href="#" target="_blank"><i
					class="fa fa-twitter-square"></i></a></li>
			<li><a href="#" target="_blank"><i
					class="fa fa-google-plus-square"></i></a></li>
			<li><a href="#" target="_blank"><i
					class="fa fa-youtube-square"></i></a></li>
		</ul>
	</div>
	</footer>

	<!-- jQuery -->
	<script src="view/js/jquery.js"></script>
	<script src="view/js/bootstrap.min.js"></script>



</body>

</html>
