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
public class Message {
    private int id;
    private String contenu;
    private Date date_message;
    private String loginclient;
    private User user;
    
    
   public Message (){
       
   }

    public Message(String contenu,Date date_message ,String loginclient, User user) {
        this.contenu = contenu;
        this.date_message = date_message;
        this.loginclient = loginclient;
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

    public Date getDate_message() {
        return date_message;
    }

    public void setDate_message(Date date_message) {
        this.date_message = date_message;
    }

    public String getLoginclient() {
        return loginclient;
    }

    public void setLoginclient(String loginclient) {
        this.loginclient = loginclient;
    }

    

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
   
   
}
