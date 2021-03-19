<%-- 
    Document   : macarte
    Created on : 8 mars 2021, 18:10:19
    Author     : Huawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="fr.esic.model.Compte"%>
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
        <c:forEach items="${comptes}" var="m">
            <form action="CarteClient?nucompte=${m.nucompte}" method="Post">
            </c:forEach>
            <br>
            <div class="container mt-2"> 
                <div class="content-login">
                    <center>
                        <table class="lignesesp">
                            <tr>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="operation" id="Depot" value="Depot">
                                <label class="form-check-label" for="Depot">

                                    Depot 

                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="operation" id="retraite" value="retraite">
                                <label class="form-check-label" for="retraite">
                                    Retraite
                                </label>
                            </div><br>
                            </tr>
                            <tr>
                                <c:forEach items="${comptes}" var="m">
                                <input class="form-check-input" hidden="" name="soldebd" id="soldebd" value="${m.solde}">
                                <label id="soldebd" name="soldebd" class="my-label">Votre Solde : ${m.solde}€</label>
                            </c:forEach>
                            </tr>
                            <tr>
                                <td><label for="Montant"  class="my-label">Montant</label></td>
                                <td><input type="number" name="solde" id="solde" class="form-control" style="width: 250px"></td>
                            </tr>
                        </table>
                        <button type="submit"  class="btn btn-primary" >VALIDER</button>

                    </center>
                </div> 
            </div>
        </form>
    </body>
</html>
