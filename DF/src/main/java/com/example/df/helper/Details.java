package com.example.df.helper;

public class Details {
    private static String hostname="database-1.cvwpffwrr3eu.ap-northeast-1.rds.amazonaws.com:3306/datafortress";
    private static String user="admin";
    private static String password="1nikhil1";

    public static String getHostname() {
        return hostname;
    }

    public static String getUser() {
        return user;
    }

    public static String getPassword() {
        return password;
    }
}
