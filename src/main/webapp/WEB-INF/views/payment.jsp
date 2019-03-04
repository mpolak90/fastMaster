<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Płatność</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<table width="100%">
    <tr>
        <td height="750em" width="50%"><label>
            <div id="display" readonly>
                <c:if test="${orders != null}">
                    <table class="blueTable">
                        <c:forEach items="${orders}" var="order">
                            <tr>
                                <td>${order.name}</td>
                                <td>${order.solo_price} zł</td>
                            </tr>
                        </c:forEach>
                        <tr>
                            <td><b>SUMA:</b></td>
                            <td><b>${sum} zł</b></td>
                        </tr>
                    </table>
                </c:if>
            </div>
        </label>
            <h5 id="top">Zalogowany użytkownik: ${user.name}</h5>
        </td>
        <td>
            <div class="menu">
                <table width="100%">
                    <c:if test="${payments != null}">
                        <c:forEach items="${payments}" var="payment">
                            <tr>
                                <td>
                                    <a href="/main/check/payment/add/${payment.id}">
                                        <button class="function inside">${payment.name}</button>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td height="110em">
            <table width="95%">
                <tr>
                    <td>
                        <a>
                            <button class="function grey">ADMIN</button>
                        </a>
                    </td>
                    <td>
                        <a href="/main">
                            <button class="function yellow">Powrót</button>
                        </a>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <table width="100%">
                <tr>
                    <td>
                        <a href="/main/reset">
                            <button id="payment" class="function red">Anuluj transakcję</button>
                        </a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>