<%-- 
    Document   : shopping
    Created on : 11 mars 2021, 14:38:04
    Author     : Huawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                max-width: 300px;
                margin: auto;
                text-align: center;
                font-family: arial;
            }

            .price {
                color: grey;
                font-size: 22px;
            }

            .card button {
                border: none;
                outline: 0;
                padding: 12px;
                color: white;
                background-color: #000;
                text-align: center;
                cursor: pointer;
                width: 100%;
                font-size: 18px;
            }

            .card button:hover {
                opacity: 0.7;
            }
        </style>
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
        <form action="Shopping" method="Post">
            <center>
                <table class="lignesesp">
                    <tr>
                    <br>
                    <select id="nucompte" style="width:20%" name="nucarte" class="form-select"  aria-label="Default select example">
                        <option value="${m.nucarte}">Selecte votre Carte</option>
                        <c:forEach items="${compes}" var="m">

                            <option value="${m.nucarte}">${m.nucarte}</option>

                        </c:forEach>
                    </select>

                    </tr>
                </table>
                <div class="row">
                    <div class="col-sm-5">
                        <div class="card">
                            <div class="card-body">
                                <img src="img/psg.jpg" alt="Denim Jeans" style="width:100%">
                                <h1>Paris Saint-Germain</h1>
                                <input hidden type="number" name="prix"  value="70" class="form-control">
                                <p name="prix" class="price">70,00€</p>
                                <p>Nike Maillot Domicile Paris Saint-Germain 2020/21 Homme</p>
                                <p><button type="submit">Acheter</button></p>
                            </div>
                        </div>
                    </div>
                </div>
            </center>
        </form>
    </body>
</html>
