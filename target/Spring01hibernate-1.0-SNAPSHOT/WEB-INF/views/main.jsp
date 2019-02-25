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
                    <tr>
                        <td>
                            <button class="function inside">Zestawy</button>
                        </td>
                        <td>
                            <button class="function inside">Burgery</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button class="function inside">Napoje zimne</button>
                        </td>
                        <td>
                            <button class="function inside">Napoje ciepłe</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button class="function inside">Desery</button>
                        </td>
                        <td>
                            <button class="function inside">Dodatki</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button class="function inside">Sałatki</button>
                        </td>
                        <td>
                            <button class="function inside">Sosy</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button class="function inside">Sałatki</button>
                        </td>
                        <td>
                            <button class="function inside">Sosy</button>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td height="110em">
            <table width="95%">
                <tr>
                    <td>
                        <a href="/admin"><button class="function red">ADMIN</button></a>
                    </td>
                    <td>
                        <button class="function red">WYLOGUJ</button>
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