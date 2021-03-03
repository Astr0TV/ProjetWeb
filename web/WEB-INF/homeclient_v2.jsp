<%-- 
    Document   : homeclient
    Created on : 2 mars 2021, 20:35:31
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="menuuser.jsp" %>
         <img class="wave" src="img/wave.png">
         <img class="img" src="img/bg.svg">
        <div class="container mt-4">
            <h1 class="titile">Bonjour ${user.nom}!</h1>
            <br>
            <div>
                <div class="row">
                    <c:forEach items="${comptes}" var="m">
                        <div class="col-sm-3 mt-2">
                            <div class="card card-perso">
                                <div class="card-body">
                                    <strong class="text-info">Numero de Compte : ${m.nucompte}</strong><br>
                                    <strong class="text-info">Le réseau de paiement : ${m.paiment}</strong><br>
                                    <strong class="text-info">Numéro de carte : ${m.nucarte}</strong><br>
                                    <strong class="text-info">Solde : ${m.solde}</strong><br>
                                    <strong class="text-info">Date d’expiration : ${m.date_expiration}</strong><br>
                                    <center><button  type="submit"  onclick="location.href ='ActiveCompte?nucarte=${m.nucarte}'" class="btn btn-success" >Acrive</button></center>
                                </div>
                            </div>
                        
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>
