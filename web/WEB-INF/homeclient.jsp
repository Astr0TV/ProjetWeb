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

            <h1 class="titile">BIENVENUE ${user.nom}!</h1>

            <br>
            <c:forEach items="${messages}" var="m">
                <c:if test="${m.date_message == format1}">
                    <div class="alert alert-success" role="alert">
                        Vous avez un nouvaux message
                    </div>
                </c:if>

            </c:forEach>
            <div>
                <div class="row">
                    <c:forEach items="${comptes}" var="m">
                        <div class="col-sm-3 mt-2">
                            <div class="card card-perso">
                                <div class="card-body">
                                    <strong style="color: black">Numero de Compte : ${m.nucompte}</strong><br>
                                    <strong >Le réseau de paiement : ${m.paiment}</strong><br>
                                    <strong >Numéro de carte : ${m.nucarte}</strong><br>
                                    <strong >Solde : ${m.solde}€</strong><br>
                                    <strong >Date d’expiration : ${m.date_expiration}</strong><br>
                                    <c:choose>
                                        <c:when test="${m.etatcarte == true}" >
                                            <strong >Votre carte : Active</strong><br>
                                        </c:when>
                                        <c:otherwise>
                                            <strong >Votre carte : Désactiver</strong><br>
                                        </c:otherwise>
                                    </c:choose>


                                    <c:if test="${m.montantdecouvert != 0}">
                                        <c:if test="${m.etatdecouvert == false}">

                                            <br> <strong >Demande decouvert : en cours de traitement</strong><br>

                                        </c:if> 
                                        <c:if test="${m.etatdecouvert == true}">

                                            <strong >Montant découvert : ${m.montantdecouvert}€ </strong><br>

                                        </c:if>



                                    </c:if>



                                    <center>
                                        <c:choose>
                                            <c:when test="${m.etatcarte == true}" >
                                                <a hidden=""  class="btn btn-sm " onclick="location.href = 'ActiveCompte?nucarte=${m.nucarte}'"><span style="color: green" onclick="location.href = 'ActiveCompte?nucarte=${m.nucarte}'" class="material-icons orange600">check_circle</span></a>
                                                <a class="btn btn-sm " onclick="location.href = 'DesactiverCompte?nucarte=${m.nucarte}'"><span style="color: red" onclick="location.href = 'ActiveCompte?nucarte=${m.nucarte}'" class="material-icons orange600">unpublished</span></a>

                                            </c:when>
                                            <c:otherwise>
                                                <a class="btn btn-sm " onclick="location.href = 'ActiveCompte?nucarte=${m.nucarte}'"><span style="color: green" onclick="location.href = 'ActiveCompte?nucarte=${m.nucarte}'" class="material-icons orange600">check_circle</span></a>
                                                <a hidden="" class="btn btn-sm " onclick="location.href = 'DesactiverCompte?nucarte=${m.nucarte}'"><span style="color: red" onclick="location.href = 'ActiveCompte?nucarte=${m.nucarte}'" class="material-icons orange600">unpublished</span></a>
                                            </c:otherwise>
                                        </c:choose>
                                        <a class="btn btn-sm " onclick="location.href = 'CarteClient?nucompte=${m.nucompte}'"><span style="color: green" class="material-icons orange600">info</span></a>

                                    </center>



                                </div>

                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </div>
        <script>
            function MinPecas(quantidade) {
                var a = document.getElementById("id").value;
                var x = true;
                if (Boolean(x) == true) {
                    a.hidden = true;
                } else {
                    greeting = "Good evening";
                }
                document.getElementById("demo").innerHTML = greeting;

            }
            function go() {
                console.log("yesy go")
                var x = document.querySelector("#test");
                //  x.hidden = true;
            }
            window.onload = go();

        </script>
    </body>
</html>
