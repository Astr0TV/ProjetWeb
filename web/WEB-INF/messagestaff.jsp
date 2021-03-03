<%-- 
    Document   : messagestaff
    Created on : 3 mars 2021, 17:44:32
    Author     : Huawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="menuconseiller.jsp" %>
        <img class="wave" src="img/wave.png">
        <img class="img" src="img/bg.svg">
        <div class="container mt-4">
            <h1 class="titile">Bonjour ${user.nom}!</h1> 
            <br>
            <div>
                <div class="row">
                    <c:forEach items="${messages}" var="m">
                        <div class="col-sm-3 mt-4">
                            <div class="card card-perso">
                                <div class="card-body" onclick="location.href='MessageRepende?id=${m.user.id}';">
                                    <strong class="text-info">Utilisateur : ${m.user.nom}</strong><br>
                                    <strong class="text-info">Message : ${m.contenu}</strong>
                                </div>
                            </div>
                        
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>
