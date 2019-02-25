<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mateusz
  Date: 25.02.19
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Groups</title>
</head>
<body>
<table>
    <tr>
        <th>Nazwa</th>
        <th>Funkcje</th>
    </tr>
    <c:forEach var="group" items="${groups}">
        <tr>
            <td>${group.name}</td>
            <td><a href="group/edit/${group.id}"><button>Edytuj</button></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>