<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>

<%@ include file="Header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style type="text/css">
body {
	margin: 0 auto;
	background-image: url("resources/images/login/logbackground.jpg");
	background-repeat: no-repeat;
	background-size: 100% 720px;
}

.container input {
	height: 45px;
	width: 300px;
	font-size: 18px;
	margin-bottom: 30px;
	margin-top: 17px;
	padding-left: 30px;
	padding-right: 60px;
}

.container button {
	height: 35px;
	margin-top: -20px;
	margin-left: 10px;
}
</style>

<title>SignUp</title>
</head>
<body>

<%-- 	${msg}
 --%>
	<div class="container">
		<fm:form action="${pageContext.request.contextPath}/addUser" commandName="user">


			<div class="form-group">
				<label class="control-label col-sm-2" for="userid"></label>
				<div class="col-sm-7">
					<input type="text" class="form-control" id="userid"
						placeholder="Enter Userid" name="userid">
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-2" for="username"></label>
				<div class="col-sm-7">
					<input type="text" class="form-control" id="username"
						placeholder="Enter Username" name="username">
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-2" for="password"></label>
				<div class="col-sm-7">
					<input type="password" class="form-control" id="password"
						placeholder="Enter Password" name="password">
				</div>
			</div>



			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
					<button type="submit" class="btn btn-default">SignUp</button>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-5"></div>
			</div>


		</fm:form>

	</div>


</body>
</html>