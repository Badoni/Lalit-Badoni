<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>
<body style="background-color:#C0C0C0;">
	

	<nav class="navbar navbar-inverse" style="background-color: #696969;">
		<div class="container-fluid">
			<div class="navbar-header">

				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<p class="navbar-brand">
					<font size="5" color="black">ShopKaar</font>
				</p>
			</div>
			
			
				
				
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><font size="3.5"
							color="#F5FFFA">Home</font></a></li>





					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><font size="3.5"
							color="#F5FFFA">Keep in Touch</font><span class="caret"></span></a>
						<ul class="dropdown-menu">

							<li class="active"><a href="pro"><font size="3.5"
									color="black">Product </font></a></li>
							<li class="active"><a href="cate"><font size="4"
									color="black">Category</font></a></li>
							<li class="active"><a href="supl"><font size="4"
									color="black">Supplier</font></a></li>
							<li class="active"><a href="adm"><font size="4" 
							        color="red">Admin</font></a></li>
							       
						</ul>
						</li>



				</ul>


<form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Find Your Product">
      </div>
      <button type="submit" class="btn btn-primary btn-md">Search</button>
    </form>



<ul class="nav navbar-nav navbar-right">
					<li><a href="login"><span class="glyphicon glyphicon-log-in"></span><font color="#F5FFFA"> Login</font></a></li>
					<li><a href="signup"><span class="glyphicon glyphicon-user"></span><font color="#F5FFFA"> Sign Up</font></a></li>
</ul>
</div>
		</div>
	</nav>

</body>
</html>