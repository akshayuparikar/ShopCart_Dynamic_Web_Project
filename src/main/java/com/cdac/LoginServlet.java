package com.cdac;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String u = request.getParameter("username");
        String p = request.getParameter("password");
        boolean ok = UserDAO.validate(u, p);
        if (ok) {
            HttpSession s = request.getSession();
            s.setAttribute("username", u);
            response.sendRedirect("products.jsp");
        } else {
            response.sendRedirect("login.jsp?error=1");
        }
    }
}
