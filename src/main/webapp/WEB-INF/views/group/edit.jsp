<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zmień nazwę</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="/admin/group/all"><button class="function yellow">Powrót</button></a>
<form:form method="post" modelAttribute="group">
    <table>
        <tr>
            <td>Nazwa dla grupy:</td>
            <td><form:input path="name" required="true"/></td>
            <td><form:errors path="name"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td><input class="function green" type="submit" value="Zapisz"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>
