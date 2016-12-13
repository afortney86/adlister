<%--
  Created by IntelliJ IDEA.
  User: anthonyfortney
  Date: 12/13/16
  Time: 10:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if((username.equals("admin") && password.equals("password"))){
        session.setAttribute("username" , username);
        response.sendRedirect("profile.jsp");
    }else response.sendRedirect("index.jsp");

%>

<html>
<head>
    <title>Please login</title>
</head>
<body>
    <form method="POST" action="login.jsp">
        <h1>Login</h1>
        <p>
            <label for="username">Username:</label>
            <input id="username" name="username" type="text" placeholder="Enter Username Here">
        </p>
        <p>
            <label for="password">Password:</label>
            <input id="password" name="password" type="password" placeholder="Enter Password Here">
        </p>
        <p>
            <button type="submit">Submit</button>
        </p>
    </form>


</body>
</html>
