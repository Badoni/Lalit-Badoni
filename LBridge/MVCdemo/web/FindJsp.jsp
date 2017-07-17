<%-- 
    Document   : FindJsp
    Created on : Jul 17, 2017, 1:37:44 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .main-container{
    
background: #d53369; /* fallback for old browsers */
    }
.highlight  {
    width: 600px;
    color: white;
    background: rgba(0, 0, 0, 0.26);
    border-radius: 10px;
    padding: 8%;
    
	}
     </style>
        <title>${param.cname}</title>
    </head>
    <body>
        <%
              try 
        {
             String nm=request.getParameter("cname");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","pass");
     PreparedStatement pmt=conn.prepareStatement("select * from DETAILS where cname=?");
            pmt.setString(1, nm);
            ResultSet rs=pmt.executeQuery();
            if(rs.next())
            {
                String cn=rs.getString(1);
                String intro=rs.getString(2);
                String head1=rs.getString(3);
                String head2=rs.getString(4);
                String ex=rs.getString(5);
              %>
                
<div class ="main-container">

<div class=" highlight" style="margin-left:0;">

	<div class="row">
  
		 
        <ul>
            <li><h1>${param.cname}</h1></li>
            <li><%= intro %></li>
            <li><%= head1 %></li>
            <li><%= head2 %></li>
            <li><%= ex %></li>
        </ul>
        </div>
       
    </div>
	</div>
</div>
</div>
            <%
            }
            else
            {
                out.println("Book Not Found");
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
            %>
       
    </body>
</html>
