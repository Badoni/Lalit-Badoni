<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#93A7F8;">
${msg}

<fm:form action="addUser" commandName="User">

<tr bgcolor="#999999">
<td colspan="2"><center><font size="5" color="800080"> Sign up  </font></center></td>
</tr>

<table  align="right">
<tr>
<td><font size="5" color="800080">First Name :</font></td><td><fm:input path="username"/></td>
</tr>

<tr>
<td><font size="5" color="800080">Second Name :</font></td><td><fm:input path="secondname"/></td>
</tr>

<tr>
u<td><font size="5" color="800080">Email :</font></td><td><fm:input path="email"/></td>
</tr>

<tr>
<td><font size="5" color="800080">Password :</font></td><td><fm:password path="password"/></td>
</tr>

<tr>
<td><font size="5" color="800080">Confirm Password :</font></td><td><fm:password path="cpassword"/></td>
</tr>

<tr>
<td><font size="5" color="800080">Phone Number :</font></td><td><fm:input path="pnumber"/></td>
</tr>

<tr>
<td><font size="5" color="800080">Place :</font></td><td><fm:input path="address"/></td>
</tr>

<tr>
<td><font size="5" color="800080">UserId :</font></td><td><fm:input path="userid"/></td>
</tr>


<tr>
<td colspan="2"><input type="submit" value="Save" /></td>
</tr>

</table>
</fm:form>

</body>
</html>