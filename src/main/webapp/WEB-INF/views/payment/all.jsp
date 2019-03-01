<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Płatności</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="/admin/payment/add"><button class="function green">Dodaj rodzaj płatności</button></a>
<a href="/admin"><button class="function yellow">POWRÓT</button></a>
<table class="blueTable">
    <tr>
        <th>Dostępne płatności: </th>
    </tr>
    <c:forEach var="payment" items="${payments}">
        <tr>
            <td>${payment.name}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>