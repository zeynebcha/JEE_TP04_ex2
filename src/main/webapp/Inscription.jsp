<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Inscription</title>
</head>
<body>
    <h1>Inscription</h1>

<form action="Creer_Client" method="post">
    <label>Nom : <input type="text" name="nom" value="<%= request.getParameter("nom") != null ? request.getParameter("nom") : "" %>"></label>
    <br><br><label>Prénom : <input type="text" name="prenom" value="<%= request.getParameter("prenom") != null ? request.getParameter("prenom") : "" %>"></label>
    <br><br><label>Téléphone : <input type="text" name="telephone" value="<%= request.getParameter("telephone") != null ? request.getParameter("telephone") : "" %>"></label>
    <br><br><label>Email : <input type="text" name="email" value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>"></label>
    <br><br><button type="submit">S'inscrire</button>
</form>

<% String error = (String) request.getAttribute("error"); %>
<% if (error !=null){ %>
<p style="color: red;"><%= error %></p>
<% } %>

</body>
</html>
