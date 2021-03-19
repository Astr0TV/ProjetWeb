<%-- 
    Document   : home
    Created on : 28 févr. 2021, 14:16:23
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
        <%@include file="menu.jsp" %>
        <img class="wave" src="img/wave.png">
        <img class="img" src="img/bg.svg">
        <div class="container">
            <h1 class="titile">BIENVENUE ${user.nom} !</h1>
            <br>
            <center>
                 <h4>Liste Client Active</h4>
            <table class="table table-bordered border-primary table-success table-striped">
                <thead class="table-light">
                    <tr>
                        <th style="font-weight: bold;">ID</th>
                        <th style="font-weight: bold;">NOM</th>
                        <th style="font-weight: bold;">PRENOM</th>
                        <th style="font-weight: bold;">LOGIN</th>
                        <th style="font-weight: bold;"> PASSWORD</th>
                        <th style="font-weight: bold;">ACTIONS</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${users}" var="m">
                        <tr style="border: 1px solid black;"     >
                            <td >${m.id}</td>
                            <td >${m.nom}</td>
                             <td >${m.prenom}</td>
                             <td >${m.login}</td>
                             <td >${m.mdp}</td>
                             <td > <button type="button" style="display:  inline-block"  onclick="location.href ='Update?id=${m.id}'" class="btn btn-success" >UPDATE</button> 
                             <a class="btn btn-sm " onclick="location.href ='DesactiverUser?login=${m.login}'"><span style="color: green" class="material-icons orange600">block</span></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
                <br>
                 <h4>Liste Client Désactiver</h4>
            <table class="table table-bordered border-dark table-success table-striped">
                <thead class="table-light">
                    <tr  style="border: 1px solid black;" >
                        <th style="border: 1px solid black;" >ID</th>
                        <th style="font-weight: bold;">NOM</th>
                        <th style="font-weight: bold;">PRENOM</th>
                        <th style="font-weight: bold;">LOGIN</th>
                        <th style="font-weight: bold;">PASSWORD</th>
                        <th style="font-weight: bold;">ACTIONS</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${users2}" var="m">
                        <tr    >
                            <td>${m.id}</td>
                            <td>${m.nom}</td>
                             <td>${m.prenom}</td>
                             <td>${m.login}</td>
                             <td>${m.mdp}</td>
                             <td> <button type="button" style="display:  inline-block"  onclick="location.href ='Update?id=${m.id}'" class="btn btn-success" >UPDATE</button>
                             <a class="btn btn-sm " onclick="location.href ='ActiveUser?login=${m.login}'"><span style="color: green"  class="material-icons orange600">check_circle</span></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
</center>
        </div>
    </body>
</html>
