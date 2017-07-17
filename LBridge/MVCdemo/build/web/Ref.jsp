<%-- 
    Document   : Ref
    Created on : Jul 17, 2017, 12:11:24 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Add Chapter</title>
        <style>
            body
            {
                background-color: lightgray;
            }
            body h3
            {
                padding-left: 350px;
                font-family: monospace;
            }
        </style>
        <title>Admin panel</title>
    </head>
    <body>
       <form action="RefS" method="Post">
            <div class="container-fluid">
                <section class="container">
                    <div class="container-page">				
                        <div class="col-md-12">
                            <h3><font size="10%">Add Course Details</font></h3>

                            <div class="form-group col-lg-12">
                                <label>REFERENCE WEBSITE NAME :</label>
                                <input type="text" name="name" class="form-control" placeholder="Enter Reference Name" required="Plz Enter">
                            </div>
                            
                            <div class="form-group col-md-12">
                            <center><button type="submit" class="btn btn-primary">Submit</button></center>
                        </div>
                        </div>
                    </div>
                </section>
            </div>
       </form>
                
    </body>
</html>
<%@include file="Logout.jsp" %>