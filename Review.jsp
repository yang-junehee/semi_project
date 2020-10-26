<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<style>
	#paging{
		width:140px;
		margin:0 auto;
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
   <section style=margin-top:80px class="mona-cta-area section-padding-80">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="cta-content">
            <h2>리뷰 작성을 원하시나요?</h2>
            <h6>리뷰는 회원님의 아이디와 제목, 내용으로 구성됩니다.</h6>
            <c:if test="${name==null }">
            <a onclick="msg()" class="btn mona-btn">리뷰 작성하기</a>
            </c:if>
            <c:if test="${name!=null }">
            <a href="ReviewWrite.jsp" class="btn mona-btn">리뷰 작성하기</a>
            </c:if>
          </div>
        </div>
      </div>
    </div>
  </section>
  <c:forEach var="rList" items="${rList}">
  <section style=margin-top:120px class="clients-feedback-area section-padding-0-80 clearfix">
    <div class="container">
      <div class="row">
        <!-- Section Heading -->
        <div class="col-12">
          <div class="section-heading text-center">
            <h2>${rList.title }</h2>
          </div>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-12 col-md-10">
          <div class="slider slider-for">

            <!-- Client Feedback Text -->
            <div class="client-feedback-text text-center">
              <div class="quote-icon">
                <i class="icon_quotations" aria-hidden="true"></i>
              </div>
              <div class="client-description text-center">
                <h4>“${rList.content }”</h4>
              </div>
              <div class="client-name text-center">
                <h5>${rList.id }</h5>
                <span>${rList.num }</span>
              </div>
              <div class="comment-meta">
                        <a href="ReviewReWrite.jsp?num=${rList.num }">「 수정 」</a>
                        <a href="ReviewDelete?num=${rList.num }">「 삭제 」</a>
             </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  </c:forEach>
  
  

  
<div id="paging">
    <ul class="pagination">
  	<c:if test="${paging.page<=1 }">
    <li class="page-item disabled">
      <a class="page-link">&laquo;</a>
    </li>
    </c:if>
    
    <c:if test="${paging.page>1 }">
    <li class="page-item">
      <a class="page-link" href="ReviewList?page=${paging.page-1 }">&raquo;</a>
    </li>
    </c:if>
    
    
    <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="i" step="1">
    <c:choose>
    <c:when test="${i eq paging.page }">
    <li class="page-item active">
      <a class="page-link" href="">${i }</a>
    </li>
    </c:when>
    
    <c:otherwise>
    <li class="page-item active">
      <a class="page-link" href="ReviewList?page=${i }">${i }</a>
    </li>
	</c:otherwise>
	</c:choose>
	</c:forEach>
	
	<c:if test="${paging.page>=paging.maxPage }">
    <li class="page-item disabled">
      <a class="page-link">&raquo;</a>
    </li>
    </c:if>
    <c:if test="${paging.page<paging.maxPage }">
    <li class="page-item">
      <a class="page-link" href="ReviewList?page=${paging.page+1 }">&raquo;</a>
    </li>
    </c:if>
  </ul>
</div>



  
  
  	<footer class="footer-area section-padding-80-0">
		<div class="container">
			<div class="row justify-content-between">

				<!-- Single Footer Widget -->
				<div class="col-12 col-sm-6 col-lg-4 col-xl-3">
					<div class="single-footer-widget mb-60">
						<!-- Logo -->
						<a href="#" class="d-block mb-4"><img
							src="./img/core-img/logo.png" alt=""></a>
						<p>The Michuhol Orsay Museum is a museum with a 100-year history and 
						is working hard to show various works and artists.</p>
						<div class="copywrite-text">
							<p>
								&copy;
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								Michuhol Orsay Museum of Art, created<i
									class="fa fa-heart-o" aria-hidden="true"></i> by <a
									href="https://www.icia.co.kr/" target="_blank">Group C Group 2 Hee-rok-hee</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
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
								<li><a href="https://www.museodelprado.es/">Museo Del Prado Museum</a></li>
								<li><a href="https://www.florence.net/default.asp">Frenze Uffic Museum</a></li>
								<li><a href="https://www.louvre.fr/">Paris Louvre Museum</a></li>
								<li><a href="https://whitney.org/">Whitney Museum of American Art</a></li>
								<li><a href="https://www.npg.org.uk/live/index.asp">National Portrait Gallery</a></li>
								<li><a href="https://www.rembrandthuis.nl/">Rembrandthuis Museum</a></li>
								<li><a href="https://www.clevelandart.org/">Cleveland Museum</a></li>
								<li><a href="https://www.si.edu/">Smithsonian Museum</a></li>
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
							<h4>+33 1 40 49 48 14</h4>
							<h6>1 Rue de la Legion d'honneur, Paris</h6>
						</div>
						<!-- Social Info -->
						<div class="footer-social-info">
							<a href="https://www.facebook.com/museedorsay" class="facebook" data-toggle="tooltip"
								data-placement="top" title="Facebook"><i
								class="fa fa-facebook"></i></a> 
							<a href="https://twitter.com/MuseeOrsay" class="twitter"
								data-toggle="tooltip" data-placement="top" title="Twitter"><i
								class="fa fa-twitter"></i></a> 
							<a href="https://www.instagram.com/museeorsay/?hl=fr" class="instagram"
								data-toggle="tooltip" data-placement="top" title="Instagram"><i
								class="fa fa-instagram"></i></a> 
							<a href="https://www.youtube.com/user/MuseeOrsayOfficiel" class="youtube"
								data-toggle="tooltip" data-placement="top" title="YouTube"><i
								class="fa fa-youtube-play"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
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