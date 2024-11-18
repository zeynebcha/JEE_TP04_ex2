package com.rsv.servlet;

import com.rsv.beans.Client;
import com.rsv.beans.Reservation;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class Creer_Reservation extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupérer les informations client depuis la session
        HttpSession session = request.getSession();
        Client client = (Client) session.getAttribute("client");

        if (client == null) {
            //Si le client n'est pas inscrit, il est redirigé vers la page d'inscription
            response.sendRedirect("Inscription.jsp");
        }else{
            request.getRequestDispatcher("Inscription.jsp").forward(request, response);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupérer les informations client depuis la session
        HttpSession session = request.getSession();
        Client client = (Client) session.getAttribute("client");

        //Obtention des informations de réservation
        String type = request.getParameter("type");
        String prixToString = request.getParameter("prix");
        String[] options = request.getParameterValues("options");

        //Aucun champs vide
        if (type == null || type.isEmpty() || prixToString == null || prixToString.isEmpty()) {
            request.setAttribute("error", "Veuillez remplir tous les champs.");
            request.getRequestDispatcher("Reservation.jsp").forward(request, response);
            return;
        }

        //Mettre le prix sous forme de variable double
        double prix;
        try {
            prix = Double.parseDouble(prixToString);
        }catch (NumberFormatException e){
            request.setAttribute("error", "Le prix doit être un nombre valide.");
            request.getRequestDispatcher("Reservation.jsp").forward(request, response);
            return;
        }

        //Création de la réservation
        Reservation reservation = new Reservation();
        reservation.setPrix(prix);
        reservation.setType(type);
        reservation.setOption(options);

        //Associer la réservation au client
        client.setReservation(reservation);

        //Mise à jour du client et de la reservation dans la session
        session.setAttribute("client", client);
        session.setAttribute("reservation", reservation);

        //Redirection vers l'affichage des infos de réservation
        response.sendRedirect("info_reservation.jsp");
    }
}
