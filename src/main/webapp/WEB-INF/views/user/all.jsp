<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Użytkownicy</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="/admin/user/add">
    <button class="function">Dodaj użytkownika</button>
</a>
<a href="/admin">
    <button class="function yellow">Wróć</button>
</a>
<table class="blueTable">
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.name}</td>
            <td><a href="/admin/user/details/${user.id}">
                <button>Szczegóły</button>
            </a></td>
            <td><a href="/admin/user/edit/${user.id}">
                <button>Edycja</button>
            </a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>