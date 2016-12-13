<%--
  Created by IntelliJ IDEA.
  User: anthonyfortney
  Date: 12/13/16
  Time: 2:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if((username.equals("admin") && password.equals("password"))){
        session.setAttribute("username" , username);
        response.sendRedirect("profile.jsp");
    }else response.sendRedirect("index.jsp");

%>

</body>
</html>