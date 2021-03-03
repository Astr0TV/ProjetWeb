/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.model;

import java.sql.Date;

/**
 *
 * @author Huawei
 */
public class Compte {
        private int id;
    private String solde;
    private int nucompte;
    private int nucarte;
    private boolean etatcarte;
    private String paiment;
    private Date date_expiration;
    private User user;
    
    public Compte (){
    
          }

    public Compte(String solde,int nucompte , int nucarte, boolean etatcarte, String paiment, Date date_expiration, User user) {
        this.solde = solde;
        this.nucompte = nucompte;
        this.nucarte = nucarte;
        this.etatcarte = etatcarte;
        this.paiment = paiment;
        this.date_expiration = date_expiration;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSolde() {
        return solde;
    }

    public void setSolde(String solde) {
        this.solde = solde;
    }

    public int getNucompte() {
        return nucompte;
    }

    public void setNucompte(int nucompte) {
        this.nucompte = nucompte;
    }
    
    

    public int getNucarte() {
        return nucarte;
    }

    public void setNucarte(int nucarte) {
        this.nucarte = nucarte;
    }

    public boolean isEtatcarte() {
        return etatcarte;
    }


    public void setEtatcarte(boolean etatcarte) {
        this.etatcarte = etatcarte;
    }

    public String getPaiment() {
        return paiment;
    }

    public void setPaiment(String paiment) {
        this.paiment = paiment;
    }

    public Date getDate_expiration() {
        return date_expiration;
    }

    public void setDate_expiration(Date date_expiration) {
        this.date_expiration = date_expiration;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    
    
}
