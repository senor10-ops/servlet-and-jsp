package com.example.servlets;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Cookie")
public class Cookies extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Create a cookie
        Cookie cookie = new Cookie("user", "Ashwin");

        // Set the cookie's lifetime to 1 hour (in seconds)
        cookie.setMaxAge(3600);

        // Add the cookie to the response
        response.addCookie(cookie);

        // Respond with a message
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h2>Cookie 'user=Ashwin' has been set!</h2>");
    }
}

