<%-- 
    Document   : First
    Created on : Jul 1, 2017, 10:55:20 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Home.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <style>
       
            .carousel-inner>.item>img, .carousel-inner>.item>a>img 
      {
	width: 70%;
	margin: auto;
      }

      div.gallery
      {
          margin: 100px;
          border: 1px solid #ccc;
          float: left;
          width: 180px;
      }
      
      div.gallery:hover
      {
          border: 1px solid #777;
      }
      
      
  </style>
  <link rel="shortcut icon" href="Images/link.png"> 
    </head>
    <body>
          	<div class="container-fluid">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="Images/HTML.png" alt="..."
						width="460" height="345">
				</div>

				<div class="item">
					<img src="Images/css.png" alt="..."
						width="460" height="345">
				</div>

				<div class="item">
					<img src="Images/java.png" alt="..."
						width="460" height="345">
				</div>


			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"></a> 
                        <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"></a>
		</div>

                
                
               
                <br><br><br><br>
                 <div class="container" >
         
            <form class="form-horizontal" action="FindS" method="Post" >
                    <center>  
    <div class="form-group">
      <label class="control-label col-sm-4" for="cname" >Subject :</label>
      <div class="col-sm-5">
          <input type="text" class="form-control" id="text" placeholder="Enter Subject Name" name="cname" required=""> 
      </div>
    </div></center>
                <div class="form-group">        
      <div class="col-sm-offset-1 col-sm-10">
          <center><button type="submit" class="btn btn-info">Search</button></center>
      </div>
    </div>
                
                
                
            </form>
                 </div>    
</div>
                </body>

</html>
<%@include file="Footer.jsp" %>
