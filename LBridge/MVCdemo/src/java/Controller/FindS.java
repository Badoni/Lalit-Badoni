
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author badoni
 */
public class FindS extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
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
                out.println("<table border='1'>");
                out.println("<tr>");
                out.println("<td>"+cn+"</td><br>");
                out.println("<td>"+intro+"</td>");
                out.println("<td>"+head1+"</td>");
                out.println("<td>"+head2+"</td>");
                out.println("<td>"+ex+"</td>");
                out.println("</tr>");
                out.println("</table>");
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
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
