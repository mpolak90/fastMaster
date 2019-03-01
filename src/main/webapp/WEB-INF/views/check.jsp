<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rachunek</title>
    <link rel="stylesheet" href="/css/check.css">
</head>
<body>
<div class="check">
    <br>
    FastMaster Sp. z o.o.<br>
    ul. Coderslabowa 7<br>
    00-615 Warszawa<br>
    tel.: +48 22 123-45-67
    <table>
        <tr>
            <td>NIP: 911964258</td>
        </tr>
        <tr>
            <td>Data sprzedaży ${check.created}</td>
        </tr>
    </table>
    -----------------------------------------------------------<br>
    <b>PARAGON FISKALNY</b><br>
    -----------------------------------------------------------<br>
    <table>
        <c:forEach var="product" items="${check.products}">
            <tr>
                <td>${product.name}</td>
                <td>VAT${product.tax.value}%</td>
                <td>${product.solo_price} zł</td>
            </tr>
            <tr>
                <td>w tym VAT ${product.solo_price - (product.solo_price / (1 + (product.tax.value) / 100))} zł</td>
            </tr>
        </c:forEach>
    </table>
    -----------------------------------------------------------<br>
    <table style="text-align: center">
        <tr>
            <td></td>
            <td><b>SUMA:</b></td>
            <td></td>
            <td><b>${sum} zł</b></td>
        </tr>
    </table>
    -----------------------------------------------------------<br>
    <br>
    Rachunek nr #000${check.id}<br>
    Kasjer ${user.name}<br>
    <table>
        <tr>
            <td>Metoda płatności:</td>
            <td></td>
            <td>${check.payment.name}</td>
        </tr>
        <tr>
            <td>Kwota:</td>
            <td></td>
            <td>${sum} zł</td>
        </tr>
    </table>
</div>
<a href="/main/reset">
    <button>Oddaj paragon ;)</button>
</a>
</body>
</html>