<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

    <%@ page isELIgnored="false"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="pc"%>

<%@include file="Header.jsp"%>

<pc:url value="/resources/images/" var="image"/>
 

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
	
	
	

<title>${productData.productname} Phone</title>



</head>
<body>
	
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="${image}/${productData.productId}.jpg"  alt="${productData.productname}" /></div>
					</div>
						<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="${image}/${productData.productId}.jpg"  alt="${productData.productname}" /></a></li>
					</ul>
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">${productData.productname}</h3>
						<p class="product-description">${productData.productdescriptionfield1}</p>
						<h4 class="price">current price: <i class="fa fa-rupee"> 180</i></h4>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product!</p>
						
						<h5 class="colors">colors:
							<span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
							<span class="color green"></span>
							<span class="color blue"></span>
						</h5>
						<div class="action">
						<button class="add-to-cart btn btn-default" type="submit" value="addCart" >add to cart</button>
						</div>
				</div>
				<div class="col-xs-9">
                    <ul class="menu-items">
                        <li class="active">Detalle del producto</li>
                        <li>Garantía</li>
                        <li>Vendedor</li>
                        <li>Envío</li>
                    </ul>
              
			</div>
		      <div style="width:100%;border-top:1px solid silver">
                        <p style="padding:15px;">
                            <small>
                            Stay connected either on the phone or the Web with the Galaxy S4 I337 from Samsung. With 16 GB of memory and a 4G connection, this phone stores precious photos and video and lets you upload them to a cloud or social network at blinding-fast speed. With a 17-hour operating life from one charge, this phone allows you keep in touch even on the go. 

                            With its built-in photo editor, the Galaxy S4 allows you to edit photos with the touch of a finger, eliminating extraneous background items. Usable with most carriers, this smartphone is the perfect companion for work or entertainment.
                            </small>
                        </p>
                        <small>
                        <ul>
                            <li>Super AMOLED capacitive touchscreen display with 16M colors</li>
                            <li>Available on GSM, AT&T, T-Mobile and other carriers</li>
                            <li>Compatible with GSM 850 / 900 / 1800; HSDPA 850 / 1900 / 2100 LTE; 700 MHz Class 17 / 1700 / 2100 networks</li>
                            <li>MicroUSB and USB connectivity</li>
                            <li>Interfaces with Wi-Fi 802.11 a/b/g/n/ac, dual band and Bluetooth</li>
                            <li>Wi-Fi hotspot to keep other devices online when a connection is not available</li>
                            <li>SMS, MMS, email, Push Mail, IM and RSS messaging</li>
                            <li>Front-facing camera features autofocus, an LED flash, dual video call capability and a sharp 4128 x 3096 pixel picture</li>
                            <li>Features 16 GB memory and 2 GB RAM</li>
                            <li>Upgradeable Jelly Bean v4.2.2 to Jelly Bean v4.3 Android OS</li>
                            <li>17 hours of talk time, 350 hours standby time on one charge</li>
                            <li>Available in white or black</li>
                            <li>Model I337</li>
                            <li>Package includes phone, charger, battery and user manual</li>
                            <li>Phone is 5.38 inches high x 2.75 inches wide x 0.13 inches deep and weighs a mere 4.59 oz </li>
                        </ul>  
                        </small>
                    </div>
                </div>
		</div>
	</div>






</body>
</html>