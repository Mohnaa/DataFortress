package com.example.df.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider extends com.mysql.cj.jdbc.Driver{
    private static Connection con;

    public ConnectionProvider() throws SQLException {
    }
    public static Connection connectionProvider() throws SQLException {
        try {
            if (con == null) {
                // driver class
                Class.forName("com.mysql.cj.jdbc.Driver");
//                Class.forName("org.sqlite.JDBC");
                // creating connection
                con = DriverManager.getConnection("jdbc:mysql://database-1.cvwpffwrr3eu.ap-northeast-1.rds.amazonaws.com:3306/datafortress", "admin", "1nikhil1");
//                con = DriverManager.getConnection(Details.getHostname(), Details.getUser(), Details.getPassword());
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return con;
    }
}

