<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Magazyn</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="/admin/store/add">
    <button class="function green small">Nowy surowiec</button>
</a>
<a href="/admin">
    <button class="function yellow small">POWRÓT</button>
</a>
<table class="blueTable">
    <tr>
        <th>Nazwa</th>
        <th>Cena jednostkowa</th>
        <th>Stan teoretyczny</th>
        <th>Wartość teoretyczna</th>
        <th>Dodaj ilość</th>
    </tr>
    <c:forEach items="${ingrendients}" var="ingrendient">
        <tr>
            <td>${ingrendient.name}</td>
            <td>${ingrendient.price}</td>
            <td>${ingrendient.quantity}</td>
            <td>${ingrendient.price * ingrendient.quantity}</td>
            <td><a href="/admin/store/delivery/${ingrendient.id}"><button>Dodaj</button></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>