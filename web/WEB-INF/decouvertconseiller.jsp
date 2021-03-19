<%-- 
    Document   : decouvertconseiller
    Created on : 6 mars 2021, 14:59:43
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
        <div class="container mt-4">
            <form action="DecouvertConseiller" method="Post">
                <h1 class="titile">Bonjour ${user.nom} !</h1>
                <br>
                <div class="row">
                    <c:forEach items="${comptes}" var="m">
                        <c:choose>
                            <c:when test="${m.montantdecouvert != 0}" >
                                <div class="col-sm-3 mt-4"> 

                                    <div class="card bg-light mb-3" style="max-width: 18rem;">
                                        <div style="font-weight: bolder; font-size: 20px" class="card-header">Demande Decouvert</div>
                                        <div class="card-body">
                                            <h5 style="font-weight: bolder;" class="card-title">Utilisateur : ${m.user.login}</h5>
                                            <strong style="color: black">Numero de Compte : ${m.nucompte}</strong><br>
                                            <strong >Solde : ${m.solde}</strong><br>
                                            <strong >Montant Découvert : ${m.montantdecouvert}</strong><br>
                                            <center>
                                                <a  class="btn btn-sm " onclick="location.href = 'AutoriserDecouvert?nucompte=${m.nucompte}'"><span style="color: green"  class="material-icons orange600">check_circle</span></a>
                                                <a class="btn btn-sm " onclick="location.href = 'RefuserDecouvert?nucompte=${m.nucompte}'"><span style="color: red"  class="material-icons orange600">unpublished</span></a>
                                            </center>
                                        </div>
                                    </div>
                                </div>              
                            </c:when>
                        </c:choose>

                    </c:forEach>
                </div>
            </form>
        </div>
    </body>
</html>
