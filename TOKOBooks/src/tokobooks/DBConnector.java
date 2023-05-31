/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tokobooks;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Masyitoh
 */
public class DBConnector {
    static Connection connection;
    
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/tokobuku ";   
    static final String USER = "root";
    static final String PASSWORD = "";
    
    public static void initDBConnection()
    {
        try
        {
        Class.forName(JDBC_DRIVER);
        
        connection = DriverManager.getConnection(DB_URL,  USER, PASSWORD); 
        
        if (connection != null)
        {
            System.out.println("Connection is established");
        }
        }catch(Exception ex){
            System.out.println(ex);
        }
    }
}
