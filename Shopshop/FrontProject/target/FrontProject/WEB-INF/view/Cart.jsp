<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	
	
<title>Cart</title>
</head>
<body>

<div class="space"></div>
<div class="container">
	<h2 class="heading-one">Cart</h2>
	<c:if test="${not empty success }">
		<div class="alert alert-success">${success }</div>
	</c:if>
 	
 	<c:if test="${empty cartList }">
		<div class="alert alert-warning">You have not added any product
			into cart.</div>
	</c:if> 
	
	<c:if test="${empty cartList}">
		<table class="table table-bordered">
			<tr>
				<th>Product Name</th>
				<th>Description</th>
				<th>Price</th>
				<th width="135">Actions</th>
			</tr>
			<c:forEach items="${cartList}" var="cart">
				<tr>
				    <td>${cart.productname}</td>
					<td>${cart.productdescription}</td>
					<td>${cart.price}</td>
					<td><a href="<c:url value='/myCart/deleteItem/${cart.id}' />"><i
							class="fa fa-trash btn btn-danger btn-xs"></i></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
		<hr>
		<div class="pull-right">
			Total Amount: <em><b class="text-success">Rs ${totalAmount }</b></em>
			&nbsp; <a href="<c:url value="/order" /> "
				class="btn btn-outline-primary">Checkout</a>
		</div>
		<a href="<c:url value="Clearcart"/>
			class="btn btn-outline-danger">Clear Cart</a>
	
</div>

</body>
</html>
<%@include file="Footer.jsp"%>