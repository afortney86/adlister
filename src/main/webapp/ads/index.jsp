<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: anthonyfortney
  Date: 12/14/16
  Time: 1:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Ads</title>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/partials/navbar.jsp"/>

<table class="table table-bordered">
<thead>
    <c:forEach var="ad" items="${ads}">
        <tr>
            <td>${ad.title}</td>
            <td>${ad.description}</td>
        </tr>
    </c:forEach>
</thead>
</table>
</body>
</html>
