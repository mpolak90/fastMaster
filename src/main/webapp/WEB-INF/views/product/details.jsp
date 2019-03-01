<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Szczegóły produktu ${product.name}</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="/admin/product/all">
    <button class="function yellow">Powrót</button>
</a>
<table class="blueTable">
    <tr>
        <td>Nazwa produktu</td>
        <td>${product.name}</td>
    </tr>
    <tr>
        <td>Grupa produktowa</td>
        <td>${product.productsGroup.name}</td>
    </tr>
    <tr>
        <td>Składniki:</td>
        <td>
            <ul>
                <c:forEach var="store" items="${product.ingrendients}">
                    <li>${store.name}</li>
                </c:forEach>
            </ul>
        </td>
    </tr>
    <tr>
        <td>Cena: </td>
        <td>${product.solo_price}</td>
    </tr>
</table>
</body>
</html>
