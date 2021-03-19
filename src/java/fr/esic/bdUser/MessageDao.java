/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.bdUser;

import fr.esic.model.Historique;
import fr.esic.model.User;
import fr.esic.model.Message;
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
public class MessageDao {

    public static void InsertMessage(String contenu, int id) throws SQLException {
        String sql = "INSERT INTO Message ( contenu, person_idperson) VALUES (?,?)";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, contenu);
        prepare.setInt(2, id);
        prepare.execute();

    }

    public static void AfficheMessageClient(int id) throws SQLException {
        String sql = "SELECT contenu FROM message where person_idperson=? order by date_message;";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setInt(1, id);
        prepare.execute();

    }

    public static List<Message> AfficheContenu(int id) throws SQLException {
        List<Message> message = new ArrayList<>();
        String sql = "SELECT  idperson,nom,prenom ,login , contenu FROM message,person where person_idperson=idperson and idperson=?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setInt(1, id);
        ResultSet rs = prepare.executeQuery();
        while (rs.next()) {
            Message m = new Message();
            m.setContenu(rs.getString("contenu"));
            User u = new User();
            u.setId(rs.getInt("idperson"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setLogin(rs.getString("login"));
            m.setUser(u);

            message.add(m);

        }
        return message;

    }

    public static List<Message> getMessageStaff() throws SQLException {
        List<Message> message = new ArrayList<>();

        String sql = "SELECT  idperson,nom,prenom ,login , contenu , date_message FROM message,person where person_idperson=idperson and type='client'";
        Connection connexion = AccessBd.getConnection();

        Statement st = connexion.createStatement();

        ResultSet rs = st.executeQuery(sql);

        while (rs.next()) {
            Message m = new Message();
            m.setContenu(rs.getString("contenu"));
            m.setDate_message(rs.getDate("date_message"));
            User u = new User();
            u.setId(rs.getInt("idperson"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setLogin(rs.getString("login"));
            m.setUser(u);

            message.add(m);

        }
        return message;
    }

    public static List<Message> getMessageConseiller(String login) throws SQLException {
        List<Message> message = new ArrayList<>();

        String sql = "SELECT  idperson,nom,prenom ,login , contenu,loginclient,date_message FROM message,person where person_idperson=idperson and type='Conseiller' and loginclient=?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, login);
        ResultSet rs = prepare.executeQuery();

        while (rs.next()) {
            Message m = new Message();
            m.setContenu(rs.getString("contenu"));
            m.setLoginclient(rs.getString("loginclient"));
            m.setDate_message(rs.getDate("date_message"));
            User u = new User();
            u.setId(rs.getInt("idperson"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setLogin(rs.getString("login"));
            m.setUser(u);

            message.add(m);

        }
        return message;
    }

    public static void InsertMessageConseiller(String contenu,String loginclient , int id) throws SQLException {
        String sql = "INSERT INTO Message ( contenu ,loginclient , person_idperson) VALUES (?,?,?)";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, contenu);
        prepare.setString(2, loginclient);
        prepare.setInt(3, id);
        prepare.execute();

    }

}
