package com.cdac;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. Get array of selected IDs from checkboxes
        String[] selectedIds = request.getParameterValues("productIds");
        
        HttpSession s = request.getSession();
        List<Product> cart = (List<Product>) s.getAttribute("cart");
        if (cart == null) cart = new ArrayList<>();

        // 2. Loop through selected IDs and add each to the cart
        if (selectedIds != null) {
            for (String idStr : selectedIds) {
                int id = Integer.parseInt(idStr);
                Product p = ProductDAO.getProductById(id);
                if (p != null) {
                    cart.add(p);
                }
            }
        }

        s.setAttribute("cart", cart);
        response.sendRedirect("cart.jsp");
    }
}