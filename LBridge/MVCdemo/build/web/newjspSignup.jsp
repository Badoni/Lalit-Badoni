<%-- 
    Document   : newjspSignup
    Created on : Jun 30, 2017, 1:19:46 PM
    Author     : badon
--%>
<%@include file="Home.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
       

        <title>Signup</title>
          
        <style>
            body
            {
                <%--   background-image: url("Images/signup.png"); --%>
                background-color: lightblue;
            }
        </style>
         
    </head>
    <body>
        <form action="SignupS" method="Post">
            <div class="container-fluid">
                <section class="container">
                    <div class="container-page">				
                        <div class="col-md-6">
                            <h3 class="dark-grey">Registration</h3>

                            <div class="form-group col-lg-12">
                                <label>Firstname</label>
                                <input type="text" name="fname" class="form-control" placeholder="Enter First name">
                            </div>

                            <div class="form-group col-lg-6">
                                <label>Secondname</label>
                                <input type="text" name="lname" class="form-control" placeholder="Enter Last Name">
                            </div>

                            <div class="form-group col-lg-6">
                                <label>email</label>
                                <input type="email" name="email" class="form-control" placeholder="Enter Email Id">
                            </div>

                            <div class="form-group col-lg-6">
                                <label>password</label>
                                <input type="password" name="password" class="form-control" placeholder="Enter Password">
                            </div>

                            <div class="form-group col-lg-6">
                                <label>City</label>
                                <input type="text" name="city" class="form-control" placeholder="Enter City">
                            </div>			

                            <div class="col-sm-6">
                                <input type="checkbox" class="checkbox" />Agree Our Terms and Conditions.
                            </div>


                        </div>

                        <div class="col-md-6">
                            <h3 class="dark-grey">Terms and Conditions</h3>
                            <p>
                                By clicking on "Register" you agree  My Terms and Conditions.
                            </p>
                            <p>
                                Should there be an error in the description or pricing of a product, we will provide you with a full refund.
                            </p>
                            <p>
                                Acceptance of an order by us is dependent on our suppliers ability to provide the product.
                            </p>

                            <button type="submit" class="btn btn-primary">Register</button>
                        </div>
                    </div>
                </section>
            </div>
        </form>

    </body>
</html>
