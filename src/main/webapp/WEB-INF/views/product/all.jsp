<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Produkty</title>
</head>
<body>
<a href="admin/product/add">
    <button>Dodaj nowy produkt</button>
</a>
<table>
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
        <td>${product.name}</td>
        <td>${product.productsGroup.name}</td>
        <td>${product.solo_price}</td>
        <td>${product.menu_price}</td>
        <td>${product.tax.value}</td>
        <td><a href="admin/product/details/${product.id}">
            <button>Zobacz</button>
        </a></td>
        <td><a href="admin/product/edit/${product.id}">
            <button>Edytuj</button>
        </a></td>
    </c:forEach>
</table>
</body>
</html>