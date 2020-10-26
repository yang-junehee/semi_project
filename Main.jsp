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
  <!-- ***** Header Area End ***** -->

  <!-- 로그인 -->
  <div class="top-search-area">
    <!-- Search Modal -->
    <div class="modal fade" id="Login" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-body">
            <!-- Close Button -->
            <button type="button" class="btn close-btn" data-dismiss="modal"><i class="fa fa-times"></i></button>
            <!-- Form -->
            <form action="memberLogin" method="post">
              <input type="text" name="ID" class="form-control" placeholder="ID">
              <input type="password" name="PW" class="form-control" placeholder="PASSWORD">
              <button type="submit">Login</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- 회원가입 -->
    <div class="top-search-area">
    <!-- Search Modal -->
    <div class="modal fade" id="Join" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-body">
            <!-- Close Button -->
            <button type="button" class="btn close-btn" data-dismiss="modal"><i class="fa fa-times"></i></button>
            <!-- Form -->
            <form action="memberJoin" method="post">
              <input type="text" name="ID" class="form-control" placeholder="ID">
              <input type="password" name="PW" class="form-control" placeholder="PASSWORD">
              <input type="text" name="NAMES" class="form-control" placeholder="NAME">
              <select class="form-control" id="exampleSelect1" name="fArtist">
              	<option>좋아하는 작가</option>
              	<option value="없음">없음</option>
              	<option value="고흐">빈센트 반 고흐</option>
              	<option value="피카소">파블로 피카소</option>
              	<option value="모네">클로드 모네</option>
              	<option value="고갱">폴 고갱</option>
              	<option value="밀레">장 프랑수아 밀레</option>
              	<option value="터너">조제프 말로드 윌리어 터너</option>
              	<option value="클림트">구스타프 클림트</option>
              	<option value="루벤스">피터르 파울 루벤스</option>
              	<option value="렘브란트">하르멘츠 반 레인 렘브란트</option>
              	<option value="로댕">오귀스트 로댕</option>
              	<option value="레제">페르낭 레제</option>
              	<option value="세잔">폴 세잔</option>
              	<option value="마네">에두아르 마네</option>
              	<option value="들라크루아">외젠 들라크루아</option>
              	<option value="고아">프란시스코 고아</option>
              	<option value="카라치">안니발레 카라치</option>
              	<option value="잭슨폴록">잭슨폴록</option>
              	<option value="바스키아">장 미셀 바스키아</option>
              	<option value="카로">프리다 카로</option>
              	<option value="달리">살바도르 달리</option>
              </select>
              <button type="submit">Join</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  
  
  <!-- ***** Top Search Area End ***** -->

  <!-- ***** Welcome Area Start ***** -->
  <section class="welcome-area">
    <!-- Welcome Slides -->
    <div class="welcome-slides owl-carousel">

      <!-- Single Welcome Slide -->
      <div class="single-welcome-slide">
        <!-- Background Curve -->
        <div class="bg-curve" style="background-image: url(./img/core-img/curve.png);"></div>
        <!-- Main Background Image -->
        <div class="main-bg-img bg-img"  style="background-image: url(./img/bg-img/1.jpg);"></div>
        <!-- Welcome Text -->
        <div class="container h-100">
          <div class="row h-100 align-items-center">
            <div class="col-12">
              <div class="welcome-text">
                <h2 >Vincent<br>van<br>
                  Gogh</h2>
                <h5>1853.3.30 ~ 1890.7.29</h5>
                <c:if test="${name==null }">
                <a onclick="msg()" class="btn">Artist details <i class="arrow_right"></i></a>
                </c:if>
                <c:if test="${name!=null }">
                <a href="goghList?name=반 고흐" class="btn">Artist details <i class="arrow_right"></i></a>
                </c:if>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Single Welcome Slide -->
      <div class="single-welcome-slide">
        <!-- Background Curve -->
        <div class="bg-curve" style="background-image: url(./img/core-img/curve.png);"></div>
        <!-- Main Background Image -->
        <div class="main-bg-img bg-img"  style="background-image: url(./img/bg-img/2.PNG);"></div>
        <!-- Welcome Text -->
        <div class="container h-100">
          <div class="row h-100 align-items-center">
            <div class="col-12">
              <div class="welcome-text">
                <h2>Jean <br>Francois<br>
                   Millet </h2>
                <h5>1814.10.4 ~ 1875.1.20</h5>
           		<c:if test="${name==null }">
           		<a onclick="msg()" class="btn" >Artist details <i class="arrow_right"></i></a>
           		</c:if>
           		
           		<c:if test="${name!=null }">
                <a href="milletList?name=장 프랑수아 밀레" class="btn" >Artist details <i class="arrow_right"></i></a>
                </c:if>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Single Welcome Slide -->
      <div class="single-welcome-slide">
        <!-- Background Curve -->
        <div class="bg-curve" style="background-image: url(./img/core-img/curve.png);"></div>
        <!-- Main Background Image -->
        <div class="main-bg-img bg-img" style="background-image: url(./img/bg-img/3.jpg);"></div>
        <!-- Welcome Text -->
        <div class="container h-100">
          <div class="row h-100 align-items-center">
            <div class="col-12">
              <div class="welcome-text">
                <h2 >Oscar<br>Claude<br>
                  Monet</h2>
                <h5 >1840.11.14 ~ 1926.12.5</h5>
                <c:if test="${name==null }">
                <a onclick="msg()" class="btn" >Artist details <i class="arrow_right"></i></a>
                </c:if>
                
                <c:if test="${name!=null }">
                <a href="monetList?name=클로드 모네" class="btn" >Artist details <i class="arrow_right"></i></a>
                </c:if>
              </div>
              
            </div>
          </div>
        </div>
      </div>
    
    
     <!-- Single Welcome Slide -->
      <div class="single-welcome-slide">
        <!-- Background Curve -->
        <div class="bg-curve" style="background-image: url(./img/core-img/curve.png);"></div>
        <!-- Main Background Image -->
        <div class="main-bg-img bg-img"  style="background-image: url(./img/bg-img/4.jpg);"></div>
        <!-- Welcome Text -->
        <div class="container h-100">
          <div class="row h-100 align-items-center">
            <div class="col-12">
              <div class="welcome-text">
                <h2>Edgar<br>
                   Degas</h2>
                <h5>1834.7.19 ~ 1917.9.27</h5>
                <c:if test="${name==null }">
                <a onclick="msg()" class="btn" >Artist details <i class="arrow_right"></i></a>
                </c:if>
                
                <c:if test="${name!=null }">
                <a href="degasList?name=드가" class="btn" >Artist details <i class="arrow_right"></i></a>
                </c:if>
              </div>
            </div>
          </div>
        </div>
      </div>
      
       <!-- Single Welcome Slide -->
      <div class="single-welcome-slide">
        <!-- Background Curve -->
        <div class="bg-curve" style="background-image: url(./img/core-img/curve.png);"></div>
        <!-- Main Background Image -->
        <div class="main-bg-img bg-img"  style="background-image: url(./img/bg-img/5.PNG);"></div>
        <!-- Welcome Text -->
        <div class="container h-100">
          <div class="row h-100 align-items-center">
            <div class="col-12">
              <div class="welcome-text">
                <h2>Paul<br>
                   Gauguin</h2>
                <h5>1848.6.7 ~ 1903.5.8</h5>
                <c:if test="${name==null }">
                <a onclick="msg()" class="btn" >Artist details <i class="arrow_right"></i></a>
                </c:if>
                
                <c:if test="${name!=null }">
                <a href="gauguinList?name=폴 고갱" class="btn" >Artist details <i class="arrow_right"></i></a>
                </c:if>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
  </section>
  <!-- ***** Welcome Area End ***** -->

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
	function msg(){
		alert("로그인 후 이용해주세요.");
	}
</script>

</html>