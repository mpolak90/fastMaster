<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mateusz
  Date: 25.02.19
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Magazyn</title>
</head>
<body>
<table>
    <tr>
        <td>Nazwa</td>
        <td>Cena jednostkowa</td>
        <td>Stan teoretyczny</td>
        <td>Wartość teoretyczna</td>
    </tr>
    <c:forEach items="${ingredients}" var="ingredient">
        <tr>
            <td>${ingredient.name}</td>
            <td>${ingredient.price}</td>
            <td>${ingredient.quantity}</td>
            <td>${ingredient.price * ingredient.quantity}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
