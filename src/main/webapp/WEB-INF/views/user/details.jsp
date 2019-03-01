<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Szczegóły użytkownika ${user.name}</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<table class="blueTable">
    <tr>
        <td>Imię:</td>
        <td>${user.firstName}</td>
    </tr>
    <tr>
        <td>Nazwisko:</td>
        <td>${user.lastName}</td>
    </tr>
    <tr>
        <td>PESEL:</td>
        <td>${user.pesel}</td>
    </tr>
</table>
<a href="/admin/user/all">
    <button class="function yellow">Powrót</button>
</a>
</body>
</html>