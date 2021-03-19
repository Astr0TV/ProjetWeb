/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.bdUser;

import java.sql.ResultSet;
import fr.esic.model.User;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Huawei
 */
public class UserDao {

    public static User getByloginAndPassword(String log, String mdp) throws SQLException {
        User u = null;

        String sql = "Select * FROM person where login=? AND mdp=? ";
        Connection connexion = AccessBd.getConnection();

        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, log);
        prepare.setString(2, mdp);

        ResultSet rs = prepare.executeQuery();

        if (rs.next()) {
            u = new User();
            u.setId(rs.getInt("idperson"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setAdresse(rs.getString("adresse"));
            u.setGsm(rs.getString("gsm"));
            u.setDate(rs.getDate("date_creation"));
            u.setLogin(rs.getString("login"));
            u.setMdp(rs.getString("mdp"));
            u.setEtat(rs.getBoolean("etat"));
            u.setType(rs.getString("type"));
        }

        return u;
    }

    public static void insertPerson(User u) throws SQLException {
        String sql = "INSERT INTO person (nom, prenom ,adresse ,gsm , login, mdp) VALUES (?,?,?,?,?,?)";
        Connection connexion = AccessBd.getConnection();

        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, u.getNom());
        prepare.setString(2, u.getPrenom());
        prepare.setString(3, u.getAdresse());
        prepare.setString(4, u.getGsm());
        prepare.setString(5, u.getLogin());
        prepare.setString(6, u.getMdp());

        prepare.execute();

    }

    public static List<User> getALL() throws SQLException {
        List<User> users = new ArrayList<>();

        String sql = "SELECT * FROM person where type='conseiller' and etat=1";
        Connection connexion = AccessBd.getConnection();

        Statement st = connexion.createStatement();

        ResultSet rs = st.executeQuery(sql);

        while (rs.next()) {
            User u = new User();
            u.setId(rs.getInt("idperson"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setAdresse(rs.getString("adresse"));
            u.setGsm(rs.getString("gsm"));
            u.setLogin(rs.getString("login"));
            u.setMdp(rs.getString("mdp"));
            u.setType(rs.getString("type"));

            users.add(u);
        }

        return users;
    }

    public static User AfficheUser(int id) throws SQLException {
        User u = null;
        String sql = "select *from person where idperson=?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setInt(1, id);

        ResultSet rs = prepare.executeQuery();

        if (rs.next()) {
            u = new User();
            u.setId(rs.getInt("idperson"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setAdresse(rs.getString("adresse"));
            u.setGsm(rs.getString("gsm"));
            u.setDate(rs.getDate("date_creation"));
            u.setLogin(rs.getString("login"));
            u.setMdp(rs.getString("mdp"));
            u.setEtat(rs.getBoolean("etat"));
            u.setType(rs.getString("type"));
        }

        return u;
    }

    public static void ActiveClient(String log) throws SQLException {
        String sql = "Update person set etat=1 WHERE login=?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, log);
        prepare.execute();
    }

    public static void DesactiverClient(String log) throws SQLException {
        String sql = "Update person set etat=0 WHERE login=?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, log);
        prepare.execute();
    }

    public static void UpdateUser(String nom, String prenom, String adresse, String gsm, String mdp, String log) throws SQLException {
        String sql = "Update person set nom=?, prenom=?,adresse=?,gsm=? , mdp=? WHERE login=?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, nom);
        prepare.setString(2, prenom);
        prepare.setString(3, adresse);
        prepare.setString(4, gsm);
        prepare.setString(5, mdp);
        prepare.setString(6, log);
        prepare.execute();

    }

    public static void InsertConseiller(String nom, String prenom, String adresse, String gsm, String login, String mdp) throws SQLException {
        String sql = "INSERT INTO banqueesic.person (nom, prenom,adresse ,gsm , login, mdp,etat,type) VALUES (?,?,?,?,?,?,1,'conseiller');";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, nom);
        prepare.setString(2, prenom);
        prepare.setString(3, adresse);
        prepare.setString(4, gsm);
        prepare.setString(5, login);
        prepare.setString(6, mdp);
        prepare.execute();

    }

    public static List<User> EtatConseillerDesactiver() throws SQLException {
        List<User> users = new ArrayList<>();

        String sql = "SELECT * FROM person where type='conseiller' and etat=0";
        Connection connexion = AccessBd.getConnection();

        Statement st = connexion.createStatement();

        ResultSet rs = st.executeQuery(sql);

        while (rs.next()) {
            User u = new User();
            u.setId(rs.getInt("idperson"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setAdresse(rs.getString("adresse"));
            u.setGsm(rs.getString("gsm"));
            u.setLogin(rs.getString("login"));
            u.setMdp(rs.getString("mdp"));
            u.setType(rs.getString("type"));

            users.add(u);
        }

        return users;
    }
}
