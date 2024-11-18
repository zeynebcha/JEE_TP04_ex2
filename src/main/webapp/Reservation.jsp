<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Réservation</title>
</head>
<body>
    <h1>Réservez un appartement</h1>

    <!-- Affichage des informations client -->
    <h2>Informations Client</h2>
    <%
        com.rsv.beans.Client client = (com.rsv.beans.Client) session.getAttribute("client");
        if (client == null){
    %>
            <p style="color: red;">Vous devez d'abord vous inscrire.</p>
            <a href="Inscription.jsp"><button>Aller à l'inscription</button></a>
            <br><br>
    <%
        } else {
    %>
            <p><strong>Nom :</strong> <%= client.getNom() %></p>
            <p><strong>Prénom :</strong> <%= client.getPrenom() %></p>
            <p><strong>Téléphone :</strong> <%= client.getTelephone() %></p>
            <p><strong>Email :</strong> <%= client.getEmail() %></p>



            <form action="Creer_Reservation" method="post">
                <label>Type d'Appartement :</label>
                <select name="type">
                    <option value="T1">T1</option>
                    <option value="T2">T2</option>
                    <option value="T3">T3</option>
                </select><br><br>
                <label>Prix :<input type="number" name="prix" step="0.01"></label><br><br>
                <label>Option :</label><br>
                <input type="checkbox" name="options" value="Piscine"> Piscine<br>
                <input type="checkbox" name="options" value="Proche de la mer"> Proche de la mer<br>
                <input type="checkbox" name="options" value="Jardin"> Jardin<br>
                <input type="checkbox" name="options" value="Proche des transports"> Proche des transports<br>
                <input type="checkbox" name="options" value="Centre Ville"> Centre Ville<br><br>
                <button type="submit">Réserver</button>
            </form>

            <% String error = (String) request.getAttribute("error"); %>
            <% if (error != null){ %>
                <p style="color: red;"><%= error %></p>
            <%
            }
        }
            %>

</body>
</html>
