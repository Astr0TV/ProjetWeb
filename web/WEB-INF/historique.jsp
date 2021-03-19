<%-- 
    Document   : historique
    Created on : 2 mars 2021, 14:06:35
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
        <%@include file="menu.jsp" %>
        <img class="wave" src="img/wave.png">
        <img class="img" src="img/bg.svg">
        <div class="container mt-4">
            <h1 class="titile">HISTORIQUE</h1>
            <br>
            <div>
                <div class="row">
                    <c:forEach items="${historiques}" var="m">
                        <div class="list-group">
                            <a href="#" class="list-group-item list-group-item-action flex-column align-items-start list-group-item-secondary">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">Utilisateur : ${m.user.nom}</h5>
                                    <small>${m.datecreation}</small>
                                </div>
                                <p class="mb-1">${m.contenu}</p>
                                <small>Donec id elit non mi porta.</small>
                            </a><br>
                        </c:forEach>
                    </div>
                </div>
            </div>
    </body>
</html>
