/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.RefM;
import java.net.ConnectException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author badon
 */
public class RefD 
{

public boolean add(RefM m)
{
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","pass");
        PreparedStatement pmt=conn.prepareStatement("insert into Ref values (?)");
           pmt.setString(1,m.getName());
           int a=pmt.executeUpdate();
           if(a==1)
           {
               System.out.println("Done");
           }
           else
           {
               System.out.println("Not Done");
           }
    }
    
    catch(Exception e)
    {
        System.out.println(e);
    }
    return true;
}
}
