<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

${msg} 

<c:form action="addCat" commandName="Category">
<table align="center">

<tr>
<td>Category Name :</td>
<td><c:input path="cname"/></td>
</tr>

<tr>
<td>Category Id :</td>
<td><c:input path="cid"/></td>
</tr>

<tr>
<td>Category Description :</td>
<td><c:input path="cdescription"/></td>
</tr>

<tr>
<td><input type="submit" value="Add Category" /></td>
</tr>

</table>
</c:form>


</body>
</html>