<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- <link href="resources/css/logintest.css" rel="stylesheet"
type="text/css">
<link href="resources/css/bootstrap.min.css" rel="stylesheet"
type="text/css">
<link href="resources/css/bootstrap.css" rel="stylesheet"
type="text/css">
<link href="resources/css/bootstrap.css.map" rel="stylesheet"
type="text/css">
<link href="resources/css/bootstrap.min.css.map" rel="stylesheet"
type="text/css">
<link href="resources/css/bootstrap-theme.css" rel="stylesheet"
type="text/css">
<link href="resources/css/bootstrap-theme.css.map" rel="stylesheet"
type="text/css">
<link href="resources/css/bootstrap-theme.min.css" rel="stylesheet"
type="text/css">
<link href="resources/css/bootstrap-theme.min.css.map" rel="stylesheet"
type="text/css">
<script type="text/javascript" src="resources/js/table.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/Edit.js"></script>
<script type="text/javascript" src="resources/js/Login.js"></script>
<script type="text/javascript" src="resources/js/npm.js"></script -->

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="background-color: #C0C0C0;">
	<nav class="navbar navbar-inverse" style="background-color: #696969;">
		<div class="container-fluid">
			<div class="navbar-header">

				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<p class="navbar-brand">
					<font size="5" color="black">ShopKaar</font> <img
						src="resources/images/Carosel/image1.jpg" width="10" height="10">
				</p>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index"><font size="3.5"
							color="#F5FFFA">Home</font></a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><font size="3.5"
							color="#F5FFFA">Admin</font><span class="caret"></span></a>
						<ul class="dropdown-menu">

							<li class="active"><a href="pro"><font size="3.5"
									color="black">Product </font></a></li>

							<li class="active"><a href="cate"><font size="4"
									color="black">Category</font></a></li>

							<li class="active"><a href="supl"><font size="4"
									color="black">Supplier</font></a></li>

							<li class="active"><a href="head"><font size="4"
									color="black">Header</font></a></li>

						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><font size="3.5"
							color="#F5FFFA">ProductCategory</font><span class="caret"></span></a>

						<ul class="dropdown-menu">

							<li class="active"><c:forEach items="${categoryList}"
									var="cat">
									<a href="ProductByCategory/${cat.categoryId}">${cat.categoryId}><font
										size="3.5" color="black"></font></a>

								</c:forEach></li>

						</ul></li>





				</ul>


				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-control"
							placeholder="Find Your Product">
					</div>
					<button type="submit" class="btn btn-primary btn-md">Search</button>
				</form>



				<ul class="nav navbar-nav navbar-right">
					<li><a href="login"><span
							class="glyphicon glyphicon-log-in"></span><font color="#F5FFFA">
								Login</font></a></li>
					<li><a href="signup"><span
							class="glyphicon glyphicon-user"></span><font color="#F5FFFA">
								Sign Up</font></a></li>
				</ul>



			</div>
		</div>
	</nav>



</body>
</html>