/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.bdUser;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Huawei
 */
public class ImageDao {
    
               public static void InsertConseiller (InputStream img) throws SQLException{
           String sql ="INSERT INTO image (image) VALUES (?)";
           Connection connexion = AccessBd.getConnection();
           PreparedStatement prepare = connexion.prepareStatement(sql);
           prepare.setBlob(1, img);
           prepare.execute();
        
           
          }
    
}
