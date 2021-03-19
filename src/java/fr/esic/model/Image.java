/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.model;

import java.sql.Blob;

/**
 *
 * @author Huawei
 */
public class Image {
    private int id;
    private Blob images;
    
    public Image(){
        
    }

    public Image(Blob images) {
        this.images = images;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Blob getImages() {
        return images;
    }

    public void setImages(Blob images) {
        this.images = images;
    }
    
    
    
}
