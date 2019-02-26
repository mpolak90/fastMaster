<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Test</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<table width="100%">
    <tr>
        <td height="750em" width="50%"><label><textarea id="display"></textarea></label>
            <h5 id="top">Zalogowany użytkownik: </h5></td>
        <td>
            <div class="menu">
                <table width="100%">
                    <c:forEach items="${groups}" step="2" varStatus="i">
                        <tr>
                            <c:forEach begin="0" end="1" varStatus="j">
                                <c:set var="index" value="${i.index + j.index}"/>
                                <td>
                                    <button class="function inside">${index < fn:length(groups) ? groups[index].name : ""}</button>
                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td height="110em">
            <table width="95%">
                <tr>
                    <td>
                        <a href="/admin">
                            <button class="function red">ADMIN</button>
                        </a>
                    </td>
                    <td>
                        <a href="/">
                            <button class="function red">WYLOGUJ</button>
                        </a>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <table width="100%">
                <tr>
                    <td>
                        <button id="payment" class="function green">PRZEJDŹ DO PŁATNOŚCI</button>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>