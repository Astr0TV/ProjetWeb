<%-- 
    Document   : message
    Created on : 3 mars 2021, 11:52:51
    Author     : Huawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <form action="Message?id=${user.id}" method="Post">

            <center>
                <div class="container mt-4">
                    <h1 class="titile">MESSAGE</h1> <h1 hidden="" name="numperson" >Bonjour! ${user.id}</h1>
                    <h1 hidden="" name="login" >Bonjour! ${user.nom}</h1>
                    <br>

                    <table>

                        <tr>
                            <c:forEach items="${messages}" var="m">
                            <p>${m.contenu}</p>
                        </c:forEach>

                        <td><textarea type="text" data-author="" id="message" class="form-control" style="width: 400px; height: 200px" name="message" placeholder="..."></textarea></td>
                        </tr>
                    </table>
                    <button type="submit" class="btn btn-primary" >Envoyer</button>
                    <input type="button" value="Send Email" onclick="location.href = 'SendEmail'"/>
            </center>
        </form>

    </body>
</html>
