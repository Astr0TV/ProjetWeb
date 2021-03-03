<%-- 
    Document   : inscription
    Created on : 19 févr. 2021, 15:16:38
    Author     : Huawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
            <script>  
            function changeColor(color) { 
                document.body.style.background = color; 
            }
        </script> 
    </head>
<body>
    <br><br><br><br><br><br><br>
            <div class="colors">
            <a onclick = "changeColor('red');" class="red"></a>
            <a onclick = "changeColor('pink');" class="pink"></a>
            <a onclick = "changeColor('purple');" class="purple"></a>
            <a onclick = "changeColor('blue');" class="blue"></a>
            <a onclick = "changeColor('turquoise');" class="turquoise"></a>
            <a onclick = "changeColor('green');" class="green"></a>
            <a onclick = "changeColor('yellow');" class="yellow"></a>
            <a onclick = "changeColor('orange');" class="orange"></a>
        </div>
    <form action="Inscription" method="Post">
   <div class="container mt-4">
       <div class="content-login">
           <div class="card shadow-card">
               <div class="card-header card-hearder-back">
                   <h5 class="card-title-persone text-center">CDA 2020</h5>
               </div>
               <div class="card-body">
                  <div class="mb-3">
                  <label for="login" class="my-label">NOM</label>
                  <input type="text" id="nom" name="nom" class="form-control">
                 </div>
                <div class="mb-3">
                  <label for="login" class="my-label">PRENOM</label>
                  <input type="text" id="prenom" name="prenom" class="form-control">
                 </div>
               <div class="mb-3">
                  <label for="login" class="my-label">LOGIN</label>
                  <input type="text" id="login" name="login" class="form-control">
                 </div>
                 <div class="mb-3">
                   <label for="password" class="my-label">PASSWORD</label>
                   <input type="password"  name="mdp" class="form-control" id="mdp">
                  </div>
                  <div class="d-grid gap-2">
                      <button type="submit" class="btn btn-success" >VALIDER</button>
                      <button type="button" class="btn btn-primary" onclick="location.href ='Login'">Se connecter ?</button>
                  </div> 
                  <p class="text-center text-danger" id="msg">${msg}</p> 
                </div>
             </div>
        </div> 
   </div>
        </form>
</body>
</html>
