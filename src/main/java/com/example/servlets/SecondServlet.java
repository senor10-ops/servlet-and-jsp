package com.example.servlets;

// Name this file as SecondServlet.java

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/SecondServlet") // annotation
public class SecondServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    {
        try {

            response.setContentType("text/html");

            PrintWriter out = response.getWriter();


            String n = request.getParameter("uname");
            out.print("Hello " + n);

            out.close();
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }
}