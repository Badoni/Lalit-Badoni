<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ page isELIgnored="false"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="pc"%>
<%@include file="Header.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  
<title></title>
</head>
<body>
<pc:url value="/resources/images/" var="image" />
<center>

	<%--      <div class=" ${cp.productname}"></div>
       <p class="${cp.productdescription}"></p>
 --%>

	<%-- 
<div class="responsive">
<pc:forEach items="${listCategoryProduct}" var="cp">    

  <div class="gallery">
        <img src="${image}${cp.productId}.jpg" class="img-responsive"  alt="${cp.productname}" width="300" height="200">
    <div class="desc"><a href="${pageContext.request.contextPath}/More/${cp.productId}">More Details</a></div>
  </div>
</pc:forEach>

</div>
           --%>




 <pc:forEach items="${listCategoryProduct}" var="cp">
    <div class="col-sm-3">
        	<article class="col-item">
        		<div class="photo">
        			<a href="${pageContext.request.contextPath}/More/${cp.productId}"> <img class="card-img-top" src="${image}${cp.productId}.jpg" alt="${cp.productname}" class="img-responsive" alt="Product Image" > </a>
        		</div>
        		<div class="info">
        			<div class="row">
        				<div class="price-details col-md-6">
        					<p class="details">
        						Lorem ipsum dolor sit amet, consectetur..
        					</p>
        					<h1>Sample Product</h1>
        					<span class="price-new">$110.00</span>
        				</div>
        			</div>
        			<div class="separator clear-left">
        				<p class="btn-add">
        				<a href="${pageContext.request.contextPath}/More/${cp.productId}">More
						Details</a>
        					<i class="fa fa-shopping-cart"></i>	<a class="icon-shopping-cart"
				href="${pageContext.request.contextPath}/myCart/${cp.productId}" class="img-responsive" alt="Product Image">Add To Cart </a>
        				</p>
</div>
</div>

</article>
</div>
</pc:forEach>
</center>

</body>
</html>