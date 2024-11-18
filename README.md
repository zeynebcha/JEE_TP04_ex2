
# TP4 : Gestion des données utilisateur et des réservations

Ce projet regroupe les implémentations des deux exercices du TP4. 
Il permet à un utilisateur de saisir des données via un formulaire, de les traiter et de les afficher, ainsi que de gérer une phase d'inscription et de réservation d'appartements.



Aperçu général : 

Ce projet est divisé en deux parties :

1. **Exercice 1 : Soumission et affichage des données** :
   - Permet à un utilisateur de saisir des données dans un formulaire.
   - Valide les données via un servlet.
   - Affiche les informations saisies dans une vue structurée.

2. **Exercice 2 : Gestion des réservations** :
   - Permet de gérer une inscription et une réservation d'appartement.
   - Valide les données utilisateur et les détails de réservation.
   - Affiche les informations validées dans des vues dédiées.

---


 -- Détails de l'implémentation

Exercice 1 : Soumission et affichage des données

  # Servlet FormController :

1. **Récupération des données** :
   - Extrait les champs `nom`, `prenom`, `sexe`, et `codePostal` de la requête HTTP.

2. **Validation** :
   - Vérifie que tous les champs sont remplis.
   - Redirige vers le formulaire avec un message d'erreur si des champs sont vides.

3. **Stockage des données** :
   - Instancie un objet `Client` (JavaBean).
   - Remplit cet objet avec les données validées.

4. **Transmission à la vue** :
   - Redirige vers `resultat.jsp` pour afficher les données.

 -- Pages JSP

- **formulaire.jsp** :
  - Formulaire permettant de saisir les informations utilisateur.
  - Affiche les messages d'erreur en cas de données manquantes.

- **resultat.jsp** :
  - Affiche les données validées sous forme de tableau.
----------------------------------------------------------------------------------------------------------------

Exercice 2 : Gestion des réservations

 -- Phase Inscription

1. **Servlet Creer_Client** :
   - Extrait et valide les données d'inscription (`nom`, `prenom`, `telephone`, `email`).
   - Redirige vers `Info_Client.jsp` avec un message de succès ou vers `Inscription.jsp` en cas d'erreur.

2. **Pages JSP** :
   - **Inscription.jsp** : Formulaire d'inscription.
   - **Info_Client.jsp** : Affiche les données validées.

 --Phase Réservation

1. **Servlet Creer_Reservation** :
   - Extrait et valide les informations de réservation (`type`, `prix`, `options`, etc.).
   - Redirige vers `Info_Reservation.jsp` ou `Reservation.jsp` en cas d'erreur.

2. **Pages JSP** :
   - **Reservation.jsp** : Formulaire de réservation.
   - **Info_Reservation.jsp** : Affiche les détails validés de la réservation.

---

 -- Instructions d'utilisation

1. **Installation** :
   - Déployez l'application sur un serveur compatible JEE (ex. : Apache Tomcat).

2. **Exercice 1** :
   - Accédez à `http://<adresse_serveur>/formulaire.jsp` pour saisir les données utilisateur.
   - Validez les informations, puis consultez les résultats sur `resultat.jsp`.

3. **Exercice 2** :
   - **Phase Inscription** :
     - Accédez à `http://<adresse_serveur>/Inscription.jsp` pour saisir vos informations.
     - Consultez les résultats sur `Info_Client.jsp`.
   - **Phase Réservation** :
     - Accédez à `http://<adresse_serveur>/Reservation.jsp` pour entrer les détails de réservation.
     - Consultez les informations validées sur `Info_Reservation.jsp`.

---
