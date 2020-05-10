<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
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
      <a href="index.html"><img src="resources/img/logo.png" alt="NewsGrid" class="logo"></a>
   
      <ul>
        <li><a  href="rss.html">Home</a></li>
        <li><a href="sports.html">Sports</a></li>
        <li><a class="current" href="culture.html">Culture</a></li>
        <li><a href="science.html">Science/Tech</a></li>
        <li><a href="economy.html">Economy</a></li>
      </ul>
        <br>
       <div>
        <a href="login.jsp" class="btn btn-secondary">Sign In</a>
         <a href="register.jsp" class="btn btn-info">Sign Up</a>
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
            <img src="${item.enclosure}"" alt="">
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
        <img src="img/logo_light.png" alt="NewsGrid">
        <p><p>Your trusted source for Fake breaking news analysis, exclusive interviews, headlines, and videos at WTFNews "What the Fake News".</p>
      </div>
      <div>
        <h3>Email Newsletter</h3>
        <p>If you have any Fake News and want to make our public aware about it then Please send a it to OR Subscribe our NewsFeed page for lastest disclosure of Fake News.</p>
        <form>
          <input type="email" placeholder="Enter Email...">
          <input type="submit" value="Subscribe" class="btn btn-primary">
        </form>
      </div>
      <div>
        <h3>Site Links</h3>
        <ul class="list">
          <li><a href="#">Help & Support</a></li>
          <li><a href="#">Privacy Policy</a></li>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
      <div>
        <h2>Join Our Club</h2>
        <p>Join our Team and stay updated against FakeNews!</p>
        <a href="#" class="btn btn-secondary">Join Now</a>
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