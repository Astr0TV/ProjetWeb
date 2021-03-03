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
            <h1 class="titile">Bonjour ${user.nom} !</h1>
            <br>
            <center>
                <h4>Liste Compte Désactiver</h4>
            <table class="table-success" style="border: 1px solid black; width: 730px">
                <thead>
                    <tr class="table-active" style="border: 1px solid black;" >
                        <th style="border: 1px solid black;" >ID</th>
                        <th>SOLDE</th>
                        <th>NUM COMPTE</th>
                        <th>NUM CARTE</th>
                        <th>PAIMENT</th>
                        <th>DATE EXPIRATION</th>
                        <th>ACTIONS</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${comptes}" var="m">
                        <tr style="border: 1px solid black;"     >
                            <td>${m.id}</td>
                            <td>${m.solde}</td>
                             <td>${m.nucompte}</td>
                             <td>${m.nucarte}</td>
                             <td>${m.paiment}</td>
                             <td>${m.date_expiration}</td>
                             <td> <button  type="submit"  onclick="location.href ='ActiveCompte?nucarte=${m.nucarte}'" class="btn btn-success" >ACTIVE</button> </td>
                        </tr>
                    </c:forEach>
                </tbody>
                
                 </table>
                <br>
                <h4>Liste Compte Active</h4>
                    <table class="table-success" style="border: 1px solid black; width: 730px">
                <thead>
                    <tr class="table-active" style="border: 1px solid black;" >
                        <th style="border: 1px solid black;" >ID</th>
                        <th>SOLDE</th>
                        <th>NUM COMPTE</th>
                        <th>NUM CARTE</th>
                        <th>PAIMENT</th>
                        <th>DATE EXPIRATION</th>
                        <th>ACTIONS</th>
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
                             <td> <button  type="submit"  onclick="location.href ='DesactiverCompte?nucarte=${m.nucarte}'" class="btn btn-success" >Désactiver</button> </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table> 
</center>
        </div>
    </body>
</html>
