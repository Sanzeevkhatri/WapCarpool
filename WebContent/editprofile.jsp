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
			<ul class="inner-top-link pull-right">
				<li><a href="#">Weather Map <i class="fa fa-sun-o"
						aria-hidden="true"></i></a></li>
				<li><a href="feed.jsp" class="notification">Notification <i
						class="fa fa-bell"></i></a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Account <span class="caret"></span></a>

					<ul class="dropdown-menu">
						<li><a href="#">Welcome, <br> <i
								class="fa fa-user fa-fw"></i><%=session.getAttribute("yourName")%></a></li>
						<li><a href="editprofile.jsp"><i
								class="fa fa-pencil fa-fw"></i>Edit Profile</a></li>
						<li><a href="ViewPostController"><i
								class="fa fa-pencil fa-fw"></i>View Your Post</a></li>
						<li class="divider"></li>
						<li><a href="LogoutController"><i class="fa fa-unlock"></i>Logout</a></li>
					</ul></li>
			</ul>
		</div>

		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<section class="banner">
	<div class="container">


		<div class="top_form">
			<h1>Profile Edit</h1>
			<form method="POST" action="SignUpController">
				<input type="text" name="fullname" placeholder="Full name" required>
				<br class="clear"> <input name="email" type="email"
					placeholder="Email" required> <input type="text"
					placeholder="Password"
					pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$"
					title="should be at least 6 letters and have at least one capital letter, one small letter,
one number "
					required> <br /> <select name="gender"
					class="form-control selectItem" id="selectGender">
					<option>Gender</option>
					<option>Male</option>
					<option>Female</option>

				</select>
				<div class="small_input left">
					<select name="state" class="form-control selectItem"
						id="selectState">

						<option value="">State</option>
						<option value="AL">Alabama</option>
						<option value="AK">Alaska</option>
						<option value="AZ">Arizona</option>
						<option value="AR">Arkansas</option>
						<option value="CA">California</option>
						<option value="CO">Colorado</option>
						<option value="CT">Connecticut</option>
						<option value="DE">Delaware</option>
						<option value="DC">District Of Columbia</option>
						<option value="FL">Florida</option>
						<option value="GA">Georgia</option>
						<option value="HI">Hawaii</option>
						<option value="ID">Idaho</option>
						<option value="IL">Illinois</option>
						<option value="IN">Indiana</option>
						<option value="IA">Iowa</option>
						<option value="KS">Kansas</option>
						<option value="KY">Kentucky</option>
						<option value="LA">Louisiana</option>
						<option value="ME">Maine</option>
						<option value="MD">Maryland</option>
						<option value="MA">Massachusetts</option>
						<option value="MI">Michigan</option>
						<option value="MN">Minnesota</option>
						<option value="MS">Mississippi</option>
						<option value="MO">Missouri</option>
						<option value="MT">Montana</option>
						<option value="NE">Nebraska</option>
						<option value="NV">Nevada</option>
						<option value="NH">New Hampshire</option>
						<option value="NJ">New Jersey</option>
						<option value="NM">New Mexico</option>
						<option value="NY">New York</option>
						<option value="NC">North Carolina</option>
						<option value="ND">North Dakota</option>
						<option value="OH">Ohio</option>
						<option value="OK">Oklahoma</option>
						<option value="OR">Oregon</option>
						<option value="PA">Pennsylvania</option>
						<option value="RI">Rhode Island</option>
						<option value="SC">South Carolina</option>
						<option value="SD">South Dakota</option>
						<option value="TN">Tennessee</option>
						<option value="TX">Texas</option>
						<option value="UT">Utah</option>
						<option value="VT">Vermont</option>
						<option value="VA">Virginia</option>
						<option value="WA">Washington</option>
						<option value="WV">West Virginia</option>
						<option value="WI">Wisconsin</option>
						<option value="WY">Wyoming</option>
					</select>
				</div>
				<div class="small_input right">
					<input name="city" type="text" placeholder="City" required>
				</div>
				<br class="clear"> <input name="street" type="text"
					placeholder="Street" required>

				<div class="small_input left">
					<input type="text" name="zip" placeholder="Zip Code" required>
				</div>
				<div class="small_input right">


					<select name="birthyear" class="form-control selectItem">
						<option value="">Birth Year</option>
						<option value="2016">2016</option>
						<option value="2015">2015</option>
						<option value="2014">2014</option>
						<option value="2013">2013</option>
						<option value="2012">2012</option>
						<option value="2011">2011</option>
						<option value="2010">2010</option>
						<option value="2009">2009</option>
						<option value="2008">2008</option>
						<option value="2007">2007</option>
						<option value="2006">2006</option>
						<option value="2005">2005</option>
						<option value="2004">2004</option>
						<option value="2003">2003</option>
						<option value="2002">2002</option>
						<option value="2001">2001</option>
						<option value="2000">2000</option>
						<option value="1999">1999</option>
						<option value="1998">1998</option>
						<option value="1997">1997</option>
						<option value="1996">1996</option>
						<option value="1995">1995</option>
						<option value="1994">1994</option>
						<option value="1993">1993</option>
						<option value="1992">1992</option>
						<option value="1991">1991</option>
						<option value="1990">1990</option>
						<option value="1989">1989</option>
						<option value="1988">1988</option>
						<option value="1987">1987</option>
						<option value="1986">1986</option>
						<option value="1985">1985</option>
						<option value="1984">1984</option>
						<option value="1983">1983</option>
						<option value="1982">1982</option>
						<option value="1981">1981</option>
						<option value="1980">1980</option>
						<option value="1979">1979</option>
						<option value="1978">1978</option>
						<option value="1977">1977</option>
						<option value="1976">1976</option>
						<option value="1975">1975</option>
						<option value="1974">1974</option>
						<option value="1973">1973</option>
						<option value="1972">1972</option>
						<option value="1971">1971</option>
						<option value="1970">1970</option>
						<option value="1969">1969</option>
						<option value="1968">1968</option>
						<option value="1967">1967</option>
						<option value="1966">1966</option>
						<option value="1965">1965</option>
						<option value="1964">1964</option>
						<option value="1963">1963</option>
						<option value="1962">1962</option>
						<option value="1961">1961</option>
						<option value="1960">1960</option>
						<option value="1959">1959</option>
						<option value="1958">1958</option>
						<option value="1957">1957</option>
						<option value="1956">1956</option>
						<option value="1955">1955</option>
						<option value="1954">1954</option>
						<option value="1953">1953</option>
						<option value="1952">1952</option>
						<option value="1951">1951</option>
						<option value="1950">1950</option>
						<option value="1949">1949</option>
						<option value="1948">1948</option>
						<option value="1947">1947</option>
						<option value="1946">1946</option>
						<option value="1945">1945</option>
						<option value="1944">1944</option>
						<option value="1943">1943</option>
						<option value="1942">1942</option>
						<option value="1941">1941</option>
						<option value="1940">1940</option>
						<option value="1939">1939</option>
						<option value="1938">1938</option>
						<option value="1937">1937</option>
						<option value="1936">1936</option>
						<option value="1935">1935</option>
						<option value="1934">1934</option>
						<option value="1933">1933</option>
						<option value="1932">1932</option>
						<option value="1931">1931</option>
						<option value="1930">1930</option>
						<option value="1929">1929</option>
						<option value="1928">1928</option>
						<option value="1927">1927</option>
						<option value="1926">1926</option>
						<option value="1925">1925</option>
						<option value="1924">1924</option>
						<option value="1923">1923</option>
						<option value="1922">1922</option>
						<option value="1921">1921</option>
						<option value="1920">1920</option>
						<option value="1919">1919</option>
						<option value="1918">1918</option>
						<option value="1917">1917</option>
						<option value="1916">1916</option>
						<option value="1915">1915</option>
						<option value="1914">1914</option>
						<option value="1913">1913</option>
						<option value="1912">1912</option>
						<option value="1911">1911</option>
						<option value="1910">1910</option>
						<option value="1909">1909</option>
						<option value="1908">1908</option>
						<option value="1907">1907</option>
						<option value="1906">1906</option>
						<option value="1905">1905</option>
						<option value="1904">1904</option>
						<option value="1903">1903</option>
						<option value="1902">1902</option>
						<option value="1901">1901</option>
						<option value="1900">1900</option>
					</select>
				</div>
				<br class="clear"> <input type="submit" value="Save">
				<div class="or">
					<img src="view/images/or_bg.png" alt="">
				</div>
				<a href="feed.jsp"><input type="button" value="Go Back to Post Feed"
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
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>



</body>

</html>
