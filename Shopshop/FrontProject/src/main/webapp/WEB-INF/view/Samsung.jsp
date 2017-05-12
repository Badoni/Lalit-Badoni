<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

    <%@ page isELIgnored="false"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="pc"%>

<pc:url value="/resources/images/" var="image"/>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
	

<title>Samsung</title>
</head>
<body>





<h1> Hello </h1>
${productData.productdescription}
	<br>
 <img src="${image}/${productData.productId}.jpg"  alt="${productData.productname}" width="10%">








</body>
</html>