<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj grupę</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="/admin/group/all"><button class="function yellow">Powrót</button></a>
<form:form method="post" modelAttribute="group">
    <table class="blueTable">
        <tr>
            <td>Nazwa dla grupy:</td>
            <td><form:input path="name" required="true"/></td>
            <td><form:errors path="name"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input class="function green" type="submit" value="Dodaj"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>
