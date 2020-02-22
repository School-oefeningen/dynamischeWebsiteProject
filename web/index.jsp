<%--
  Created by IntelliJ IDEA.
  User: Lorenzo
  Date: 22/02/2020
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Takenlijst - homepagina</title>
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="#">Homepagina</a></li>
            <li><a href="voeg_toe.jsp">Voeg taak toe</a></li>
            <li><a href="overzicht.jsp">Overzicht takenlijst</a></li>
        </ul>
    </nav>
</header>

<main>
    <h1>Takenlijst - Homepagina</h1>

    <article>
        <p>Maak een lijst met taken zodat ze altijd op tijd gemaakt zullen worden. Voeg een taak toe met een deadline. Het is ook mogelijk om de taak een prioriteit te geven (getal tussen 1 en 10). De taken zullen geordend zijn volgens de datum en de taak met de hoogste prioriteit zal gemarkeerd zijn.</p>
    </article>

    <ul id="knoppen">
        <li><a href="voeg_toe.jsp" class="voeg_toe">Voeg een taak toe</a></li>
        <li><a href="overzicht.jsp">Overzicht taken</a></li>
    </ul>
</main>

<footer>
    <address>© 2020 Lorenzo Catalano. All rights reserved.</address>
</footer>
</body>
</html>