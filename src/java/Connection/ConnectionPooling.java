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
        Connection conn = null;
        try {
            if (SystemProperty.environment.value() == SystemProperty.Environment.Value.Production) {
                Class.forName("com.mysql.jdbc.GoogleDriver");
                url = "jdbc:google:mysql://rugportonline:rugportonline-mysql-instance/rugportdatabase?user=root&password=Pransh@1326";
            } else {
                // Connecting from an external network.
                Class.forName("com.mysql.jdbc.Driver");
                url = "jdbc:mysql://173.194.254.120:3306/rugportdatabase?user=Pransh";
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            conn = DriverManager.getConnection(url);
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return conn;
        
    }
}
        /*
         System.out.println("-------- MySQL JDBC Connection Testing ------------");

	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		System.out.println("Where is your MySQL JDBC Driver?");
		e.printStackTrace();
	}
	System.out.println("MySQL JDBC Driver Registered!");
	Connection connection = null;

	try {
		connection = DriverManager
		.getConnection("jdbc:mysql://127.0.0.1:3306/RugportDatabase","root", "Pransh@1326");

	} catch (SQLException e) {
		System.out.println("Connection Failed! Check output console");
		e.printStackTrace();
		
	}

	if (connection != null) {
		System.out.println("You made it, take control your database now!");
                return connection;
	} else {
		System.out.println("Failed to make connection!");
                return null;
	}
        
    }
}
/*

import java.sql.*;

public class ConnectionPooling {
    
    public Connection connect()
    {
        System.out.println("-------- MySQL JDBC Connection Testing ------------");

	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		System.out.println("Where is your MySQL JDBC Driver?");
		e.printStackTrace();
	}

	System.out.println("MySQL JDBC Driver Registered!");
	Connection connection = null;

	try {
		connection = DriverManager
		.getConnection("jdbc:mysql://127.0.0.1:3306/RugportDatabase","root", "Pransh@1326");

	} catch (SQLException e) {
		System.out.println("Connection Failed! Check output console");
		e.printStackTrace();
		
	}

	if (connection != null) {
		System.out.println("You made it, take control your database now!");
                return connection;
	} else {
		System.out.println("Failed to make connection!");
                return null;
	}
    }
}*/