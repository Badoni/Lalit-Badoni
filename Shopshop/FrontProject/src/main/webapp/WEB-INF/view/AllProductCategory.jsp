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

<style type="text/css">
.productbox {
    background-color:#ffffff;
    padding:10px;
	margin:5px 0;
    border: 1px solid #cfcfcf;
    -moz-box-shadow: 2px 2px 4px 0px #cfcfcf;
    -webkit-box-shadow: 2px 2px 4px 0px #cfcfcf;
    -o-box-shadow: 2px 2px 4px 0px #cfcfcf;
    box-shadow: 2px 2px 4px 0px #cfcfcf;
    filter:progid:DXImageTransform.Microsoft.Shadow(color=#cfcfcf, Direction=134, Strength=4);
}

.producttitle {
    font-weight:bold;
    font-size:1.2em;
	padding:5px 0 5px 0;
}

.producttext {
    
}

.productprice {
	border-top:1px solid #dadada;
	padding-top:5px;
}

.pricetext {
	font-weight:bold;
	font-size:1.4em;
}
</style>

<title>Insert title here</title>
</head>
<body>


<div class="container-fluid">


<div class="col-sm-3">
<pc:forEach items="${listCategoryProduct}" var="cp">    
   <div class="productbox">
  
  
    
  <img src="${image}${cp.productId}.jpg" class="img-responsive"  alt="${cp.productname}" width="10%">
     <div class=" ${cp.productname}"></div>
       <p class="${cp.productdescription}"></p>
      
        
                    <a href="${pageContext.request.contextPath}/More/${cp.productId}">More Details</a>
               
          




</div>
</pc:forEach>
</div>
</div>



</body>
</html>
