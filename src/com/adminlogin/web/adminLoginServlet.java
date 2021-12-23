package com.adminlogin.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.http.HttpSession;

import com.adminlogin.database.adminLoginDao;




@WebServlet("/adminlogin")
public class adminLoginServlet extends HttpServlet {
    

    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        adminLoginDao loginDao = new adminLoginDao();
        
    

        try {
            if (loginDao.check(username,password)) {
  
                HttpSession session = request.getSession();
				session.setAttribute("username", username);
                response.sendRedirect("adminloginsuccess.jsp");

            } else {
                //HttpSession session = request.getSession();
                response.sendRedirect("adminlogin.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}