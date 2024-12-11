package com.pharmacy.pharmacymanagement.Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseCon {
    public static Connection connectDb() {
        try {
            // Register the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish the connection to the database
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/pharmacy", "root", "1234");  // Update with actual password

            return conn;
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Database connection error: " + e.getMessage());
            return null;
        }
    }
}
