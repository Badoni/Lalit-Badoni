<%-- 
    Document   : Home
    Created on : Jun 30, 2017, 12:17:24 PM
    Author     : badon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@page import="java.sql.*;" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>

        <nav class="navbar navbar-ligh" style="background-color: aqua;">
            <div class="container-fluid" >
                <div class="navbar-header">
                    <a class="navbar-brand" href="First.jsp">L/Bridge</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="First.jsp">Home</a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Subjects <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="active">                               <% 
try
{
    String a="select * from Details";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","pass");
    Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery(a);
    while(rs.next())
            {
                %>
                <option value="<%=rs.getString("CNAME")%>"><%=rs.getString("CNAME")%></option>
                <%
            }
}
catch(Exception e)
        {
            System.out.println(e);
        }
                                   %>
                            </li>

                    </li>
                </ul>
                </li>








                <li><a href="BookDetails.jsp">REFERENCE</a></li>
                </ul>


                <ul class="nav navbar-nav navbar-right">
                
                    <li><a href="Login.jsp"> Login</a></li>  
                </ul>
            </div>
        </nav>


    </body>
</html>
