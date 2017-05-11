<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>Sign-Up</title>
</head>
<body>
${msg}

<fm:form action="addUser" commandName="User">

<c:if test="${not empty user.username }">
Id<fm:input path="userId" disabled="true" readonly="true"/><br>
</c:if>
<table align="center">
<tr>
<td>Name :</td><td><fm:input path="username"/></td>
</tr>
<tr>
<td>Place :</td><td><fm:input path="address"/><br><td>
</tr>
<c:if test="${empty user.username }">
<tr>
<td><input type="submit" value="Add" /></td>
</tr>

</c:if>
</table>


<c:if test="${not empty user.username }">
<input type="submit" value="delet"/>
</c:if>

</fm:form>

<c:if test="${not empty userList}">

<center><h1><font color="gold">USERLIST</font></h1></center>

  <table class="table table-hover">
    
    <thead>
      <tr>
        <th>UserName</th>
        <th>Place</th>
        <th>Edit</th>
        <th>Delet</th>
      </tr>
    </thead>
    

    <tbody>

<c:forEach items="${userList}" var="usr">

      <tr>
        <td>${usr.username}</td>
        <td>${usr.address}</td>
        <td><a href="#">Edit</a></td>
        <td><a href="#">Delet</a></td>
      </tr>
</c:forEach>
     
    </tbody>
  

</table>

</c:if>

</body>
</html>