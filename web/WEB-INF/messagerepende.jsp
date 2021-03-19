<%-- 
    Document   : messagerepende
    Created on : 3 mars 2021, 18:09:49
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
        <%@include file="menuconseiller.jsp" %>
        <img class="wave" src="img/wave.png">
        <img class="img" src="img/bg.svg">

        <form action="MessageRepende?id=${user.id}" method="Post">
            <center>
                <div class="container mt-4">

                    <h1 class="titile">Bonjour ${user.nom} </h1> <h1 hidden="" name="numperson" >Bonjour! ${user.id}</h1>
                    <select hidden="" id="loginclient"  name="loginclient" class="form-select" aria-label="Default select example">
                        <c:forEach items="${messages}" var="m">
                            <option hidden="" nvalue="${m.user.login}">${m.user.login}</option>
                        </c:forEach>   
                    </select>
                    <c:forEach items="${messages}" var="m">
                        <p id="loginclient" name="loginclient"> ${m.user.login} </p> 
                        <p> ${m.contenu} </p> 
                    </c:forEach>
                    <br>
                    <div>
                        <table>

                            <tr>

                                <td><textarea type="text" data-author="" id="message" class="form-control" style="width: 400px; height: 200px" name="message" placeholder="..."></textarea></td>
                            </tr>
                        </table>
                        <button type="submit"  class="btn btn-primary" >Envoyer</button>
                        </center>
                        </form>
                        </body>
                        </html>
