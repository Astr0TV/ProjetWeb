<%-- 
    Document   : profile
    Created on : 2 mars 2021, 16:53:05
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
        <form action="UpdateUser?id=${u.id}" method="Get">
   <h1 class="titile">Bonjour ${user.nom} !</h1>
           <br>
  <div class="container mt-2"> 
       <div class="content-login">
           <center>
               <table class="lignesesp">
                   <tr>
                   <td><label for="id"  class="my-label">IMAGE</label></td>
                   <td><input type="file" name="img"  class="form-control" style="width: 250px"></td>
                   </tr>
                   <tr>
                   <td><label for="id"  class="my-label">NUMERO COMPTE</label></td>
                   <td><input type="text" name="id"  value="${user.id}" class="form-control" style="width: 250px"></td>
                   </tr>
                   <tr>
                   <td><label for="nom"  class="my-label">NOM</label></td>
                   <td><input type="text" name="nom"  value="${user.nom}" class="form-control" style="width: 250px"></td>
                   </tr>
                <tr>
          <td><label for="login" class="my-label">PRENOM</label></td>
          <td> <input type="text" name="prenom"  value="${user.prenom}" class="form-control" style="width: 250px"></td>
               </tr>

   <tr>
   <td><label for="login" class="my-label">LOGIN :</label></td>
   <td><input type="text" name="login"  value="${user.login}" class="form-control" style="width: 250px"></td>
   </tr>

<tr>
   <td><label for="login" class="my-label">PASSWORD</label></td>
   <td><input type="text" id="mdp" name="mdp"  value="${user.mdp}" class="form-control" style="width: 250px"></td>
   </tr>
</table>
<button type="submit"  class="btn btn-primary" >UPDATE</button>
   </center>
       </div> 
   </div>
   </form>
    </body>
</html>
