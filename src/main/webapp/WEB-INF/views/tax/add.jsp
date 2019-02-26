<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: mateusz
  Date: 25.02.19
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nowy podatek</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="/admin/tax/all"><button class="function yellow">Powrót</button></a>
<form:form method="post" modelAttribute="tax">
    <table>
        <tr>
            <td>Krótki opis podatku:</td>
            <td><form:input path="name" required="true"/></td>
            <td><form:errors path="name"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td>Wartość (%)</td>
            <td><form:input type="number" min="0.0" step="0.1" max="100" path="value" required="true"/> %</td>
            <td><form:errors path="value"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td><input class="function green" type="submit" value="Dodaj"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>