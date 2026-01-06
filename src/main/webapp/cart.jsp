<%@ page import="java.util.*,com.cdac.Product" %>
<%
String user = (String) session.getAttribute("username");
if (user == null) { response.sendRedirect("login.jsp"); return; }
List<Product> cart = (List<Product>) session.getAttribute("cart");
double total = 0.0;
%>
<html>
<head>
    <title>Cart</title>
    <style>
        body { font-family: sans-serif; background: #f9f9f9; padding: 40px; }
        .container { max-width: 500px; margin: auto; background: white; padding: 25px; border-radius: 12px; box-shadow: 0 4px 10px rgba(0,0,0,0.1); }
        .item { display: flex; justify-content: space-between; padding: 10px 0; border-bottom: 1px solid #f0f0f0; }
        .total { font-size: 1.3em; font-weight: bold; text-align: right; margin-top: 20px; color: #333; }
        .actions { margin-top: 25px; border-top: 1px solid #eee; padding-top: 15px; }
        .btn-back { color: #1976d2; text-decoration: none; }
    </style>
</head>
<body>
<div class="container">
    <h2>Your Cart</h2>
    <p>User: <b><%= user %></b></p>
    <%
    if (cart != null && !cart.isEmpty()) {
      for (Product p : cart) {
        total += p.getPrice();
    %>
    <div class="item">
        <span><%= p.getName() %></span>
        <span><%= String.format("%.2f", p.getPrice()) %></span>
    </div>
    <%
      }
    } else {
    %><p style="color:#666;">Your cart is empty</p><%
    }
    %>
    <div class="total">Total: <%= String.format("%.2f", total) %></div>
    
    <div class="actions">
        <a href="products.jsp" class="btn-back">Back to Products</a> | 
        <a href="LogoutServlet" style="color:red; text-decoration:none;">Logout</a>
    </div>
</div>
</body>
</html>