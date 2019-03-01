<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dostawa</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<form action="/admin/store/delivery/${store.id}" method="post">
    <table class="blueTable">
        <tr>
            <td>Obecny stan:</td>
            <td>${store.quantity}</td>
        </tr>
        <tr>
            <td>Dostawa:</td>
            <td><input type="number" name="deliv"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" class="function green" value="Dodaj"></td>
        </tr>
    </table>
</form>
</body>
</html>