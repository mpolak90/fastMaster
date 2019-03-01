<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nowy podatek</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="/admin/payment/all"><button class="function yellow">Powrót</button></a>
<form:form method="post" modelAttribute="payment">
    <table class="blueTable">
        <tr>
            <td>Nazwa płatności:</td>
            <td><form:input path="name" required="true"/></td>
            <td><form:errors path="name"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td><a href="/admin"><button class="function yellow">Wróć</button></a>
            <td><input class="function green" type="submit" value="Dodaj"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>