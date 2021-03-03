<%-- 
    Document   : index
    Created on : 28 févr. 2021, 14:13:23
    Author     : Huawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
            <script>  
            function changeColor(color) { 
                document.body.style.background = color;
            }
        </script>   
    <title>CDA</title>
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
    <form action="Login" method="Post">
   <div class="container mt-4">
       <div class="content-login">
           <div class="card shadow-card">
               <div id="div" class="card-header card-hearder-back">
                   <h5 class="card-title-persone text-center">Authentification</h5>
               </div>
               <div class="card-body">
               <div class="mb-3">
                  <label for="login" class="my-label">LOGIN</label>
                  <input type="text" id="login" name="login" class="form-control">
                 </div>
                 <div class="mb-3">
                   <label for="password" class="my-label">PASSWORD</label>
                   <input type="password"  name="mdp" class="form-control" id="mdp">
                  </div>
                  <div class="d-grid gap-2">
                      <button type="submit" class="btn btn-success" >Connecter</button>
                      <button type="button" class="btn btn-primary" onclick="location.href ='inscription.jsp'">S'inscrire ?</button>
                  </div> 
                  <p class="text-center text-danger" id="msg">${msg}</p> 
                </div>
             </div>
        </div> 
   </div>
        </form>
</body>
</html>
