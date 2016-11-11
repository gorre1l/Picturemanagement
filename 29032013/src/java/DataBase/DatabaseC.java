/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBase;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
/**
 *
 * @author subbu
 */
public class DatabaseC {
    
    public static Connection getConnection()
	{
            Connection con1=null;
           try
           { 
             //step 1-load the class

              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                //step 2-establish the connection

              con1=DriverManager.getConnection("jdbc:odbc:oradsn","system","vikram");
      	    //Class.forName("com.ibm.db2.jcc.DB2Driver");
	    //con1=DriverManager.getConnection("jdbc:db2://localhost:50000/OLMS","db2admin","admin");
	   }
           catch (Exception e){
               System.out.print(e);
                }
    return con1; 
}
    
    
   
}
