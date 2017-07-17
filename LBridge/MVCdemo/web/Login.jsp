<%-- 
    Document   : Login
    Created on : Jul 1, 2017, 11:30:44 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Home.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
        <style>
              body
              {
                  background-color: beige;
              }
        </style>
    </head>
    <body>
        <div class="container">
         
            <form class="form-horizontal" action="LoginS" method="Post" >
                
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Username:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="text" placeholder="Enter Username" name="name">
      </div>
    </div>
                
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
      </div>
    </div>
                
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
            <center><label><input type="checkbox" name="remember"> Remember me</label></center>
        </div>
      </div>
    </div>
                
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
          <center><button type="submit" class="btn btn-primary btn-block">Submit</button></center>
      </div>
    </div>
  </form>
            
        </div>
    </body>
</html>
<%@include file="Footer.jsp"%>