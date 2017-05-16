<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>


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


<title>Product</title>
</head>
<body>



	${msg}

	<fm:form action="${pageContext.request.contextPath}/addPro"
		commandName="product"  enctype="multipart/form-data" method="post">



		<table align="center">

			<tr>
				<p:if test="${not empty product.productname }">
					<td>Product Id :</td>
					<td><fm:input path="productId" disabled="true"
							readonly="true" /></td>
					<fm:hidden path="productId" />
			    </p:if>
			</tr>
			

			<tr>
				<td>Product Name :</td>
				<td><fm:input path="productname" /></td>
			</tr>

			
			<tr>
				<td>Product Decription :</td>
				<td><fm:input path="productdescription" /></td>
			</tr>

			
			<tr>
				<td>File upload :</td>
				<td><fm:input type="file" path="image" /></td>
			</tr>
		
		<tr>
		    <td>Supplier Id :</td>
		    <td>
		        <select name="supplierId">
					<p:forEach items="${supplierList}" var="yup">
						<option value="${yup.supplierId}">${yup.supplierId}</option>
					</p:forEach>
			    </select>
			</td>
		</tr>
		
		
		<tr>
		   <td> Category Id :</td>
		   <td>
		      <select name="categoryId">
		         <p:forEach items="${categoryList}" var="category">
		            <option value="${category.categoryId}">${category.categoryId}</option>
		         </p:forEach>
		      </select>
		   </td>
		</tr>
			
		
			<p:if test="${empty product.productname }">
                
                <tr>
					<td><input type="submit" value="Add" /></td>
				</tr>
				
			</p:if>

			<tr>
				<p:if test="${not empty product.productname }">
					<td><input type="submit" value="Update" /></td>
			    </p:if>
			</tr>
			
		</table>

	</fm:form>


	<p:if test="${not empty productList}">

		<center>
			<h1>
				<font color="gold">ProductLIST</font>
			</h1>
		</center>

		<table class="table table-hover">

			<thead>
				<tr>
					<th>Product Name</th>
					<th>Product City</th>
					<th>Change</th>
					<th>Delete</th>
                    <th>Image</th>
				</tr>
			</thead>


			<tbody>

				<p:forEach items="${productList}" var="sup">

					<tr>
						<td>${sup.productname}</td>
						<td>${sup.productdescription}</td>
						<td><a href="updateProduct/${sup.productId}">Update</a></td>
						<td><a href="deleteProduct/${sup.productId}">Delete</a></td>
						<td><img alt="${sup.productname}" src="resources/images/${sup.productId}.jpg" width="20" height="25"></td>
					</tr>


                </p:forEach>
			
			</tbody>


		</table>

	</p:if>
	
	<%-- <table>
	<p:forEach var="product" items="${productList}">
	
	<img alt="${product.productname}" src="resources/images/${product.productId}.jpg">
	
	</p:forEach>
	
	</table> --%>

</body>
</html>