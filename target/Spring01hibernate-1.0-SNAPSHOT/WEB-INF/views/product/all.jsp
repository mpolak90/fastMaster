<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Produkty</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="/admin/product/add">
    <button class="function green">Dodaj nowy produkt</button>
</a>
<a href="/admin">
    <button class="function yellow">Powrót</button>
</a>
<table class="blueTable">
    <tr>
        <th>Nazwa</th>
        <th>Grupa</th>
        <th>Cena solo</th>
        <th>Cena zestaw</th>
        <th>Podatek</th>
        <th>Szczegóły</th>
        <th>Edycja</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.name}</td>
            <td>${product.productsGroup.name}</td>
            <td>${product.solo_price} zł</td>
            <td>${product.menu_price} zł</td>
            <td>${product.tax.value} %</td>
            <td><a href="/admin/product/details/${product.id}">
                <button>Zobacz</button>
            </a></td>
            <td><a href="/admin/product/edit/${product.id}">
                <button>Edytuj</button>
            </a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>