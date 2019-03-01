<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edycja użytkownika ${user.name}</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<form:form method="post" modelAttribute="user">
    <table class="blueTable">
        <tr>
            <td>Imię:</td>
            <td><form:input path="firstName" required="true"/></td>
            <td><form:errors path="firstName"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td>Nazwisko:</td>
            <td><form:input path="lastName" required="true"/></td>
            <td><form:errors path="lastName"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td>PESEL:</td>
            <td><form:input path="pesel"/></td>
            <td><form:errors path="pesel"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td>Hasło:</td>
            <td><form:input type="number" path="password" required="true"/></td>
            <td><form:errors path="password"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td>Admin:</td>
            <td><form:checkbox path="admin"/></td>
            <td><form:errors path="admin"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td><a href="/admin/user/all">
                <button class="function yellow">Powrót</button>
            </a></td>
            <td><input class="function green" type="submit" value="Zapisz"/></td>
            <td></td>
        </tr>
    </table>
</form:form>
</body>
</html>