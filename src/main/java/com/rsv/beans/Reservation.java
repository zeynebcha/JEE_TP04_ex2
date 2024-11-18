package com.rsv.beans;

public class Reservation {
    private String type;
    private double prix;
    private String[] options;

    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }

    public double getPrix() {
        return prix;
    }
    public void setPrix(double prix) {
        this.prix = prix;
    }

    public String[] getOption() {
        return options;
    }
    public void setOption(String[] options) {
        this.options = options;
    }
}
