<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="p" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>



</head>
<body>
<script language="javascript">

alert("${msg}");

</script>

<p:form action="addPro" commandName="Product">
<table align="center">

<tr>
<td>Product Name :</td>
<td><p:input path="pname"/></td>
</tr>

<tr>
<td>Product Id :</td>
<td><p:input path="pid"/></td>
</tr>

<tr>
<td>Category Id :</td>
<td><p:input path="cid"/>
</td>

<tr>
<td>Product Price :</td>
<td><p:input path="pprice"/></td>
</tr>

<tr>
<td>Description :</td>
<td><p:input path="pdescription"/></td>
</tr>

<tr>
<td><input type="submit" value="Add Product" /></td>
</tr>

</table>
</p:form>


</body>
</html>