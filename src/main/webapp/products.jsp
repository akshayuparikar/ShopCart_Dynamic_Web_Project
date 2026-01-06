<%@ page import="java.util.*,com.cdac.ProductDAO,com.cdac.Product" %>
<%
    String user = (String) session.getAttribute("username");
    if (user == null) { response.sendRedirect("login.jsp"); return; }
    List<Product> products = ProductDAO.getAllProducts();
%>
<html>
<head>
    <title>Products</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; background-color: #f8f9fa; padding: 20px; }
        .product-card { background: white; padding: 15px; border-radius: 8px; border: 1px solid #eee; margin-bottom: 10px; display: flex; align-items: center; justify-content: space-between; }
        .btn-bulk { background: #28a745; color: white; padding: 12px 25px; border: none; border-radius: 5px; cursor: pointer; font-weight: bold; font-size: 16px; margin-top: 20px; }
        .price { color: #28a745; font-weight: bold; }
    </style>
</head>
<body>
    <h2>Welcome, <%= user %></h2>
    
    <form action="CartServlet" method="post">
        <% for (Product p : products) { %>
            <div class="product-card">
                <label>
                    <input type="checkbox" name="productIds" value="<%= p.getId() %>">
                    <span style="font-size: 1.1em; margin-left: 10px;"><%= p.getName() %></span>
                </label>
                <span class="price"><%= String.format("%.2f", p.getPrice()) %></span>
            </div>
        <% } %>
        
        <input type="submit" value="Add Selected to Cart" class="btn-bulk">
    </form>
    
    <p><a href="cart.jsp">View Cart</a></p>
</body>
</html>