package com.example.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/registerForm.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("username");
        String email = request.getParameter("email");


        // Set attributes to be accessible in JSP
        request.setAttribute("username", name);
        request.setAttribute("email", email);

        System.out.println("Received username: " + name);
        System.out.println("Received email: " + email);


        request.getRequestDispatcher("/registerSuccess.jsp").forward(request, response);

    }
}
