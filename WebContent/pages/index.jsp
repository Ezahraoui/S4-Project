<<<<<<< HEAD
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
        <li><a class="current" href="rss.html">Home</a></li>
        <li><a href="sports.html">Sports</a></li>
        <li><a href="culture.html">Culture</a></li>
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
        <img src="resources/img/logo.png" alt="NewsGrid">
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
=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Document</title>
  <link href="https://fonts.googleapis.com/css?family=Lora%7CRoboto+Condensed:700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="resources/style.css" />
</head>

<body>
  <header>
    <nav class="navbar sticky-top d-none d-xs-none d-sm-none d-md-none d-lg-block d-xl-block regular-nav">
      <div class="first-row">
        <span class="float-left"><p id="date"></p></span>
        <span class="logo">
          <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            x="0px" y="0px" viewBox="0 0 395.6 60" style="enable-background:new 0 0 395.6 60;" xml:space="preserve">
            <g>
              <path class="st0"
                d="M58.7,10.8h-5.6v48.3H42.8l-25.1-33v22.1h5.6v10.8H0V48.3h5.6V10.8H0V0h17.6L41,30.7V10.8h-5.6V0h23.2	L58.7,10.8L58.7,10.8z M95.8,38c0,0.9,0,1.8-0.1,2.7H70.3c-0.7,8.2,2.4,10.6,7.1,10.6c3.9,0,6.9-2.6,6.9-6.6h11	c-0.3,7.2-4,15.4-18.5,15.4c-14.5,0-21.3-10.5-21.3-22.1c0-10.5,7-21.6,21-21.6C89.9,16.3,95.8,25.6,95.8,38 M159,27.3h-3.7	l-9.4,31.8h-12.5l-5.9-17.4l-5.3,17.4h-12.8L98.8,27.4h-3.7V16.6h22.1v10.7h-5.6l5.8,16.9l7.6-27.6h6.8l9.3,27.6l5-16.9h-5.6V16.6	H159L159,27.3L159,27.3z M174.5,27.8c0,1.5,1.2,2.5,5.4,3.9l6,2c5.5,1.8,12.1,5.9,12.1,13.4c0,8.8-6.6,13-14.7,13	c-6.5,0-11.5-3.2-12.9-4.6V59h-10.8V44.4h10.6c0.3,4.8,4.6,7.3,8.5,7.3c3.2,0,4.7-1.4,4.7-3c0-2-1.2-3.1-6.5-4.8l-5.3-1.8	c-5.4-1.7-11.4-5.7-11.4-12.8c0-8.7,7.7-13.1,14.3-13.1c6.8,0,10.1,1.9,11.8,3.8l0.1-3.3H197v13.3h-11.2c-0.2-3.6-3.7-5.2-7.2-5.2	C175.8,24.8,174.5,26.1,174.5,27.8 M262.8,27.3h-3.7l-9.4,31.8h-12.5l-5.9-17.4L226,59.1h-12.8l-10.6-31.7h-3.7V16.6h22.1v10.7	h-5.6l5.8,16.9l7.6-27.6h6.8l9.3,27.7l5-16.9h-5.6V16.6h18.5V27.3z M302,37.9c0,0.9,0,1.8-0.1,2.7h-25.4	c-0.7,8.2,2.4,10.6,7.1,10.6c3.9,0,6.9-2.6,6.9-6.6h11c-0.3,7.2-4,15.4-18.5,15.4c-14.5,0-21.3-10.5-21.3-22.1	c0-10.5,7-21.6,21-21.6C296.1,16.2,302,25.5,302,37.9 M343.9,37.8c0,0.9,0,1.8-0.1,2.7h-25.4c-0.7,8.2,2.4,10.6,7.1,10.6	c3.9,0,6.9-2.6,6.9-6.6h11c-0.3,7.2-4,15.4-18.5,15.4c-14.5,0-21.3-10.5-21.3-22.1c0-10.5,7-21.6,21-21.6	C338,16.1,343.9,25.4,343.9,37.8 M389.9,59h-12.8l-13.3-17.3l-4.3,3.2v3.4h3.8V59h-19.6V48.3h3.7V10.6h-5.6V0h17.8v33.9l8.9-6.5	h-5.6V16.6h23.9v10.8h-3.7l-9.3,7l10.7,13.9h5.6L389.9,59L389.9,59z M395.6,56.6c0,0.5-0.1,0.9-0.4,1.2c-0.2,0.4-0.5,0.7-0.9,0.9	c-0.4,0.2-0.8,0.4-1.3,0.4c-0.5,0-0.9-0.1-1.2-0.4c-0.4-0.2-0.7-0.5-0.9-0.9c-0.2-0.4-0.4-0.8-0.4-1.2c0-0.5,0.1-0.9,0.4-1.2	c0.2-0.4,0.5-0.7,0.9-0.9c0.4-0.2,0.8-0.4,1.2-0.4c0.5,0,0.9,0.1,1.3,0.4c0.4,0.2,0.7,0.5,0.9,0.9	C395.5,55.8,395.6,56.2,395.6,56.6 M394.6,58c0.4-0.4,0.6-0.9,0.6-1.4c0-0.6-0.2-1-0.6-1.4s-0.9-0.6-1.4-0.6s-1,0.2-1.4,0.6	c-0.4,0.4-0.6,0.9-0.6,1.4c0,0.6,0.2,1,0.6,1.4c0.4,0.4,0.9,0.6,1.4,0.6S394.2,58.4,394.6,58 M393.6,56.8c0.1,0.1,0.2,0.1,0.2,0.1	c0.1,0.1,0.2,0.2,0.2,0.3c0,0,0.2,0.3,0.4,0.8h-0.8c-0.3-0.5-0.4-0.8-0.5-0.9c-0.1-0.1-0.2-0.2-0.3-0.2c0,0-0.1,0-0.1,0v1.1h-0.6	v-2.6h1.2c0.4,0,0.6,0.1,0.7,0.2c0.2,0.2,0.2,0.3,0.2,0.6c0,0.2-0.1,0.4-0.2,0.5C393.9,56.6,393.8,56.7,393.6,56.8 M393.5,56.3	c0.1-0.1,0.1-0.2,0.1-0.3s-0.1-0.2-0.1-0.3c-0.1-0.1-0.2-0.1-0.4-0.1h-0.3v0.7h0.3C393.3,56.4,393.4,56.4,393.5,56.3 M318.4,33.5	h13.9c0-6-3.9-8.4-6.8-8.4C322.1,25.2,318.6,27.9,318.4,33.5 M276.5,33.6h13.9c0-6-3.9-8.4-6.8-8.4C280.3,25.2,276.8,28,276.5,33.6 M70.3,33.7h13.9c0-6-3.9-8.4-6.8-8.4C74.1,25.3,70.6,28.1,70.3,33.7">
              </path>
            </g>
          </svg>
        </span>
        <span class="float-right">
          <span>SIGN IN</span>
          <span>SUBSCRIBE ></span>
        </span>
      </div>
      <div class="second-row d-flex justify-content-around">
       
        <span>World</span>|
        <span>Business</span>|
        <span>Tech & Science</span>|
        <span>Culture</span>|
        <span>Newsgeek</span>|
        <span>Sports</span>|
        <span>Health</span>|
        <span>Opinion</span>|
      </div>
    </nav>

    <nav class="navbar sticky-top d-lg-none d-xl-none mobile-nav">
      <span class="logo float-left">
        <svg class="mobile-nav-svg" version="1.1" id="Layer_2" xmlns="http://www.w3.org/2000/svg"
          xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 395.6 60"
          style="enable-background:new 0 0 395.6 60;" xml:space="preserve">
          <g>
            <path class="st0"
              d="M58.7,10.8h-5.6v48.3H42.8l-25.1-33v22.1h5.6v10.8H0V48.3h5.6V10.8H0V0h17.6L41,30.7V10.8h-5.6V0h23.2	L58.7,10.8L58.7,10.8z M95.8,38c0,0.9,0,1.8-0.1,2.7H70.3c-0.7,8.2,2.4,10.6,7.1,10.6c3.9,0,6.9-2.6,6.9-6.6h11	c-0.3,7.2-4,15.4-18.5,15.4c-14.5,0-21.3-10.5-21.3-22.1c0-10.5,7-21.6,21-21.6C89.9,16.3,95.8,25.6,95.8,38 M159,27.3h-3.7	l-9.4,31.8h-12.5l-5.9-17.4l-5.3,17.4h-12.8L98.8,27.4h-3.7V16.6h22.1v10.7h-5.6l5.8,16.9l7.6-27.6h6.8l9.3,27.6l5-16.9h-5.6V16.6	H159L159,27.3L159,27.3z M174.5,27.8c0,1.5,1.2,2.5,5.4,3.9l6,2c5.5,1.8,12.1,5.9,12.1,13.4c0,8.8-6.6,13-14.7,13	c-6.5,0-11.5-3.2-12.9-4.6V59h-10.8V44.4h10.6c0.3,4.8,4.6,7.3,8.5,7.3c3.2,0,4.7-1.4,4.7-3c0-2-1.2-3.1-6.5-4.8l-5.3-1.8	c-5.4-1.7-11.4-5.7-11.4-12.8c0-8.7,7.7-13.1,14.3-13.1c6.8,0,10.1,1.9,11.8,3.8l0.1-3.3H197v13.3h-11.2c-0.2-3.6-3.7-5.2-7.2-5.2	C175.8,24.8,174.5,26.1,174.5,27.8 M262.8,27.3h-3.7l-9.4,31.8h-12.5l-5.9-17.4L226,59.1h-12.8l-10.6-31.7h-3.7V16.6h22.1v10.7	h-5.6l5.8,16.9l7.6-27.6h6.8l9.3,27.7l5-16.9h-5.6V16.6h18.5V27.3z M302,37.9c0,0.9,0,1.8-0.1,2.7h-25.4	c-0.7,8.2,2.4,10.6,7.1,10.6c3.9,0,6.9-2.6,6.9-6.6h11c-0.3,7.2-4,15.4-18.5,15.4c-14.5,0-21.3-10.5-21.3-22.1	c0-10.5,7-21.6,21-21.6C296.1,16.2,302,25.5,302,37.9 M343.9,37.8c0,0.9,0,1.8-0.1,2.7h-25.4c-0.7,8.2,2.4,10.6,7.1,10.6	c3.9,0,6.9-2.6,6.9-6.6h11c-0.3,7.2-4,15.4-18.5,15.4c-14.5,0-21.3-10.5-21.3-22.1c0-10.5,7-21.6,21-21.6	C338,16.1,343.9,25.4,343.9,37.8 M389.9,59h-12.8l-13.3-17.3l-4.3,3.2v3.4h3.8V59h-19.6V48.3h3.7V10.6h-5.6V0h17.8v33.9l8.9-6.5	h-5.6V16.6h23.9v10.8h-3.7l-9.3,7l10.7,13.9h5.6L389.9,59L389.9,59z M395.6,56.6c0,0.5-0.1,0.9-0.4,1.2c-0.2,0.4-0.5,0.7-0.9,0.9	c-0.4,0.2-0.8,0.4-1.3,0.4c-0.5,0-0.9-0.1-1.2-0.4c-0.4-0.2-0.7-0.5-0.9-0.9c-0.2-0.4-0.4-0.8-0.4-1.2c0-0.5,0.1-0.9,0.4-1.2	c0.2-0.4,0.5-0.7,0.9-0.9c0.4-0.2,0.8-0.4,1.2-0.4c0.5,0,0.9,0.1,1.3,0.4c0.4,0.2,0.7,0.5,0.9,0.9	C395.5,55.8,395.6,56.2,395.6,56.6 M394.6,58c0.4-0.4,0.6-0.9,0.6-1.4c0-0.6-0.2-1-0.6-1.4s-0.9-0.6-1.4-0.6s-1,0.2-1.4,0.6	c-0.4,0.4-0.6,0.9-0.6,1.4c0,0.6,0.2,1,0.6,1.4c0.4,0.4,0.9,0.6,1.4,0.6S394.2,58.4,394.6,58 M393.6,56.8c0.1,0.1,0.2,0.1,0.2,0.1	c0.1,0.1,0.2,0.2,0.2,0.3c0,0,0.2,0.3,0.4,0.8h-0.8c-0.3-0.5-0.4-0.8-0.5-0.9c-0.1-0.1-0.2-0.2-0.3-0.2c0,0-0.1,0-0.1,0v1.1h-0.6	v-2.6h1.2c0.4,0,0.6,0.1,0.7,0.2c0.2,0.2,0.2,0.3,0.2,0.6c0,0.2-0.1,0.4-0.2,0.5C393.9,56.6,393.8,56.7,393.6,56.8 M393.5,56.3	c0.1-0.1,0.1-0.2,0.1-0.3s-0.1-0.2-0.1-0.3c-0.1-0.1-0.2-0.1-0.4-0.1h-0.3v0.7h0.3C393.3,56.4,393.4,56.4,393.5,56.3 M318.4,33.5	h13.9c0-6-3.9-8.4-6.8-8.4C322.1,25.2,318.6,27.9,318.4,33.5 M276.5,33.6h13.9c0-6-3.9-8.4-6.8-8.4C280.3,25.2,276.8,28,276.5,33.6 M70.3,33.7h13.9c0-6-3.9-8.4-6.8-8.4C74.1,25.3,70.6,28.1,70.3,33.7">
            </path>
          </g>
        </svg>
      </span>
      <span class="float-right">
        <span>SIGN IN</span>
        <span class="sub">SUBSCRIBE ></span>
        <i class="fas fa-bars"></i>
      </span>
    </nav>
  </header>

    
  
    <div class="row">
      
      <div class="col-lg-12 col-md-12 col-sm-12 col-12">
        <section class="editors-pick">
          <div class="row">
          <c:forEach var="item" items="${items}">
            <article class="col-lg-3 col-md-6 col-sm-12 col-12">
                 
              <h3>
               ${item.title}
              </h3>
              <div class="wrap">
                <span class="image-caption">${item.category}</span>
                <img height="200" width="40" src="${item.enclosure}" alt="img" />
              </div>
           <!--    <div class="summary" style="color:red;">
                <bold>Category</bold> : ${item.category}
              </div> -->
              <div class="summary">
                ${item.description}
              </div>
              
              <a href="${item.link}">Continue reading...</a>
              <i>${item.pubDate}</i>
            </article>
            <br><br>
            <br>
            </c:forEach>
          </div>
        </section>
      </div>
    
    </div>
  


    <footer>
      <div class="row first-row no-gutters">
        <div class="col-lg-8 col-md-12 col-sm-12 col-12">
          <svg class="footer-svg" version="1.1" id="Layer_3" xmlns="http://www.w3.org/2000/svg"
            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 395.6 60"
            style="enable-background:new 0 0 395.6 60;" xml:space="preserve">
            <g>
              <path class="st0"
                d="M58.7,10.8h-5.6v48.3H42.8l-25.1-33v22.1h5.6v10.8H0V48.3h5.6V10.8H0V0h17.6L41,30.7V10.8h-5.6V0h23.2	L58.7,10.8L58.7,10.8z M95.8,38c0,0.9,0,1.8-0.1,2.7H70.3c-0.7,8.2,2.4,10.6,7.1,10.6c3.9,0,6.9-2.6,6.9-6.6h11	c-0.3,7.2-4,15.4-18.5,15.4c-14.5,0-21.3-10.5-21.3-22.1c0-10.5,7-21.6,21-21.6C89.9,16.3,95.8,25.6,95.8,38 M159,27.3h-3.7	l-9.4,31.8h-12.5l-5.9-17.4l-5.3,17.4h-12.8L98.8,27.4h-3.7V16.6h22.1v10.7h-5.6l5.8,16.9l7.6-27.6h6.8l9.3,27.6l5-16.9h-5.6V16.6	H159L159,27.3L159,27.3z M174.5,27.8c0,1.5,1.2,2.5,5.4,3.9l6,2c5.5,1.8,12.1,5.9,12.1,13.4c0,8.8-6.6,13-14.7,13	c-6.5,0-11.5-3.2-12.9-4.6V59h-10.8V44.4h10.6c0.3,4.8,4.6,7.3,8.5,7.3c3.2,0,4.7-1.4,4.7-3c0-2-1.2-3.1-6.5-4.8l-5.3-1.8	c-5.4-1.7-11.4-5.7-11.4-12.8c0-8.7,7.7-13.1,14.3-13.1c6.8,0,10.1,1.9,11.8,3.8l0.1-3.3H197v13.3h-11.2c-0.2-3.6-3.7-5.2-7.2-5.2	C175.8,24.8,174.5,26.1,174.5,27.8 M262.8,27.3h-3.7l-9.4,31.8h-12.5l-5.9-17.4L226,59.1h-12.8l-10.6-31.7h-3.7V16.6h22.1v10.7	h-5.6l5.8,16.9l7.6-27.6h6.8l9.3,27.7l5-16.9h-5.6V16.6h18.5V27.3z M302,37.9c0,0.9,0,1.8-0.1,2.7h-25.4	c-0.7,8.2,2.4,10.6,7.1,10.6c3.9,0,6.9-2.6,6.9-6.6h11c-0.3,7.2-4,15.4-18.5,15.4c-14.5,0-21.3-10.5-21.3-22.1	c0-10.5,7-21.6,21-21.6C296.1,16.2,302,25.5,302,37.9 M343.9,37.8c0,0.9,0,1.8-0.1,2.7h-25.4c-0.7,8.2,2.4,10.6,7.1,10.6	c3.9,0,6.9-2.6,6.9-6.6h11c-0.3,7.2-4,15.4-18.5,15.4c-14.5,0-21.3-10.5-21.3-22.1c0-10.5,7-21.6,21-21.6	C338,16.1,343.9,25.4,343.9,37.8 M389.9,59h-12.8l-13.3-17.3l-4.3,3.2v3.4h3.8V59h-19.6V48.3h3.7V10.6h-5.6V0h17.8v33.9l8.9-6.5	h-5.6V16.6h23.9v10.8h-3.7l-9.3,7l10.7,13.9h5.6L389.9,59L389.9,59z M395.6,56.6c0,0.5-0.1,0.9-0.4,1.2c-0.2,0.4-0.5,0.7-0.9,0.9	c-0.4,0.2-0.8,0.4-1.3,0.4c-0.5,0-0.9-0.1-1.2-0.4c-0.4-0.2-0.7-0.5-0.9-0.9c-0.2-0.4-0.4-0.8-0.4-1.2c0-0.5,0.1-0.9,0.4-1.2	c0.2-0.4,0.5-0.7,0.9-0.9c0.4-0.2,0.8-0.4,1.2-0.4c0.5,0,0.9,0.1,1.3,0.4c0.4,0.2,0.7,0.5,0.9,0.9	C395.5,55.8,395.6,56.2,395.6,56.6 M394.6,58c0.4-0.4,0.6-0.9,0.6-1.4c0-0.6-0.2-1-0.6-1.4s-0.9-0.6-1.4-0.6s-1,0.2-1.4,0.6	c-0.4,0.4-0.6,0.9-0.6,1.4c0,0.6,0.2,1,0.6,1.4c0.4,0.4,0.9,0.6,1.4,0.6S394.2,58.4,394.6,58 M393.6,56.8c0.1,0.1,0.2,0.1,0.2,0.1	c0.1,0.1,0.2,0.2,0.2,0.3c0,0,0.2,0.3,0.4,0.8h-0.8c-0.3-0.5-0.4-0.8-0.5-0.9c-0.1-0.1-0.2-0.2-0.3-0.2c0,0-0.1,0-0.1,0v1.1h-0.6	v-2.6h1.2c0.4,0,0.6,0.1,0.7,0.2c0.2,0.2,0.2,0.3,0.2,0.6c0,0.2-0.1,0.4-0.2,0.5C393.9,56.6,393.8,56.7,393.6,56.8 M393.5,56.3	c0.1-0.1,0.1-0.2,0.1-0.3s-0.1-0.2-0.1-0.3c-0.1-0.1-0.2-0.1-0.4-0.1h-0.3v0.7h0.3C393.3,56.4,393.4,56.4,393.5,56.3 M318.4,33.5	h13.9c0-6-3.9-8.4-6.8-8.4C322.1,25.2,318.6,27.9,318.4,33.5 M276.5,33.6h13.9c0-6-3.9-8.4-6.8-8.4C280.3,25.2,276.8,28,276.5,33.6 M70.3,33.7h13.9c0-6-3.9-8.4-6.8-8.4C74.1,25.3,70.6,28.1,70.3,33.7">
              </path>
            </g>
          </svg>
          <span class="copyright">� 2020 ENEWS</span>
        </div>
        <div class="col-lg-4 col-md-12 col-sm-12 social col-12">
          <i class="fab fa-facebook-f"></i>
          <i class="fab fa-twitter-square"></i>
          <i class="fab fa-instagram"></i>
        </div>
      </div>
      <div class="row second-row no-gutters mt-2">
        <div class="col-lg-7 col-md-12 col-sm-12 links col-12">
          <span>About Us</span>
          <span>Corrections</span>
          <span>Contact Us</span>
          <span>Editorial Guidelines</span>
          <span>Advertise</span>
          <span>Copyright</span>
          <span>Terms & Conditions</span>
          <span>Privacy Policy</span>
          <span>Cookie Policy</span>
          <span>Terms of Sale</span>
          <span>Archive</span>
          <span>Announcements</span>
          <span>Consent preferences</span>
        </div>
        <div class="col-lg-4 offset-lg-1 col-md-12 col-sm-12 links col-12">
          <span><b>Editions:</b></span>
          <span>U.S. Edition</span>
          <span>French</span>
        </div>
      </div>
    </footer>
  </main>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
    <script>n =  new Date();
    y = n.getFullYear();
    m = n.getMonth() + 1;
    d = n.getDate();
    document.getElementById("date").innerHTML = m + "/" + d + "/" + y;</script>
</body>

>>>>>>> 0fe6ac1e886d00d9d203fbfa42a50b0814319e2f
</html>