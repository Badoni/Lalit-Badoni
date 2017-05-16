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

<style>

div.gallery {
    border: 1px solid #ccc;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}

* {
    box-sizing: border-box;
}

.responsive {
    padding: 0 6px;
    float: left;
    width: 24.99999%;
}

@media only screen and (max-width: 700px){
    .responsive {
        width: 49.99999%;
        margin: 6px 0;
    }
}

@media only screen and (max-width: 500px){
    .responsive {
        width: 100%;
    }
}

.clearfix:after {
    content: "";
    display: table;
    clear: both;
}

</style>

<title>Insert title here</title>
</head>
<body>

<%--      <div class=" ${cp.productname}"></div>
       <p class="${cp.productdescription}"></p>
 --%>      


<div class="responsive">
<pc:forEach items="${listCategoryProduct}" var="cp">    

  <div class="gallery">
        <img src="${image}${cp.productId}.jpg" class="img-responsive"  alt="${cp.productname}" width="300" height="200">
    <div class="desc"><a href="${pageContext.request.contextPath}/More/${cp.productId}">More Details</a></div>
  </div>
</pc:forEach>

</div>
          




</body>
</html>
