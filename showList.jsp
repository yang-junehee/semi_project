<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<style>
	audio{
		width: 5px;
		height: 5px;
	}
</style>

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Mona - Model Agency HTML5 Template">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Title -->
  <title>『 Michuhol Orsay 』</title>

  <!-- Favicon -->
  <link rel="icon" href="./img/core-img/favicon.ico">

  <!-- Core Stylesheet -->
  <link rel="stylesheet" href="style.css">

</head>

<body>
  <!-- Preloader -->
  <div id="preloader">
    <div class="wrapper">
      <div class="cssload-loader"></div>
    </div>
  </div>
  
  
  <!-- ***** Header Area Start ***** -->
  <header class="header-area">
    <!-- Main Header Start -->
    <div class="main-header-area">
      <div class="classy-nav-container breakpoint-off">
        <!-- Classy Menu -->
        <nav class="classy-navbar justify-content-between" id="monaNav">

          <!-- Background Curve -->
          <div class="bg-curve" style="background-image: url(./img/core-img/curve.png);"></div>

          <!-- Logo -->
          <a class="nav-brand" href="Main.jsp"><img src="./img/core-img/logo1.PNG" alt=""></a>

          <!-- Navbar Toggler -->
          <div class="classy-navbar-toggler">
            <span class="navbarToggler"><span></span><span></span><span></span></span>
          </div>

          <!-- Menu -->
          <div class="classy-menu">
            <!-- Menu Close Button -->
            <div class="classycloseIcon">
              <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
            </div>
          </div>

            <!-- Nav Start -->
            <div class="classynav">
              <ul id="nav">
              	<c:if test="${name!=null }">
                <li class="current-item"><a href="./Main.jsp">Home</a></li>
                <li><a href="goghList?name=반 고흐">Van Gogh</a></li>
                <li><a href="milletList?name=장 프랑수아 밀레">Millet</a></li>
                <li><a href="monetList?name=클로드 모네">Monet</a></li>
                <li><a href="degasList?name=드가">Degas</a></li>
                <li><a href="gauguinList?name=폴 고갱">Gauguin</a></li>
                <li><a href="Review.jsp">Review</a></li>
                </c:if>
                
                <c:if test="${name==null }">
                <li class="current-item"><a href="./Main.jsp">Home</a></li>
                <li onclick="msg()"><a>Van Gogh</a></li>
                <li onclick="msg()"><a>Millet</a></li>
                <li onclick="msg()"><a>Monet</a></li>
                <li onclick="msg()"><a>Degas</a></li>
                <li onclick="msg()"><a>Gauguin</a></li>
                <li><a href="Review.jsp">Review</a></li>
                </c:if>
                
              	<!-- 화면 변환 -->
                <c:if test="${name==null }">
                <li><a data-toggle="modal" data-target="#Login">Login</a></li>
                <li><a data-toggle="modal" data-target="#Join">Join</a></li>
                </c:if>
                <c:if test="${name!=null }">
                <li><a>『  Welcome!&nbsp;&nbsp;&nbsp;${sessionScope.name }'s 』</a></li>
                <li><a href="Logout">Logout</a></li>
                </c:if>
                
               </ul>
            </div>
            <!-- Nav End -->
            </nav>
          </div>
      </div>
  </header>
  <!-- Preloader -->
  <div id="preloader">
    <div class="wrapper">
      <div class="cssload-loader"></div>
    </div>
  </div>

  <!-- ***** Header Area Start ***** -->
  <header class="header-area">
    <!-- Main Header Start -->
    <div class="main-header-area">
      <div class="classy-nav-container breakpoint-off">
        <!-- Classy Menu -->
        <nav class="classy-navbar justify-content-between" id="monaNav">

          <!-- Background Curve -->
          <div class="bg-curve" style="background-image: url(./img/core-img/curve.png);"></div>

          <!-- Logo -->
          <a class="nav-brand" href="index.html"><img src="./img/core-img/logo1.PNG" alt=""></a>

          <!-- Navbar Toggler -->
          <div class="classy-navbar-toggler">
            <span class="navbarToggler"><span></span><span></span><span></span></span>
          </div>

          <!-- Menu -->
          <div class="classy-menu">
            <!-- Menu Close Button -->
            <div class="classycloseIcon">
              <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
            </div>

            <!-- Nav Start -->
            <div class="classynav">
              <ul id="nav">
                <li class="current-item"><a href="./index.html">Home</a></li>
                <li><a href="#">Pages</a>
                  <ul class="dropdown">
                    <li><a href="./index.html">- Home</a></li>
                    <li><a href="./about.html">- About Us</a></li>
                    <li><a href="./projects.html">- Projects</a></li>
                    <li><a href="./models.html">- Models</a></li>
                    <li><a href="./casting.html">- Casting</a></li>
                    <li><a href="./blog.html">- Blog</a></li>
                    <li><a href="./single-blog.html">- Blog Details</a></li>
                    <li><a href="./contact.html">- Contact</a></li>
                    <li><a href="#">- Dropdown</a>
                      <ul class="dropdown">
                        <li><a href="#">- Dropdown Item</a></li>
                        <li><a href="#">- Dropdown Item</a>
                          <ul class="dropdown">
                            <li><a href="#">- Even Dropdown</a></li>
                            <li><a href="#">- Even Dropdown</a></li>
                            <li><a href="#">- Even Dropdown</a></li>
                            <li><a href="#">- Even Dropdown</a></li>
                          </ul>
                        </li>
                        <li><a href="#">- Dropdown Item</a></li>
                        <li><a href="#">- Dropdown Item</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li><a href="./projects.html">Project</a></li>
                <li><a href="./models.html">Models</a></li>
                <li><a href="./casting.html">Casting</a></li>
                <li><a href="#">Blog</a>
                  <ul class="dropdown">
                    <li><a href="./blog.html">- Blog</a></li>
                    <li><a href="./single-blog.html">- Blog Details</a></li>
                  </ul>
                </li>
                <li><a href="./contact.html">Contact</a></li>
              </ul>

              <!-- Search Icon -->
              <div class="search-icon" data-toggle="modal" data-target="#searchModal">
                <i class="icon_search"></i>
              </div>
            </div>
            <!-- Nav End -->

          </div>
        </nav>
      </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->
<section>
  <!-- ***** Breadcrumb Area Start ***** -->
  <div class="breadcumb-area">
    <div class="container h-100">
      <div class="row h-100 align-items-end">
        <div class="col-12">
          <div class="breadcumb--con">
            <h2 class="title">Models</h2>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Models</li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ***** Breadcrumb Area End ***** -->



    <!-- Mona Tab Content -->
    <div class="mona-tab-content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="tab-content" id="mona_modelTabContent">
              <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab1">
                <div class="row flex-wrap">
                  <!-- Single Model Item -->
                  <div class="col-12 col-sm-6 col-md-4 col-lg-3 col-xl">
                    <div class="single-model-item mb-50">
                      <div class="model-thumbnail">
                        <!-- First Thumbnail -->
                        <img class="first-thumbnail" src="./img/bg-img/goghshow1.jpg" alt="">
                        <!-- Second Thumbnail -->
                        <img class="second-thumbnail" src="./img/bg-img/goghshow2.png" alt="">
                        <!-- Share Info -->
                        <div class="share-info">
                          <!-- Share Icon -->
                          <div class="share-icon">
                            <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                          </div>
                          <!-- Others Icon -->
                          <div class="others-icon">
                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                          </div>
                        </div>
                      </div>
                      <div class="model-info">
                        <h3>Willie Figueroa</h3>
                        <h6>Model</h6>
                      </div>
                    </div>
                  </div>

                    </div>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
</section>

  <!-- ***** Footer Area Start ***** -->
  <footer class="footer-area section-padding-80-0">
    <div class="container">
      <div class="row justify-content-between">

        <!-- Single Footer Widget -->
        <div class="col-12 col-sm-6 col-lg-4 col-xl-3">
          <div class="single-footer-widget mb-60">
            <!-- Logo -->
            <a href="#" class="d-block mb-4"><img src="" alt=""></a>
            <p>Integer vehicula mauris libero, at molestie eros imperdiet sit amet. Suspendisse mattis ante sit amet ante.</p>
            <div class="copywrite-text">
              <p>&copy; 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
          </div>
        </div>

        <!-- Single Footer Widget -->
        <div class="col-12 col-sm-6 col-lg-4 col-xl-3">
          <div class="single-footer-widget mb-60">
            <!-- Widget Title -->
            <h4 class="widget-title">Our Link</h4>

            <!-- Catagories Nav -->
            <nav>
              <ul class="our-link">
                <li><a href="#">New Faces</a></li>
                <li><a href="#">Model Of the Week</a></li>
                <li><a href="#">Classic Women</a></li>
                <li><a href="#">Privacy Terms</a></li>
                <li><a href="#">Classic Men</a></li>
                <li><a href="#">Conditions</a></li>
                <li><a href="#">Hair & Styles</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </nav>
          </div>
        </div>

        <!-- Single Footer Widget -->
        <div class="col-12 col-lg-4 col-xl-3">
          <div class="single-footer-widget mb-60">
            <!-- Widget Title -->
            <h4 class="widget-title">Contact</h4>
            <!-- Footer Content -->
            <div class="footer-content mb-30">
              <h4>+01-3-8888-6868</h4>
              <h6>40 Baria Sreet 133/2 NewYork City</h6>
            </div>
            <!-- Social Info -->
            <div class="footer-social-info">
              <a href="#" class="facebook" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="twitter" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="pinterest" data-toggle="tooltip" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a>
              <a href="#" class="instagram" data-toggle="tooltip" data-placement="top" title="Instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="youtube" data-toggle="tooltip" data-placement="top" title="YouTube"><i class="fa fa-youtube-play"></i></a>
            </div>
          </div>
        </div>

      </div>
    </div>
  </footer>
  <!-- ***** Footer Area End ***** -->

  <!-- ******* All JS ******* -->
  <!-- jQuery js -->
  <script src="js/jquery.min.js"></script>
  <!-- Popper js -->
  <script src="js/popper.min.js"></script>
  <!-- Bootstrap js -->
  <script src="js/bootstrap.min.js"></script>
  <!-- All js -->
  <script src="js/mona.bundle.js"></script>
  <!-- Active js -->
  <script src="js/default-assets/active.js"></script>


</body>
</html>