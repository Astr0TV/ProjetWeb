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
        <br>
        <div class="container mt-2">
            <div class="list-group">
                <c:forEach items="${historiques}" var="m">
                    <a href="#" data-toggle="modal" data-target="#exampleModalLong" class="list-group-item list-group-item-action flex-column align-items-start list-group-item-primary">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1">${m.datecreation}</h5>
                            <h4>-${m.contenu},00 €</h4>
                        </div>
                        <p class="mb-1" >PAIEMENT CB SHOPPING A PARIS - CARTE*${m.operations}</p>
                        <small>BOUTIQUE - AUTRES</small>
                    </a>
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                   
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">-${m.contenu},00 €</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <center>
                                        <p>FACTURE CARTE DU 10032   1 SC-AMAZONE PANTIN </p>
                                        <p>CARTE ${m.operations}</p>
                                        <p>SHOPPING, AMAZONE</p></center>
                                    <strong>TYPE D'OPÉRATION       :</strong>         
                                    <span style="right: 0;">FACTURE CARTE</span><br>
                                    <strong>EFFECTUÉ LE       :</strong>         
                                    <span style="right: 0;">${m.datecreation}</span>
                                </div>
                                <div class="modal-footer">
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
