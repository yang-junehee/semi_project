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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
					<div class="bg-curve"
						style="background-image: url(./img/core-img/curve.png);"></div>

					<!-- Logo -->
					<a class="nav-brand" href="Main.jsp"><img
						src="./img/core-img/logo1.PNG" alt=""></a>

					<!-- Navbar Toggler -->
					<div class="classy-navbar-toggler">
						<span class="navbarToggler"><span></span><span></span><span></span></span>
					</div>

					<!-- Menu -->
					<div class="classy-menu">
						<!-- Menu Close Button -->
						<div class="classycloseIcon">
							<div class="cross-wrap">
								<span class="top"></span><span class="bottom"></span>
							</div>
						</div>

						<!-- Nav Start -->
						<div class="classynav">
							<ul id="nav">
								<li class="current-item"><a href="./Main.jsp">Home</a></li>
                				<li><a href="goghList?name=반 고흐">Van Gogh</a></li>
                				<li><a href="milletList?name=장 프랑수아 밀레">Millet</a></li>
                				<li><a href="monetList?name=클로드 모네">Monet</a></li>
                				<li><a href="degasList?name=드가">Degas</a></li>
                				<li><a href="gauguinList?name=폴 고갱">Gauguin</a></li>
                				<li><a href="ReviewList">Review</a></li>
                				
                				
                				
                				<c:if test="${name==null }">
                				<li><a data-toggle="modal" data-target="#Login">Login</a></li>
                				<li><a data-toggle="modal" data-target="#Join">Join</a></li>
                				</c:if>
                				<c:if test="${name!=null }">
                				<li><a>『  Welcome!&nbsp;&nbsp;&nbsp;${sessionScope.name }'s 』</a></li>
                				<li><a href="Logout">Logout</a></li>
                				</c:if>
                				
							</ul>

							<!-- Search Icon -->
							
						</div>
						<!-- Nav End -->
					</div>
				</nav>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->

	<!-- ***** Top Search Area Start ***** -->
	<div class="top-search-area">
		<!-- Search Modal -->
		<div class="modal fade" id="searchModal" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-body">
						<!-- Close Button -->
						<button type="button" class="btn close-btn" data-dismiss="modal">
							<i class="fa fa-times"></i>
						</button>
						<!-- Form -->
						<form action="Main.jsp" method="post">
							<input type="search" name="top-search-bar" class="form-control"
								placeholder="Search and hit enter...">
							<button type="submit">Search</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ***** Top Search Area End ***** -->

	<!-- ***** Breadcrumb Area Start ***** -->
	<div class="breadcumb-area">
		<div class="container h-100">
			<div class="row h-100 align-items-end">
				<div class="col-12">
					<div class="breadcumb--con">
						<h2 class="title">Artist Detail</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ***** Breadcrumb Area End ***** -->

	<!-- ***** About Us Area Start ***** -->
	<section class="mona-about-us-area mb-30 section-padding-80-0">
		<div class="container">
			<div class="row">

				<!-- About Us Thumbnail -->
				<div class="col-12 col-sm-6 col-lg-4">
					<div class="about-us-thumbnail mb-50">
						<span class="line"></span> <img src="./img/bg-img/millet.PNG"
							alt=""> <span class="line2"></span>
					</div>
				</div>

				<!-- About Us Thumbnail -->
				<div class="col-12 col-sm-6 col-lg-4">
					<div class="about-us-thumbnail mb-50">
						<!-- <span class="line"></span> --> <img src="./img/bg-img/17.jpg" alt="">
						<!-- <span class="line2"></span> -->
					</div>
				</div>

				<!-- About Us Content -->
				<div class="col-12 col-lg-4">
					<div class="about-us-content mb-50">
						<h2>Jean François Millet</h2>
						<p>1814.10.4 ~ 1875.1.20</p>
						<p>프랑스</p>
						<p>프랑스의 화가. 진지한 태도로 농민생활에서 취재한 일련의 작품을 제작하여 독특한 시적(詩的) 정감과 우수에
							찬 분위기가 감도는 작풍을 확립, 바르비종파의 대표적 화가가 되었다. 그러나 다른 화가들과 달리 풍경보다 농민생활을
							더 많이 그렸다. 주요 작품으로 《씨뿌리는 사람》, 《이삭 줍는 사람들》, 《만종》 등이 있다.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<c:forEach var="art" items="${art}">
		<section class="mona-about-us-area mb-30 section-padding-80-0">
			<div class="container">
				<div class="row">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<h1>${art.title }</h1>
								<p>
									<button type="button" class="btn btn-secondary"
										data-toggle="popover" title="${art.year }"
										data-content="${art.info }">
										<img class="artimg" alt="123"
											src="./img/bg-img/millet/${art.file }">
									</button>
								</p>
							</div>
						</div>
					</div>
					<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
					<script
						src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
					<script
						src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
					<script>
						$(function() {
							$('[data-toggle="popover"]').popover()
						});
					</script>
				</div>
			</div>
		</section>
	</c:forEach>


	<!-- ***** Footer Area Start ***** -->
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