<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Informations Client</title>
</head>
    <body>
        <h1 style="color: green">Inscription avec succès</h1>
        <% com.rsv.beans.Client client = (com.rsv.beans.Client) session.getAttribute("client"); %>
        <% if (client != null){ %>
            <p>Nom : <%= client.getNom()%></p>
            <p>Prénom : <%= client.getPrenom()%></p>
            <p>Telephone : <%= client.getTelephone()%></p>
            <p>Email : <%= client.getEmail()%></p>
        <% } %>
        <a href="index.jsp"><button>Aller à l'accueil</button></a>
        <a href="Reservation.jsp"><button>Aller à la réservation</button></a>
    </body>
</html>
