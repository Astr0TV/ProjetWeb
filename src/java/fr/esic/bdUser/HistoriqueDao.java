/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.bdUser;

import fr.esic.model.User;
import fr.esic.model.Historique;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Huawei
 */
public class HistoriqueDao {
    
        public  static List<Historique> getAllUsers() throws SQLException{
      List<Historique> his = new ArrayList<>();
        
      String sql = "SELECT banqueesic.historique.idhistorique, banqueesic.historique.contenu, banqueesic.historique.date, banqueesic.person.idperson, banqueesic.person.nom, banqueesic.person.prenom, banqueesic.person.login, banqueesic.person.mdp FROM banqueesic.person inner join banqueesic.historique on banqueesic.historique.person_idperson=banqueesic.person.idperson";
        Connection connexion = AccessBd.getConnection();
        
        Statement st =  connexion.createStatement();
        
        ResultSet rs = st.executeQuery(sql);
        
        while (rs.next()) {
            Historique h = new Historique();
            h.setId(rs.getInt("idhistorique"));
            h.setContenu(rs.getString("contenu"));
            h.setDatecreation(rs.getDate("date"));
              User u = new User();
              u.setId(rs.getInt("idperson"));
              u.setNom(rs.getString("nom"));
              u.setPrenom(rs.getString("prenom"));
              u.setLogin(rs.getString("login"));
              h.setUser(u);
              
              his.add(h);
            
        }
        return his;
    }
        
                  public static void UpdateUser (int id) throws SQLException{
           String sql ="INSERT INTO banqueesic.historique (contenu, person_idperson) VALUES ('Update',?)";
           Connection connexion = AccessBd.getConnection();
           PreparedStatement prepare = connexion.prepareStatement(sql);
           prepare.setInt(1, id);
           prepare.execute();
        
           
          }
                  
          public static void InsertionUser (int id) throws SQLException{
           String sql ="INSERT INTO banqueesic.historique (contenu, person_idperson) VALUES ('Insertion nouvaux conseiller',?)";
           Connection connexion = AccessBd.getConnection();
           PreparedStatement prepare = connexion.prepareStatement(sql);
           prepare.setInt(1, id);
           prepare.execute();
        
           
          }
    
}
