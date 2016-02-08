package Connection;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Prathamesh
 */
import java.sql.*;
import com.google.appengine.api.utils.SystemProperty;

public class ConnectionPooling {

    public Connection connect() {

        String url = null;
        Connection conn=null;
        try {
        if (SystemProperty.environment.value() == SystemProperty.Environment.Value.Production) {
            // Connecting from App Engine.
            // Load the class that provides the "jdbc:google:mysql://"
            // prefix.
            Class.forName("com.mysql.jdbc.GoogleDriver");
             url = "jdbc:google:mysql://project-id:instance-name/databasename?user=******&password=******";
        } else {
            // Connecting from an external network.
            Class.forName("com.mysql.jdbc.Driver");
            url = "jdbc:mysql://instance-ip-address:3306/databasename?user=*****";
        }
        }catch (ClassNotFoundException e) {
         System.out.println("Where is your MySQL JDBC Google Driver?");
         e.printStackTrace();
         }
        try{
        conn = DriverManager.getConnection(url);
        if (conn!=null)
        {
            System.out.println("Done Bhai.. Finally");
        }
        }catch (SQLException e) {
         System.out.println("Problem is:" + e.getMessage());
         e.printStackTrace();
         }
        return conn;

        /*System.out.println("-------- MySQL JDBC Connection Testing ------------");
         try {
         Class.forName("com.mysql.jdbc.GoogleDriver");
         // Class.forName("com.mysql.jdbc.Driver");
         } catch (ClassNotFoundException e) {
         System.out.println("Where is your MySQL JDBC Google Driver?");
         e.printStackTrace();
         }
         System.out.println("MySQL JDBC-Google Driver Registered!");
         Connection connection = null;

         try {
         connection = DriverManager.getConnection("jdbc:google:mysql://rugportonline:rugportonline-mysql-instance/rugportdatabase?user=Pransh");
         } catch (SQLException e) {
         System.out.println("Problem is:" + e.getMessage());
         e.printStackTrace();
         }
         if (connection != null) {
         System.out.println("You made it, take control your database now!");
         return connection;
         } else {
         System.out.println("Failed to make connection!");
         return null;
         }*/
    }

    public static void main(String[] args) {
        ConnectionPooling cp = new ConnectionPooling();
        Connection con = cp.connect();
        try {
            Statement st = con.createStatement();
            String sql = ("SELECT * FROM ruginformation;");

            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                System.out.println(rs.getInt("RugId"));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
