<%-- 
    Document   : menu
    Created on : 28 févr. 2021, 15:03:09
    Author     : Huawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
                 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous"> 
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
            <nav class=" navbar navbar-dark bg-dark">
        <form class="container-fluid justify-content-center">
          <li class="nav-item">
            <a class="btn btn-outline-success me-2" href="Conseiller">HOME</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-sm btn-outline-secondary" href="Profile">PROFILE</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-sm btn-outline-secondary" href="MessageStaff">MESSAGE</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-sm " href="Deconnexion"><span style="color: red" class="material-icons orange600">power_settings_new</span></a>
          </li>
        </form>
      </nav>
    </body>
</html>
