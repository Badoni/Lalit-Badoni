<%-- 
    Document   : BookDetails
    Created on : Jul 16, 2017, 3:21:56 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="Home.jsp" %>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
        <title>REFERENCE</title>
    </head>
    
    <body>
       
        <%
           try
{
    String a="select * from Ref";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","pass");
    Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery(a);
    while(rs.next())
            {
                %>
                <h1> <center><a href="<%=rs.getString("NAME")%>"><%=rs.getString("NAME")%>></a></cenetr></h1><br>
                
    
                
                <%
            }
}
catch(Exception e)
{
System.out.println(e);
}
            %>
    <marquee behavior="alternate" bgcolor="#c1cdcd"><img src="Images/HtmlH.png" alt=".." width="500" height="250"> <img src="Images/JAVAH.png" alt=".." width="500" height="250"><img src="Images/Css3H.png" alt=".." width="500" height="250"></marquee>
    </body>
</html>
<%@include file="Footer.jsp" %>