<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!-- -------------------------------------------------------------- -->


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Lato|Staatliches" rel="stylesheet">
  <link rel="stylesheet" href="resources/css/style.css">
  <link rel="stylesheet" media="screen and (max-width: 768px)" href="resources/css/responsive.css">
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
  <title>ENEWS | Latest News</title>
</head>
<body>
  <nav id="main-nav">
    <div class="container">
      <a href="index.html"><img src="resources/img/logo.png" alt="NewsGrid" class="logo"></a>
   
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Sports</a></li>
        <li><a href="#">Culture</a></li>
        <li><a href="#">Science/Tech</a></li>
        <li><a href="#">Economy</a></li>
      </ul>
      <br>
    </div>
  </nav>

 	<!-- Showcase -->
  <header id="showcase">
    <div class="container">
      <div class="showcase-container">
        <div class="showcase-content">
          <h1>ENEWS</h1>
        
        </div>
      </div>
    </div>
  </header>
	  <div class="container">
        <form action="Register" method="post" class="text-left form-validate">
            <div class="form-group">
                <label for="lastname">Last name</label>
                 <input id="lastname" type="text" name="nom"
                            required data-msg="Please enter your name" class="form-control"  placeholder="Last name">
            </div>	
            <div class="form-group">
                <label for="firstname">First name</label>
                 <input id="firstname" type="text" name="prenom"
                            required data-msg="Please enter your name" class="form-control"  placeholder="First name">
         </div>	
			<div class="form-group">
    				<label for="email">Email</label>
   				  <input id="email" type="email" name="email"
								required data-msg="Please enter your email" class="form-control"  placeholder="Email">
 			</div>
			 <div class="form-group">
    				<label for="password">Password</label>
   					<input id="password" type="password" name="password"
								required data-msg="Please enter your password" class="form-control"  placeholder="Password">
 			</div>
				<br><div class="alert alert-warning" role="alert">
						        ${message}
				</div>
			<div class="form-group text-center">
				<input type="submit" value="Créer un nouveau compte" class="btn btn-primary">
			</div>
		</form>
			 <div class="form-group text-center">
         		<a href="login.jsp" class="btn btn-warning">Se connecter</a>
    		  </div>
    </div>
    
  <!-- Footer -->
  <footer id="main-footer" class="py-2">
    <div class="container footer-container">
      <div>
        <img src="resources/img/logo.png" alt="ENEWS">
      </div>
      <div>
        <p>
          Copyright &copy; 2020, All Rights Reserved
        </p>
      </div>
    </div>
  </footer>


</body>
</html>