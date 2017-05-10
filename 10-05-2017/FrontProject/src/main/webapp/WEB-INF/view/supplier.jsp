<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>



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


</head>

<title> Supplier </title>

<body>


	${msg}

	<fm:form action="${pageContext.request.contextPath}/addSup"
		commandName="supplier">



		<table align="center">

			<tr>
				<s:if test="${not empty supplier.suppliername }">
					<td>Supplier Id :</td>
					<td><fm:input path="supplierId" disabled="true"
							readonly="true" /></td>
					<fm:hidden path="supplierId" />
			    </s:if>
			</tr>
			

			<tr>
				<td>Supplier Name :</td>
				<td><fm:input path="suppliername" /></td>
			</tr>

			<tr>
				<td>Supplier City :</td>
				<td><fm:input path="suppliercity" /></td>
			</tr>

		
			<s:if test="${empty supplier.suppliername }">
                
                <tr>
					<td><input type="submit" value="Add" /></td>
				</tr>
				
			</s:if>

			<tr>
				<s:if test="${not empty supplier.suppliername }">
					<td><input type="submit" value="Update" /></td>
			    </s:if>
			</tr>
			
		</table>

	</fm:form>


	<s:if test="${not empty supplierList}">

		<center>
			<h1>
				<font color="gold">SupplierLIST</font>
			</h1>
		</center>

		<table class="table table-hover">

			<thead>
				<tr>
					<th>Supplier Name</th>
					<th>Supplier City</th>
					<th>Change</th>
					<th>Delete</th>
				</tr>
			</thead>


			<tbody>

				<s:forEach items="${supplierList}" var="sup">

					<tr>
						<td>${sup.suppliername}</td>
						<td>${sup.suppliercity}</td>
						<td><a href="updateSupplier/${sup.supplierId}">Update</a></td>
						<td><a href="deleteSupplier/${sup.supplierId}">Delete</a></td>
					</tr>

				</s:forEach>
			</tbody>


		</table>

	</s:if>

</body>
</html>