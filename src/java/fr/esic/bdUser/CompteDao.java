/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.bdUser;

import fr.esic.model.Compte;
import fr.esic.model.User;
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
public class CompteDao {
    
            public  static List<Compte> getAllCompte(User p) throws SQLException{
      List<Compte> com = new ArrayList<>();
        
      String sql = "select idperson, nom,prenom,solde,nucompte,nucarte,paiement,date_expiration from person, compte where idperson = person_idperson and person_idperson = ?";
        Connection connexion = AccessBd.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setInt(1, p.getId());
        
        ResultSet rs = prepare.executeQuery();
        
        while (rs.next()) {
            Compte c = new Compte();
            c.setSolde(rs.getString("solde"));
            c.setNucompte(rs.getInt("nucompte"));
            c.setNucarte(rs.getInt("nucarte"));
            c.setPaiment(rs.getString("paiement"));
            c.setDate_expiration(rs.getDate("Date_expiration"));
              User u = new User();
              u.setId(rs.getInt("idperson"));
              u.setNom(rs.getString("nom"));
              u.setPrenom(rs.getString("prenom"));
              c.setUser(u);
              
              com.add(c);
            
        }
        return com;
    }
    
              public static void InsertConseiller (String solde,int id) throws SQLException{
           String sql ="INSERT INTO compte (solde , person_idperson) VALUES (?,?)";
           Connection connexion = AccessBd.getConnection();
           PreparedStatement prepare = connexion.prepareStatement(sql);
           prepare.setString(1, solde);
           prepare.setInt(2, id);
           prepare.execute();
        
           
          }
                 public static List<Compte> getALLCompte() throws SQLException{
        List<Compte> comptes = new ArrayList<>();
        
        String sql ="SELECT * FROM compte where etatcarte=1 and person_idperson=?";
        Connection connexion = AccessBd.getConnection();
        
           Statement st = connexion.createStatement();
        
        ResultSet rs = st.executeQuery(sql);
        
        while(rs.next()){
            Compte c = new Compte();
            c.setId(rs.getInt("idcompte"));
            c.setSolde(rs.getString("solde"));
            c.setNucompte(rs.getInt("nucompte"));
            c.setNucarte(rs.getInt("nucarte"));
            c.setPaiment(rs.getString("paiement"));
            c.setDate_expiration(rs.getDate("Date_expiration"));
            
            comptes.add(c);
        }
        
        return comptes;
    }
            public static List<Compte> allCompte() throws SQLException{
        List<Compte> comptes = new ArrayList<>();
        
        String sql ="SELECT idcompte ,solde ,nucompte ,nucarte ,paiement ,Date_expiration, if(etatcarte,'true','false') etat FROM compte where etatcarte=false";
        Connection connexion = AccessBd.getConnection();
        
           Statement st = connexion.createStatement();
        
        ResultSet rs = st.executeQuery(sql);
        
        while(rs.next()){
            Compte c = new Compte();
            c.setId(rs.getInt("idcompte"));
            c.setSolde(rs.getString("solde"));
            c.setNucompte(rs.getInt("nucompte"));
            c.setNucarte(rs.getInt("nucarte"));
            c.setPaiment(rs.getString("paiement"));
            c.setDate_expiration(rs.getDate("Date_expiration"));
            
            comptes.add(c);
        }
        
        return comptes;
        
    }
            public static List<Compte> allClientActive() throws SQLException{
         List<Compte> comptes = new ArrayList<>();
        
        String sql ="SELECT idcompte ,solde ,nucompte ,nucarte ,paiement ,Date_expiration, if(etatcarte,'true','false') etat FROM compte where etatcarte=true";
        Connection connexion = AccessBd.getConnection();
        
           Statement st = connexion.createStatement();
        
        ResultSet rs = st.executeQuery(sql);
        
                while(rs.next()){
            Compte c = new Compte();
            c.setId(rs.getInt("idcompte"));
            c.setSolde(rs.getString("solde"));
            c.setNucompte(rs.getInt("nucompte"));
            c.setNucarte(rs.getInt("nucarte"));
            c.setPaiment(rs.getString("paiement"));
            c.setDate_expiration(rs.getDate("Date_expiration"));
            
            comptes.add(c);
        }
        
        return comptes;
            }
            
            public static void ActiveCompte (int nucarte) throws SQLException{
           String sql ="Update compte set etatcarte=1 WHERE nucarte=?";
           Connection connexion = AccessBd.getConnection();
           PreparedStatement prepare = connexion.prepareStatement(sql);
           prepare.setInt(1, nucarte);
           prepare.execute();
       }
            
           public static void DesactiverCompte (int nucarte) throws SQLException{
           String sql ="Update compte set etatcarte=0 WHERE nucarte=?";
           Connection connexion = AccessBd.getConnection();
           PreparedStatement prepare = connexion.prepareStatement(sql);
           prepare.setInt(1, nucarte);
           prepare.execute();
       }
    
}
