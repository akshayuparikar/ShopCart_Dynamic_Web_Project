# 🛒 ShopCart Dynamic Web Project

A Java-based Dynamic Web Application developed using Servlets, JSP, JDBC, and MySQL.  
This project demonstrates a simple Shopping Cart system with user authentication, product listing, and cart management.

---

## 📌 Project Features

- User Login & Logout using Sessions
- Product Listing
- Add Products to Shopping Cart
- JDBC-based Database Connectivity
- JSP-based User Interface
- MVC Architecture (Servlets + DAO + JSP)

---

## 🛠️ Technologies Used

- Java (JDK 17)
- Servlet & JSP (Jakarta EE)
- JDBC
- MySQL Database
- Apache Tomcat 10
- Eclipse IDE
- Git & GitHub

---

## 📁 Project Structure

ShopCart_Dynamic_Web_Project  
├── src  
│   └── main  
│       ├── java  
│       │   └── com.cdac  
│       │       ├── CartServlet.java  
│       │       ├── LoginServlet.java  
│       │       ├── LogoutServlet.java  
│       │       ├── Product.java  
│       │       ├── ProductDAO.java  
│       │       ├── UserDAO.java  
│       │       └── DBUtil.java  
│       │  
│       └── webapp  
│           ├── login.jsp  
│           ├── products.jsp  
│           ├── cart.jsp  
│           └── WEB-INF  
│               ├── web.xml  
│               └── lib  
│                   └── mysql-connector-j-9.3.0.jar  
│  
└── README.md  

---

## 🗄️ Database Configuration

### Database Name
shopcart

### Tables

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50)
);

CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    price DOUBLE
);

CREATE TABLE cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity INT
);

---

## ⚙️ How to Run the Project

1. Clone the repository  
git clone https://github.com/akshayuparikar/ShopCart_Dynamic_Web_Project.git

2. Import the project into Eclipse  
File → Import → Existing Projects into Workspace

3. Configure Apache Tomcat 10 in Eclipse

4. Update database credentials in DBUtil.java

5. Start MySQL server and create the database & tables

6. Run the project on server

7. Open browser and access  
http://localhost:8080/ShopCart_Dynamic_Web_Project/login.jsp

---

## 📚 Learning Outcomes

- Understanding Servlet and JSP communication
- JDBC CRUD operations
- MVC design pattern
- Session management
- Dynamic Web Application development using Java

---

## 🚀 Future Enhancements

- User Registration Module
- Product CRUD Operations
- Admin Panel
- Bootstrap-based UI
- Payment Gateway Integration
- Spring MVC / Spring Boot Version

---

## 👨‍💻 Author

Akshay Uparikar  
Computer Science | Java | Web Development

---

## 📄 License

This project is created for learning and academic purposes.
