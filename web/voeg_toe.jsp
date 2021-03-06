<%--
  Created by IntelliJ IDEA.
  User: Lorenzo
  Date: 22/02/2020
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Takenlijst - Voeg taak toe</title>
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="index.jsp">Homepagina</a></li>
            <li><a href="#">Voeg taak toe</a></li>
            <li><a href="overzicht.jsp">Overzicht takenlijst</a></li>
        </ul>
    </nav>
</header>

<main>
    <h1>Takenlijst - Voeg taak toe</h1>

    <article>
        <form action="voegTaakToeFormServlet" method="post">
            <p>
                <label for="beschrijvingTaak">Beschrijving taak: </label>
                <input type="text" id="beschrijvingTaak" name="beschrijvingTaak" placeholder="Beschrijving taak">
            </p>
            <p>
                <label for="deadlineTaak">Deadline taak: </label>
                <input type="date" id="deadlineTaak" name="deadlineTaak" placeholder="Deadline taak">
            </p>
            <p>
                <label for="prioriteit">Prioriteit (optioneel): </label>
                <input type="number" id="prioriteit" name="prioriteit" min="1" max="10" placeholder="Prioriteit taak">
            </p>
            <p>
                <input type="submit" value="Voeg taak toe" id="taakSubmit" class="voeg_toe">
            </p>
        </form>
    </article>

    <div id="knoppen">
        <a href="index.jsp">Annuleer</a>
    </div>
</main>

<footer>
    <address>© 2020 Lorenzo Catalano. All rights reserved.</address>
</footer>
</body>
</html>