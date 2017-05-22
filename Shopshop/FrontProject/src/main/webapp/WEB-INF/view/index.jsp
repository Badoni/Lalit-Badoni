<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

 <%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="Header.jsp" %>
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

		
	</div>
	


	<h2>
		<font size="10">its my first Demo Page,not first
			but at least not last </font> <span
			class="glyphicon glyphicon-copyright-mark"> Copyright</span>
	</h2>

</body>
</html>
