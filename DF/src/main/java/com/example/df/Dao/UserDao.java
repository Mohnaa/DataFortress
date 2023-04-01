package com.example.df.Dao;

import com.example.df.entity.User;
import com.example.df.servlets.DatabaseEncryption;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    // method to insert user to database
    public boolean saveUser(User user)
    {
        boolean f = false;
        try
        {
            // user---->database
            String query = "insert into userlogin(username, useremail, userpass, usermob) values(?, ?, ?, ?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getMob());
            pstmt.executeUpdate();
            f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }

    // Get user by user_email and user_password
    public User getUserByEmailAndPassword(String email, String password)
    {
        User user=null;
        try{
            String query = "select * from userlogin where useremail=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            ResultSet set = pstmt.executeQuery();
            if(set.next())
            {
                String encPass=set.getString("userpass");
                String decPass= DatabaseEncryption.decrypt(encPass);
                System.out.println(decPass);
                if(decPass.equals(password))
                {
                    user = new User();
                    // data from db
                    String name = set.getString("username");
                    String mob=set.getString("usermob");
                    String uemail=set.getString("useremail");
                    user.setName(name);
                    user.setEmail(uemail);
                    user.setPassword(password);
                    user.setMob(mob);
                }
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return user;
    }

//    public boolean updateUser(User user)
//    {
//        boolean f = false;
//        try
//        {
//            String query = "update user set name=?, email=?, password=?, about=?, profile=? where id=?";
//            PreparedStatement pstmt = con.prepareStatement(query);
//            pstmt.setString(1, user.getName());
//            pstmt.setString(2, user.getEmail());
//            pstmt.setString(3, user.getPassword());
//            pstmt.setString(4, user.getAbout());
//            pstmt.setString(5, user.getProfile());
//            pstmt.setInt(6, user.getId());
//            pstmt.executeUpdate();
//            f=true;
//        }
//        catch(Exception e)
//        {
//            e.printStackTrace();
//        }
//        return f;
//    }
}
