package com.example.df.servlets;

import com.example.df.Dao.UserDao;
import com.example.df.entity.User;
import com.example.df.helper.ConnectionProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

public class loginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html:charset=UTF-8");
        try(PrintWriter out = resp.getWriter())
        {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");
            out.println("</head>");
            out.println("<body>");

            // fetch all form data

            // String check = req.getParameter("check");
            String userEmail = req.getParameter("useremail");
            String userPassword = req.getParameter("userpass");

            // check if the user is registered
            UserDao dao = new UserDao(ConnectionProvider.connectionProvider());
            User u = dao.getUserByEmailAndPassword(userEmail, userPassword);
            if(u==null)
            {
                resp.sendRedirect("loginpage.jsp");
                System.out.println("Login unsuccessful...Invalid details..try again...");
            }
            else
            {
                System.out.println("Login successful");
                System.out.println(u.getEmail());
                HttpSession s = req.getSession();
                s.setAttribute("currentUser", u);
                resp.sendRedirect("profile.jsp");
            }


            out.println("</body>");
            out.println("</html>");
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}

