<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mateusz
  Date: 25.02.19
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Podatki</title>
</head>
<body>
<table>
    <tr>
        <th>Nazwa</th>
        <th>Wysokość podatku</th>
    </tr>
    <c:forEach var="tax" items="taxes">
        <tr>
            <td>${tax.name}</td>
            <td>${tax.value}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>