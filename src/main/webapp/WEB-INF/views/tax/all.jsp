<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Podatki</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="/admin/tax/add"><button class="function green">Nowy podatek</button></a>
<a href="/admin"><button class="function yellow">POWRÓT</button></a>
<table class="blueTable">
    <tr>
        <th>Nazwa</th>
        <th>Stawka</th>
        <th>Usuń</th>
    </tr>
    <c:forEach var="tax" items="${taxes}">
        <tr>
            <td>${tax.name}</td>
            <td>${tax.value}%</td>
            <td><a href="/admin/tax/delete/"${tax.id}><button class="function red">Usuń</button></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>