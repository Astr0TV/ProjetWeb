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
         <link rel="stylesheet" href="css/index.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
            <script>  
            function changeColor(color) { 
                document.body.style.background = color; 
            }
        </script> 
    </head>
<body>
	<img class="wave" src="img/wave.png">
	<div class="container">
		<div class="img">
			<img src="img/bg.svg">
		</div>
		<div class="login-content">
			<form action="Inscription" method="Post">
				<img src="img/inscription.png">
				<h2 class="title">Inscription</h2>
                                <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Nom</h5>
           		   		<input type="text" name="nom" class="input">
           		   </div>
           		</div>
                                <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Prenom</h5>
           		   		<input type="text" name="prenom" class="input">
           		   </div>
           		</div>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Utilisateur</h5>
           		   		<input type="text" name="login" class="input">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Mot de passe</h5>
           		    	<input type="password" name="mdp" class="input">
            	   </div>
            	</div>
            	<input type="submit" class="btn btn-secondary" value="VALIDER"> 
                <input type="button" class="btn btn-primary" onclick="location.href ='Login'" value="Se connecter ?">
                <p class="text-center text-danger" id="msg">${msg}</p> 
            </form>
        </div>
    </div>
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>
