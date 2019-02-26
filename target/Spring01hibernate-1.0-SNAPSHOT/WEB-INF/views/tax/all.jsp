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
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="/admin/tax/add"><button>Nowy podatek</button></a>
<a href="/admin"><button>POWRÓT</button></a>
<table>
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