<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Groups</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="/admin/group/add"><button class="function green inside">Dodaj grupę</button></a>
<a href="/admin"><button class="function yellow inside">POWRÓT</button></a>
<table class="blueTable">
    <tr>
        <th>Nazwa</th>
        <th>Edytuj</th>
        <th>Usuń</th>
    </tr>
    <c:forEach var="productsGroup" items="${groups}">
        <tr>
            <td>${productsGroup.name}</td>
            <td><a href="/admin/group/edit/${productsGroup.id}">
                <button class="function inside">Edytuj</button>
            </a></td>
            <td><a href="/admin/group/delete/${productsGroup.id}"><button class="function red inside">Usuń</button></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>