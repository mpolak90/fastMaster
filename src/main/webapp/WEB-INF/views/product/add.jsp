<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj nowy produkt</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<form:form method="post" modelAttribute="product">
    <table class="blueTable">
        <tr>
            <td>Nazwa produktu:</td>
            <td><form:input path="name" required="true"/></td>
            <td><form:errors path="name"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td>Składniki:</td>
            <td><form:select path="ingrendients" required="true">
                <form:options items="${ingrendients}" itemLabel="name" itemValue="id"/>
            </form:select></td>
            <td><form:errors path="ingrendients"
                             cssClass="error" /></td>
        </tr>
        <tr>
            <td>Grupa:</td>
            <td><form:select path="productsGroup">
                <form:options items="${groups}" itemLabel="name" itemValue="id" required="true"/>
            </form:select></td>
            <td><form:errors path="productsGroup"
                             cssClass="error" /></td>
        </tr>
        <tr>
            <td>Cena solo:</td>
            <td><form:input path="solo_price" required="true"/></td>
            <td><form:errors path="solo_price"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td>Cena zestaw:</td>
            <td><form:input path="menu_price" /></td>
            <td><form:errors path="menu_price"
                             cssClass="error"/></td>
        </tr>
        <tr>
            <td>Stawka VAT:</td>
            <td><form:select path="tax" required="true">
                <form:options items="${taxes}" itemLabel="value" itemValue="id"/>
            </form:select></td>
            <td><form:errors path="tax"
                             cssClass="error" /></td>
        </tr>
        <tr>
            <td><a href="/admin/product/all"><button class="function yellow">Wróć</button></a></td>
            <td><input class="function green" type="submit" value="Dodaj"/></td>
            <td></td>
        </tr>
    </table>
</form:form>
</body>
</html>
