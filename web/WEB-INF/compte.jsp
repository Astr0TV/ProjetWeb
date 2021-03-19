<%-- 
    Document   : compte
    Created on : 2 mars 2021, 19:36:38
    Author     : Huawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet"
              href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
              integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous"> 
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="menuuser.jsp" %>
        <img class="wave" src="img/wave.png">
        <img class="img" src="img/bg.svg">
        <form action="CompteClient" method="Post">
            <h1 class="titile">Bonjour ${user.nom} !</h1>
            <br>
            <div class="container mt-2"> 
                <div class="content-login">
                    <center>
                        <table class="lignesesp">
                            <tr>
                                <td><input type="hidden" name="id"  value="${user.id}" class="form-control" style="width: 250px"></td>
                            </tr>
                            <tr>
                                <td><label for="nom"  class="my-label">NOM</label></td>
                                <td><input type="text" name="nom"  value="${user.nom}" class="form-control" style="width: 250px"></td>
                            </tr>
                            <tr>
                                <td><label for="prenom" class="my-label">PRENOM</label></td>
                                <td> <input type="text" name="prenom" value="${user.prenom}" class="form-control" style="width: 250px"></td>
                            </tr>
                            <tr>
                                <td><label for="adresse" class="my-label">ADRESSE</label></td>
                                <td> <input type="text" name="adresse" value="${user.adresse}" class="form-control" style="width: 250px"></td>
                            </tr>

                            <tr>
                                <td><label for="solde" class="my-label">SOLDE :</label></td>
                                <td><input type="number" name="solde"   class="form-control" style="width: 250px"></td>
                            </tr>

                        </table>
                        <!--            <button type="submit"  class="btn btn-primary" >ENVOYER</button><br>
         <label for="login" class="my-label">Demande Montant découvert</label>
         <table class="lignesesp">
                            <tr>
                                <td><label for="nom"  class="my-label">Montant</label></td>
                            <td><input type="number" name="nom"  value="${user.nom}" class="form-control" style="width: 250px"></td>
                            </tr>
                        
             </table> --> 
                        <button type="submit"  class="btn btn-primary" >ENVOYER</button>
                    </center>
                </div> 
            </div>
        </form>
    </body>
</html>
