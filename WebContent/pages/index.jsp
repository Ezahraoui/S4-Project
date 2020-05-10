<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ empty sessionScope.user}">
		<jsp:forward page="/login.jsp"/>
</c:if>

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
  <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
  <title>ENEWS | Latest News</title>
</head>
<body>
  <nav id="main-nav">
    <div class="container">
      <a href="login.jsp"><img src="resources/img/logo.png" alt="NewsGrid" class="logo"></a>
   
      <ul>
        <li><a class="current" href="rss.html">Home</a></li>
        <li><a href="sports.html">Sports</a></li>
        <li><a href="culture.html">Culture</a></li>
        <li><a href="science.html">Science/Tech</a></li>
      </ul>
      <br>
        <div>
         <a href="Logout" class="btn btn-info">Déconnecter</a>
      </div>
    </div>
  </nav>

 

  <!-- Home Articles -->
  <section id="home-articles" class="py-2">
    <div class="container">
        <h2>Editor Picks</h2>
       
        <div class="articles-container">
         <c:forEach var="item" items="${items}">
          <article class="card">
            <img src="${item.enclosure}" alt="">
            <div class="category category-tech">${item.category}</div>
            <h3>
              <a href="${item.link}">${item.title}</a>
            </h3>
            <p>${item.description}</p>
          </article>
          </c:forEach>
        	</div>
    </div>
  </section>

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