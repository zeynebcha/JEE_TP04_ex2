package com.rsv.beans;

public class Client {
    private String nom;
    private String prenom;
    private String telephone;
    private String email;
    private Reservation reservation;

    public String getNom() {
        return nom;
    }
    public void setNom(String nom) {
        this.nom = nom.toUpperCase();
    }

    public String getPrenom() {
        return prenom;
    }
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getTelephone() {
        return telephone;
    }
    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public Reservation getReservation() {
        return reservation;
    }
    public void setReservation(Reservation reservation) {
        this.reservation = reservation;
    }
}
