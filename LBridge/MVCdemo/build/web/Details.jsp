<%-- 
    Document   : Add
    Created on : Jul 1, 2017, 8:48:39 PM
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
    </head>
    <body>
        <form action="DetailS" method="Post">
            <div class="container-fluid">
                <section class="container">
                    <div class="container-page">				
                        <div class="col-md-12">
                            <h3><font size="10%">Add Course Details</font></h3>

                            <div class="form-group col-lg-12">
                                <label>Course Name :</label>
                                <input type="text" name="cname" class="form-control" placeholder="Enter Course Name" required="Plz Enter">
                            </div>
                            
                            <div class="form-group col-lg-12">
                                <label>Introduction :</label>
                                <input type="text" name="intro" class="form-control" placeholder="Enter Course Introduction" required="Plz Enter">
                            </div>
                            
                            <div class="form-group col-lg-12">
                                <label>Heading 1 :</label>
                                <input type="text" name="heading1" class="form-control" placeholder="Enter First Heading" required="Plz Enter">
                            </div>
                            
                            <div class="form-group col-lg-12">
                                <label>Heading 2 :</label>
                                <input type="text" name="heading2" class="form-control" placeholder="Enter secound Heading" required="Plz Enter">
                            </div>
                            
                            <div class="form-group col-lg-12">
                                <label>Example :</label>
                                <input type="text" name="example" class="form-control" placeholder="Enter Example" required="Plz Enter">
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