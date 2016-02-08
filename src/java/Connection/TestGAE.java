/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.*;
import com.google.appengine.api.utils.SystemProperty;

/**
 *
 * @author Prathamesh
 */
public class TestGAE {

    public Connection connect() {
        String url = null;
        Connection conn = null;
        try {
            if (SystemProperty.environment.value()
                    == SystemProperty.Environment.Value.Production) {
                // Connecting from App Engine.
                // Load the class that provides the "jdbc:google:mysql://"
                // prefix.
                Class.forName("com.mysql.jdbc.GoogleDriver");
                url
                        = "jdbc:google:mysql://rugportonline:rugportonline-mysql-instance/rugportdatabase?user=Pransh";
            } else {
                // Connecting from an external network.
                Class.forName("com.mysql.jdbc.Driver");
                url = "jdbc:mysql://173.194.86.129:3306?user=root";
            }

            conn = DriverManager.getConnection(url);
            ResultSet rs = conn.createStatement().executeQuery(
                    "SELECT 1 + 1");

        } catch (Exception e) {
            e.printStackTrace();

        }
        return conn;
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
            e.printStackTrace();
        }
    }
    
    
    
}
