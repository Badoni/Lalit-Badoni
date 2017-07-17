
package DAO;

import Model.DetailsModel;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author badoni
 */
public class DetailsDAO 
{

 public boolean add(DetailsModel s)
    {
       try
       {
       
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","pass");
           PreparedStatement pmt=conn.prepareStatement("insert into Details values (?,?,?,?,?)");
           pmt.setString(1,s.getCname());
           pmt.setString(2,s.getIntro());
           pmt.setString(3,s.getHeading1());
           pmt.setString(4,s.getHeading2());
           pmt.setString(5,s.getExample());
           int a=pmt.executeUpdate();
           if(a==1)
           {
               System.out.println("Complete");
           }
       }
       catch(Exception e)
       {
           System.out.println(e);
       }
       return true;
    }
    
}
