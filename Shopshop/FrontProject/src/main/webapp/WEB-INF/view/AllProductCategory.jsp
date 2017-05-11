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
<title>Insert title here</title>
</head>
<body>

<pc:forEach items="${listCategoryProduct}" var="cp">

 <img  alt="${cp.productname}" src="${image}${cp.productId}.jpg">
 
 
 <%---<img src="<c:url value='/resources/images/${cp.productId}.jpg'/>">--%>

</pc:forEach>

</body>
</html>