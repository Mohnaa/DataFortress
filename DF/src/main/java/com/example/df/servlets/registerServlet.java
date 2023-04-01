package com.example.df.servlets;

import com.example.df.Dao.UserDao;
import com.example.df.entity.User;
import com.example.df.helper.ConnectionProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@MultipartConfig
public class registerServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html:charset=UTF-8");
        try(PrintWriter out = resp.getWriter())
        {
            // fetch all form data
            // String check = req.getParameter("check");
            String name = req.getParameter("username");
            String email = req.getParameter("useremail");
            String password = req.getParameter("userpass");
            String mob=req.getParameter("usermob");

            // create a user

            String encPass = DatabaseEncryption.encrypt(password);
            String encName = DatabaseEncryption.encrypt(name);
            String encMob = DatabaseEncryption.encrypt(mob);
            User user = new User(encName, email, encPass, encMob);
            // create a user dao object
            UserDao dao = new UserDao(ConnectionProvider.connectionProvider());
            if(dao.saveUser(user))
            {
                out.println("done");
                resp.sendRedirect("login.jsp");
                System.out.println("User registered successfully.");
            }
            else
            {
                out.println("error");
                System.out.println("User not registered!!");
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}