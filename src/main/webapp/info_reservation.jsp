<%--
  Created by IntelliJ IDEA.
  User: cytech
  Date: 17/11/2024
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information sur réservation</title>
</head>
<body>
    <h1>Information de votre réservation :</h1>
    <%
        com.rsv.beans.Client client = (com.rsv.beans.Client) session.getAttribute("client");
        if (client == null) {
    %>
    <p style="color: red;">Vous devez d'abord vous inscrire.</p>
    <a href="Inscription.jsp">Aller à l'inscription</a>
    <br><br>
    <% } else {
        com.rsv.beans.Reservation reservation = client.getReservation();
    %>

        <h2>Information Client</h2>
        <% if (client != null) { %>
            <p><strong>Nom :</strong> <%= client.getNom() %></p>
            <p><strong>Prénom :</strong> <%= client.getPrenom() %></p>
            <p><strong>Téléphone :</strong> <%= client.getTelephone() %></p>
            <p><strong>Email :</strong> <%= client.getEmail() %></p>
        <% } %>

        <h2>Détail de la réservation</h2>
        <% if (reservation != null){ %>
            <p>Type d'appartement : <%= reservation.getType()%></p>
            <p>Prix : <%= reservation.getPrix()%></p>
            <%if (reservation.getOption() != null){%>
                <p>Options :</p>
                <% for ( String opt : reservation.getOption()){ %>
                    <p style="text-indent: 2em">- <%= opt %></p>
                <% }
            }
        }
    }%>
    <a href="index.jsp"><button>Aller à l'accueil</button></a>
    <a href="Reservation.jsp"><button>Aller à la réservation</button></a>
</body>
</html>
