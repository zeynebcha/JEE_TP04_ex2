package com.rsv.servlet;

import com.rsv.beans.Client;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class Creer_Client extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");

        //Aucun champs vide
        if(nom==null || prenom==null || telephone==null || email==null || nom.isEmpty() || prenom.isEmpty() || telephone.isEmpty() || email.isEmpty()){
            request.setAttribute("error", "Tous les champs doivent être remplis");
            request.getRequestDispatcher("Inscription.jsp").forward(request, response);
            return;
        }

        //Inscription du Client
        Client client = new Client();
        client.setNom(nom);
        client.setPrenom(prenom);
        client.setTelephone(telephone);
        client.setEmail(email);

        //Stockage de la session
        HttpSession session = request.getSession();
        session.setAttribute("client", client);

        response.sendRedirect("info_client.jsp");
    }
}
