 <%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
h1 {
	border: 0px cadetblue;
	padding-top: 10px;
	padding-right: 10px;
	padding-bottom: 10px;
	padding-left: 10px;
	color: white;
	text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
	font: right;
}

h2 {
	border: 0px cadetblue;
	padding-top: 10px;
	padding-right: 10px;
	padding-bottom: 10px;
	padding-left: 10px;
	color: gray;
	text-shadow: 1px 1px 2px black, 0 0 25px black, 0 0 5px white;
}

  .carousel-inner img {
      width: 80%; 
      margin: auto;
      height: 80%;
  }



</style>


</head>

<body style="background-color: #C0C0C0;">

	<h1>
		<font size="10"><span class="glyphicon glyphicon-gift"></span>
			Welcome to ShopSHOP</font>
	</h1>

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
						
							
									
									

						</ul></li>

<li class="dropdown">
<a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><font size="3.5"
							color="#F5FFFA">ProductCategory</font><span class="caret"></span></a>
						
						<ul class="dropdown-menu">

<li class="active">
<c:forEach items="${categoryList}" var="cat">
<a href="ProductByCategory/${cat.categoryId}">${cat.categoryId}<font size="3.5"
									color="black"></font></a>
									
									</c:forEach>
									
									</li>

</ul>
</li> 





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
					<li><a href="#"><span
							class="glyphicon glyphicon-user"></span><font color="#F5FFFA">
								Sign Up</font></a></li>
				</ul>



			</div>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<br>




	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">

			<div class="item active">
				<img src="resources/images/Carosel/image1.jpg" alt="Image1"
					width="1000" height="300">
				<div class="carousel-caption">
					<h3>Image 1</h3>
					<p>Nyc Look</p>
				</div>
			</div>

			<div class="item">
				<img src="resources/images/Carosel/image2.jpg" alt="Image2"
					width="1000" height="300">
				<div class="carousel-caption">
					<h3>Image2</h3>
					<p>Look Image</p>
				</div>
			</div>

			<div class="item">
				<img src="resources/images/Carosel/image3.jpg" alt="Image3"
					width="1000" height="300">
				<div class="carousel-caption">
					<h3>Image3</h3>
					<p>Look Image</p>
				</div>
			</div>

			<div class="item">
				<img src="resources/images/Carosel/image4.jpg" alt="Image3"
					width="1000" height="300">
				<div class="carousel-caption">
					<h3>Image4</h3>
					<p>Look Image</p>
				</div>
			</div>

			<div class="item">
				<img src="resources/images/Carosel/image5.jpg" alt="Image3"
					width="1000" height="300">
				<div class="carousel-caption">
					<h3>Image5</h3>
					<p>Look Photo</p>
				</div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only"><font color="Black">Previous</font></span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only"><font color="Black">Next</font></span>
		</a>
	</div>
	


	<h2>
		<font size="10">its my first Demo Page,not first
			but at least not last </font> <span
			class="glyphicon glyphicon-copyright-mark"> Copyright</span>
	</h2>

</body>
</html>
