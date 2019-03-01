<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj surowiec</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<form:form method="post" modelAttribute="store">
<table class="blueTable">
    <tr>
        <td>Nazwa surowca:</td>
        <td><form:input path="name" required="true"/></td>
        <td><form:errors path="name"
                         cssClass="error"/></td>
    </tr>
    <tr>
        <td>Cena jednostkowa:</td>
        <td><form:input path="price" required="true"/></td>
        <td><form:errors path="price"
                         cssClass="error"/></td>
    </tr>
    <tr>
        <td></td>
        <td><input class="function green" type="submit" value="Dodaj"/></td>
        <td></td>
    </tr>
</table>
</form:form>
</body>
</html>