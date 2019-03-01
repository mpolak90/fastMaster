<%--
  Created by IntelliJ IDEA.
  User: mateusz
  Date: 27.02.19
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logowanie</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<form method="post" action="/login">
    <table class="blueTable" style="margin-top: 200px">
        <tr>
            <td>
                Wpisz hasło:
            </td>
        </tr>
        <tr>
            <td>
                <input type="password" name="password"></td>
        </tr>
        <tr>
            <td>
                <input class="function" type="submit" value="OK">
            </td>
        </tr>
    </table>
</form>
</body>
</html>