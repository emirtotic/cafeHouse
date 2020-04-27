<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Cafe House Today Special</title>
<!-- 
Cafe House Template
http://www.templatemo.com/tm-466-cafe-house
-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/templatemo-style.css" rel="stylesheet">
  <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>
    <!-- Preloader -->
    <div id="loader-wrapper">
      <div id="loader"></div>
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
    </div>
    <!-- End Preloader -->
    <div class="tm-top-header">
      <div class="container">
        <div class="row">
          <div class="tm-top-header-inner">
            <div class="tm-logo-container">
              <img src="img/logo.png" alt="Logo" class="tm-site-logo">
              <h1 class="tm-site-name tm-handwriting-font">Cafe House</h1>
            </div>
            <div class="mobile-menu-icon">
              <i class="fa fa-bars"></i>
            </div>
            <nav class="tm-nav">
              <ul>
                <li><a href="index-page">Home</a></li>
                <li><a href="about-page">About Us</a></li>
                <li><a href="today-special-page" class="active">Today Special</a></li>
                <li><a href="menu-page">Menu</a></li>
                <li><a href="contact-page">Contact</a></li>
              </ul>
            </nav>   
          </div>           
        </div>    
      </div>
    </div>
    <section class="tm-welcome-section">
      <div class="container tm-position-relative">
        <div class="tm-lights-container">
          <img src="img/light.png" alt="Light" class="light light-1">
          <img src="img/light.png" alt="Light" class="light light-2">
          <img src="img/light.png" alt="Light" class="light light-3">  
        </div>        
       
       <div class="row tm-welcome-content">
          <h2 class="white-text tm-handwriting-font tm-welcome-header"><img src="img/header-line.png" alt="Line" class="tm-header-line">&nbsp;Today's Special&nbsp;&nbsp;<img src="img/header-line.png" alt="Line" class="tm-header-line"></h2>
          <h2 class="gold-text tm-welcome-header-2">Cafe House</h2>
          <h3>PERFECT COFFEE MOMENTS & WELCOMING ATMOSPHERE</h3>>
          <p class="gray-text tm-welcome-description">
          
          
          
          	The birth of the Coffeeshop Company can be traced back to 1999 when the first Coffeeshop opened its doors to its guests on a 
			historical September day in Vienna.

			Characterized by a very special and unimitable atmosphere, the Coffeeshop Company is a new, unique interpretation of the 
			ever-popular traditional Viennese coffee house culuture, which was included in the UNESCO list of ,,intangible cultural heritage’’ in 2011.
          
          </p>
          
          <a href="#main" class="tm-more-button tm-more-button-welcome">Popular Items</a>      
        </div>
       
        <img src="img/table-set.png" alt="Table Set" class="tm-table-set img-responsive">             
      </div>      
    </section>
    <div class="tm-main-section light-gray-bg">
      <div class="container" id="main">
        <section class="tm-section row">
                   
        </section>          
        <section class="tm-section tm-section-margin-bottom-0 row">
          <div class="col-lg-12 tm-section-header-container">
            <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Popular Items</h2>
            <div class="tm-hr-container"><hr class="tm-hr"></div>
          </div>
          <div class="col-lg-12 tm-popular-items-container">
          
          <c:forEach var="category" items="${categoryList}">
          
            <div class="tm-popular-item">
              <img src="${category.image}" alt="Popular" align="top" height="150" width="150" class="tm-popular-item-img">
              <div class="tm-popular-item-description">
                <h3>${category.name}</h3><hr class="tm-popular-item-hr">
                <p>${category.description}</p>
                <div class="order-now-container">
                  <a href="#" class="order-now-link tm-handwriting-font">Order Now</a>
                </div>
              </div>              
            </div>
            
          </c:forEach>
            
           
          </div>          
        </section>
        <section class="tm-section row">
          <div class="col-lg-12 tm-section-header-container">
            <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Today's Special</h2>
            <div class="tm-hr-container"><hr class="tm-hr"></div>
          </div>          
          <div class="col-lg-12 tm-special-container margin-top-60">
          
          <c:forEach var="coffee" items="${coffeeList}">
          
            <div class="tm-special-container-left"> <!-- left -->
              <div class="tm-special-item">
                <div class="tm-special-img-container">
                  <img src="${coffee.image}" alt="Special" height="200px" width="200px" >  
                  <a href="#">
                    <div class="tm-special-description">
                      <h3 class="tm-special-title">${coffee.name}</h3>
                      <p>${coffee.description}</p>  
                    </div>            
                  </a>
                </div>
              </div>
            </div>
            
            </c:forEach>
            

            
            
            
          </div>
        </section>
        <section class="tm-section">
          <div class="row">
            <div class="col-lg-12 tm-section-header-container">
              <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Daily Menu</h2> 
              <div class="tm-hr-container"><hr class="tm-hr"></div> 
            </div>  
          </div>          
          <div class="row">
            <div class="tm-daily-menu-container margin-top-60">
              <div class="col-lg-4 col-md-4">
                <img src="img/menu-board.png" alt="Menu board" class="tm-daily-menu-img">      
              </div>            
              <div class="col-lg-8 col-md-8">
                <p>
                In our Coffe House we have plenty types of coffee served on many ways. Some of them, best selling ones are on the list.
                If you have some advises for us to improve our service, please feel free to contact us.
                </p>
                <ol class="margin-top-30">
                  <li>Espresso</li> 
                  <li>Caffe Americano</li>
                  <li>Caffe Moca</li> 
                  <li>NesCaffe Classic</li> 
                  <li>Caffe Late</li> 
                  <li>Affogato</li> 
                </ol>
                <a href="contact-page" class="tm-more-button margin-top-30">Your Advices</a>    
              </div>
            </div>
          </div>          
        </section>
      </div>
    </div> 
    <footer>
      <div class="tm-black-bg">
        <div class="container">
          <div class="row margin-bottom-60">
            <nav class="col-lg-3 col-md-3 tm-footer-nav tm-footer-div">
              <h3 class="tm-footer-div-title">Main Menu</h3>
              <ul>
                <li><a href="index-page">Home</a></li>
                <li><a href="about-page">About Us</a></li>
                <li><a href="today-special-page">Daily Special</a></li>
                <li><a href="menu-page">Menu</a></li>
                <li><a href="contact-page">Contact Us</a></li>
              </ul>
            </nav>
            <div class="col-lg-5 col-md-5 tm-footer-div">
              <h3 class="tm-footer-div-title">About Us</h3>
              <p class="margin-top-15">
              The birth of the Coffeeshop Company can be traced back to 1999 when the first Coffeeshop 
              opened its doors to its guests on a historical September day in Vienna. Characterized by a 
              very special and unimitable atmosphere, the Coffeeshop Company is a new, unique interpretation 
              of the ever-popular traditional Viennese coffee house culuture, which was included in the UNESCO 
              list of ,,intangible cultural heritage’’ in 2016.
              </p>
              </div>
            <div class="col-lg-4 col-md-4 tm-footer-div">
              <h3 class="tm-footer-div-title">Get Social</h3>
              <p>Check out our social networks</p>
              <div class="tm-social-icons-container">
                <a href="https://www.facebook.com/" target="_blank" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                <a href="https://www.twitter.com/" target="_blank" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                <a href="https://www.linkedin.com/" target="_blank" class="tm-social-icon"><i class="fa fa-linkedin"></i></a>
                <a href="https://www.youtube.com/" target="_blank" class="tm-social-icon"><i class="fa fa-youtube"></i></a>
                <a href="https://www.behance.net/" target="_blank" class="tm-social-icon"><i class="fa fa-behance"></i></a>
              </div>
            </div>
          </div>          
        </div>  
      </div>      
      <div>
        <div class="container">
          <div class="row tm-copyright">
           <p class="col-lg-12 small copyright-text text-center">Copyright &copy; Emir Totić - <a href="https://cubes.edu.rs/" target="_blank">Cubes School</a> 2020</p>
         </div>  
       </div>
     </div>
   </footer> <!-- Footer content-->  
   <!-- JS -->
   <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
   <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->

 </body>
 </html>