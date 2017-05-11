<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
<title>Check</title>
</head>
<body>
${msg}

	<fm:form action="${pageContext.request.contextPath}/addChe" commandName="Check">

		
		<table align="center">
		
		<tr>
		<c:if test="${not empty Check.checkname }">
        <td>Check Id :</td><td><fm:input path="checkId" disabled="true" readonly="true" /></td>
		<fm:hidden path="checkId" />
		</c:if>
		</tr>
		
			<tr>
				<td>Check Name :</td>
				<td><fm:input path="checkname"/></td>
			</tr>

            <tr>
				<td>Check Description :</td>
				<td><fm:input path="checkdescription" /><br>
				<td>
			</tr>
		
			<c:if test="${empty Check.checkname }">
			
				<tr>
						<td><input type="submit" value="Add" /></td>
				</tr>
		   
		    </c:if>
		
		<tr>
          <c:if test="${not empty Check.checkname }">
	      
	        <td><input type="submit" value="Update" /></td>
		  
		  </c:if>
        </tr>

</table>

	</fm:form>
	

	<c:if test="${not empty checkList}">

		<center>
			<h1>
				<font color="gold">CheckLIST</font>
			</h1>
		</center>

		<table class="table table-hover">

			<thead>
				<tr>
					<th>CheckName</th>
					<th>CheckDescription</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>


			<tbody>

				<c:forEach items="${checkList}" var="usr">

					<tr>
						<td>${usr.checkname}</td>
						<td>${usr.checkdescription}</td>
						<td><a href="updateCheck/${usr.checkId}">Update</a></td>
						<td><a href="deleteCheck/${usr.checkId}">Delete</a></td>
					</tr>
		
		    	</c:forEach>
			
			</tbody>

			

		</table>

	</c:if>


</body>
</html>