package com.example.servlets;

// Name this file as FirstServlet.java
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/FirstServlet") // annotation

public class FirstServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    {
        try {
            response.setContentType("text/html");

            PrintWriter out = response.getWriter(); //send html back to client


            String n = request.getParameter("userName"); //retrieves a query parameter named username


            out.print("Welcome " + n);


            out.print("<a href='SecondServlet?uname=" + n + "'>visit</a>"); //used for sending to another servler

            out.close();
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }
}
