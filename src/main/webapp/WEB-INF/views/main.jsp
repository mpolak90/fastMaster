<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Kasa</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<table width="100%">
    <tr>
        <td height="740em" width="50%"><label>
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
                    <c:forEach items="${groups}" step="2" varStatus="i">
                        <tr>
                            <c:forEach begin="0" end="1" varStatus="j">
                                <c:set var="index" value="${i.index + j.index}"/>
                                <td>
                                    <c:if test="${index < fn:length(groups)}">
                                        <a href="/main/group/${groups[index].id}">
                                            <button class="function inside">${groups[index].name}</button>
                                        </a>
                                    </c:if>
                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td height="80em">
            <table width="95%">
                <tr>
                    <c:if test="${orders == null}">
                        <td>
                            <a href="/admin">
                                <button class="function red">ADMIN</button>
                            </a>
                        </td>
                        <td>
                            <a href="/main/logout">
                                <button class="function red">WYLOGUJ</button>
                            </a>
                        </td>
                    </c:if>
                    <c:if test="${orders != null}">
                        <td>
                            <a>
                                <button class="function grey">ADMIN</button>
                            </a>
                        </td>
                        <td>
                            <a>
                                <button class="function grey">WYLOGUJ</button>
                            </a>
                        </td>
                    </c:if>
                </tr>
            </table>
        </td>
        <td>
            <table width="100%">
                <tr>
                    <td>
                        <c:if test="${orders == null}">
                            <button id="payment" class="function grey">PRZEJDŹ DO PŁATNOŚCI</button>
                        </c:if>
                        <c:if test="${orders != null}">
                            <a href="/main/check/payment">
                                <button id="payment" class="function green">PRZEJDŹ DO PŁATNOŚCI</button>
                            </a>
                        </c:if>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>