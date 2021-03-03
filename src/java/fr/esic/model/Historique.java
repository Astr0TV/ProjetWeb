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
public class Historique {
    private int id;
    private String contenu;
    private Date datecreation;
    private User user;
    


public Historique(){

}

    public Historique(String contenu, Date datecreation, User user) {
        this.contenu = contenu;
        this.datecreation = datecreation;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContenu() {
        return contenu;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }

    public Date getDatecreation() {
        return datecreation;
    }

    public void setDatecreation(Date datecreation) {
        this.datecreation = datecreation;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    


}
