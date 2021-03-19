<%-- 
    Document   : homeconseiller
    Created on : 1 mars 2021, 12:28:38
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
        <%@include file="menuconseiller.jsp" %>
        <img class="wave" src="img/wave.png">
        <img class="img" src="img/bg.svg">
        <div class="container">
            <h1 class="titile">BIENVENUE ${user.nom} !</h1>
            <br>
            <c:forEach items="${messages}" var="m">
                <c:if test="${m.date_message == format1}">
                    <div class="alert alert-success" role="alert">
                        Vous avez un nouvaux message
                    </div>
                </c:if>

            </c:forEach>
            <center>
                <h4>Liste Compte Désactiver</h4>
                <table class="table table-bordered border-dark table-success table-striped">
                    <thead class="table-light">
                        <tr >
                            <th style="font-weight: bold;">ID</th>
                            <th style="font-weight: bold;">SOLDE</th>
                            <th style="font-weight: bold;">NUM COMPTE</th>
                            <th style="font-weight: bold;">NUM CARTE</th>
                            <th style="font-weight: bold;">PAIMENT</th>
                            <th style="font-weight: bold;">DATE EXPIRATION</th>
                            <th style="font-weight: bold;">ACTIONS</th>
                        </tr>
                    </thead>
                    <c:forEach items="${comptes}" var="m">
                        <tr style="border: 1px solid black;"     >
                            <td>${m.id}</td>
                            <td>${m.solde}</td>
                            <td>${m.nucompte}</td>
                            <td>${m.nucarte}</td>
                            <td>${m.paiment}</td>
                            <td>${m.date_expiration}</td>
                            <td><a class="btn btn-sm " onclick="location.href = 'ActiveCompte?nucarte=${m.nucarte}'"><span style="color: green" onclick="location.href = 'ActiveCompte?nucarte=${m.nucarte}'" class="material-icons orange600">check_circle</span></a> </td>
                        </tr>
                    </c:forEach>
                    </tr>
                </table>
                <br>
                <h4>Liste Compte Active</h4>
                <table class="table table-bordered border-dark table-success table-striped">
                    <thead class="table-light">
                        <tr>
                            <th style="font-weight: bold;">ID</th>
                            <th style="font-weight: bold;">SOLDE</th>
                            <th style="font-weight: bold;">NUM COMPTE</th>
                            <th style="font-weight: bold;">NUM CARTE</th>
                            <th style="font-weight: bold;">PAIMENT</th>
                            <th style="font-weight: bold;">DATE EXPIRATION</th>
                            <th style="font-weight: bold;">ACTIONS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${comptes2}" var="m">
                            <tr style="border: 1px solid black;"     >
                                <td>${m.id}</td>
                                <td>${m.solde}</td>
                                <td>${m.nucompte}</td>
                                <td>${m.nucarte}</td>
                                <td>${m.paiment}</td>
                                <td>${m.date_expiration}</td>
                                <td><a class="btn btn-sm " onclick="location.href = 'DesactiverCompte?nucarte=${m.nucarte}'"><span style="color: green" onclick="location.href = 'DesactiverCompte?nucarte=${m.nucarte}'" class="material-icons orange600">block</span></a> </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table> 
            </center>
        </div>
    </body>
</html>
