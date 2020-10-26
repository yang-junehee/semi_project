<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% int num  = Integer.parseInt(request.getParameter("num")); %>
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
<script>
console.log("aa : " + aa );
</script>
<body>

  <!-- Preloader -->
  <div id="preloader">
    <div class="wrapper">
      <div class="cssload-loader"></div>
    </div>
  </div>
  
  <audio controls autoplay src="./이루마-01-f l o w e r.mp3" type="audio/mp3"></audio>
  
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
                <li><a href="ReviewList">Review</a></li>
                </c:if>
                
                <c:if test="${name==null }">
                <li class="current-item"><a href="./Main.jsp">Home</a></li>
                <li onclick="msg()"><a>Van Gogh</a></li>
                <li onclick="msg()"><a>Millet</a></li>
                <li onclick="msg()"><a>Monet</a></li>
                <li onclick="msg()"><a>Degas</a></li>
                <li onclick="msg()"><a>Gauguin</a></li>
                <li><a href="ReviewList">Review</a></li>
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
  <section style=margin-top:120px class="mona-casting-form-area section-padding-80-0">
    <div class="container">
      <div class="row align-items-center justify-content-between">

        <!-- Casting Form Thumbnail -->
        <div class="col-12 col-lg-6 col-xl-6">
          <div class="casting-form-thumbnail mb-80">
            <img style=height:650px src="./img/bg-img/orsay.jpg" alt="">
          </div>
        </div>

        <!-- Casting Form -->
        <div class="col-12 col-lg-6 col-xl-5">
          <div class="casting-form mona-contact-form mb-80">
            <div class="contact-heading">
              <h2>Would you like to leave a review?</h2>
              <p>Thank you for leaving a review, The reviews you left behind are used for development on the Orsay Museum page.</p>
            </div>

            <form action="ProcessReview" method="post" name="write">
              <div class="form-group">
                <label for="fullName">Name:</label>
                <input type="text" class="form-control" name="name">
                <input type="hidden" name="num" value=<%=num %>>
                
              </div>
              <div class="form-group">
                <label for="emailId">Title:</label>
                <input type="email" class="form-control" name="title">
              </div>
              <div class="form-group">
                <label for="resume">Content:</label>
                <textarea class="form-control" name="content" rows="8" cols="80"></textarea>
              </div>
              <button class="btn mona-btn btn-2 mt-15" onclick="Write()">리뷰 수정</button>
            </form>
          </div>
        </div>

      </div>
    </div>
  </section>
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
<script>
	function Write(){
		write.submit();
	}
</script>
</html>