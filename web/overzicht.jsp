<%@ page import="model.db.TakenDB" %>
<%@ page import="model.domain.Taak" %>
<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: Lorenzo
  Date: 22/02/2020
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Taken aanmaken
    Taak web2 = new Taak("Web2 labo 4", LocalDate.of(2020, 03, 03), 1);
    Taak db = new Taak("Databanken oef", LocalDate.of(2020, 02, 26), 5);
    Taak netw2 = new Taak("Netw2 labo 1", LocalDate.of(2020, 02, 28), 3);

    // Databank aanmaken
    TakenDB takenDatabase = new TakenDB();

    // Taken toevoegen aan databank
    takenDatabase.voegTaakToe(web2);
    takenDatabase.voegTaakToe(db);
    takenDatabase.voegTaakToe(netw2);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Takenlijst - Overzicht</title>
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="index.jsp">Homepagina</a></li>
            <li><a href="voeg_toe.jsp">Voeg taak toe</a></li>
            <li><a href="#">Overzicht takenlijst</a></li>
        </ul>
    </nav>
</header>

<main>
    <h1>Takenlijst - Overzicht</h1>

    <article>
        <table>
            <thead>
            <tr>
                <th>Beschrijving</th>
                <th>Deadline</th>
                <th>Priotiteit</th>
            </tr>
            </thead>
            <tbody>
                <% for (Taak t: takenDatabase.getTakenlijst()) { %>
                        <tr>
                            <td> <%=t.getBeschrijving()%> </td>
                            <td> <%=t.getDeadline()%> </td>
                            <td> <%=t.getPrioriteit()%> </td>
                        </tr>
                <% } %>
            </tbody>
        </table>
        <p style="margin-top: 35px">De belangrijkste taak is: <span style="font-weight: bold"><%=takenDatabase.getBelangrijksteTaak()%></span>.</p>
    </article>

    <div id="knoppen">
        <a href="voeg_toe.jsp" class="voeg_toe">Voeg een taak toe</a>
        <a href="index.jsp">Homepagina</a>
    </div>
</main>

<footer>
    <address>© 2020 Lorenzo Catalano. All rights reserved.</address>
</footer>
</body>
</html>