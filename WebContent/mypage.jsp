<%@page import="com.DTO.RentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.RentDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>TheEvent Bootstrap Template - Index</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="assets/vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<style>
h1 {
	font-size: 30px;
	color: #506982;
	text-transform: uppercase;
	font-weight: 300;
	text-align: center;
	margin-bottom: 15px;
}

table {
	width: 100%;
	table-layout: fixed;
}

.tbl-header {
	background-color: rgba(900, 90, 100, 0.45);
}

.tbl-content {
	height: 450px;
	overflow-x: auto;
	margin-top: 0px;
	border: 1px solid rgba(255, 255, 255, 0.5);
}

th {
	padding: 20px 15px;
	text-align: left;
	font-weight: 500;
	font-size: 12px;
	color: #506982;
	text-transform: uppercase;
}

.tbl-content td {
	padding: 15px;
	text-align: left;
	vertical-align: middle;
	font-weight: 300;
	font-size: 12px;
	color: #506982;
	border-bottom: solid 1px rgba(0, 0, 0, 1);
}

input[type="submit"].login {
	float: right;
	width: 112px;
	height: 37px;
	-moz-border-radius: 19px;
	-webkit-border-radius: 19px;
	border-radius: 19px;
	-moz-background-clip: padding;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	background-color: #55b1df;
	border: 1px solid #55b1df;
	border: none;
	color: #fff;
	font-weight: bold;
	margin-right: 320px;
}

input[type="submit"].login:hover {
	background-color: #fff;
	border: 1px solid #55b1df;
	color: #55b1df;
	cursor: pointer;
}

input[type="submit"].login:focus {
	outline: none;
}
</style>

</head>
<body>
	<!-- ======= Header ======= -->
	<header id="header">
		<div class="container">

			<div id="logo" class="pull-left">
				<a href="main.jsp" class="scrollto">
				<img src="assets/img/carlogo.png" alt="" title=""></a>
			</div>

			<nav id="nav-menu-container">
				<ul class="nav-menu">

					<li><a href="#schedule">대여현황</a></li>
					<li><a href="#predict">수요예측</a></li>
					<li><a href="#editInfo">정보수정</a></li>

					<li class="buy-tickets"><a href="#buy-tickets">로그아웃</a></li>
				</ul>
			</nav>
			<!-- #nav-menu-container -->
		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Intro Section ======= -->
	<section id="intro">


		<div class="intro-container" data-aos="zoom-in" data-aos-delay="100">


			<h2 style="margin-bottom: 100px; color: white">My Page</h2>


			<a href="#schedule" class="about-btn scrollto"> 차량 대여현황 </a> <br>
			<br> <a href="#predict" class="about-btn scrollto"> 차량 수요예측
			</a> <br> <br> <a href="#editInfo" class="about-btn scrollto">
				나의 정보수정 </a>

		</div>

	</section>
	<!-- End Intro Section -->

	<main id="main">


		<!-- ======= Speakers Section ======= -->
		<section id="predict" style="margin-bottom: 100px;">
			<div class="container" data-aos="fade-up" style="padding-top: 100px;">
				<div class="section-header">
					<h2>차량 수요예측</h2>
					<p>다음달에는 차가 얼마나 필요할까?</p>
				</div>

				<div class="row">
					<div class="col-lg-4 col-md-6">
						<div class="speaker" data-aos="fade-up" data-aos-delay="100">
							<img src="assets/img/speakers/1.jpg" alt="Speaker 1"
								class="img-fluid">
							<div class="details">
								<h3 style="text-align: center; margin-top: 20px;">
									<a href="speaker-details.html" align="center">월별 수요예측</a>
								</h3>
								<p>다음달에 우리회사에 차량소비가 어느정도 일지 예측 할 수 있습니다.</p>

							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="speaker" data-aos="fade-up" data-aos-delay="200">
							<img src="assets/img/speakers/2.jpg" alt="Speaker 2"
								class="img-fluid">
							<div class="details">
								<h3 style="text-align: center; margin-top: 20px;">
									<a href="speaker-details.html">차종별 수요예측</a>
								</h3>
								<p>다음달 우리회사의 차량별 수요를 예측 할 수 있습니다.</p>

							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="speaker" data-aos="fade-up" data-aos-delay="300">
							<img src="assets/img/speakers/3.jpg" alt="Speaker 3"
								class="img-fluid">
							<div class="details">
								<h3 style="text-align: center; margin-top: 20px;">
									<a href="speaker-details.html">이번달 BEST 3</a>
								</h3>
								<p>이번달 가장 많이 렌트된 차종 BEST3를 알 수 있습니다.</p>

							</div>
						</div>
					</div>



				</div>
			</div>

		</section>
		<!-- End Speakers Section -->

		<!-- ======= Schedule Section ======= -->
		<section id="schedule" class="section-with-bg">
			<div class="container" data-aos="fade-up">
				<div class="section-header">
					<h2>차량 대여현황</h2>
					<p>우리회사 렌터카 대여 현황을 확인해봅시다.</p>
				</div>

				<ul class="nav nav-tabs" role="tablist" data-aos="fade-up"
					data-aos-delay="100">
					<li class="nav-item"><a class="nav-link active" href="#day-1"
						role="tab" data-toggle="tab">단기 렌터카</a></li>
					<li class="nav-item"><a class="nav-link" href="#day-2"
						role="tab" data-toggle="tab">장기 렌터카</a></li>

				</ul>
				<%
								RentDAO dao = new RentDAO();
							ArrayList<RentDTO> list = dao.viewall();
							%>



				<div class="tab-content row justify-content-center"
					data-aos="fade-up" data-aos-delay="200">

					<!-- Schdule Day 1 -->
					<div role="tabpanel" class="col-lg-9 tab-pane fade show active" id="day-1">
						<div class="tbl-header">
							<table cellpadding="0" cellspacing="0" border="0">
								<thead>
											<tr>
												<th>차번호</th>
												<th>요청자</th>
												<th>렌트일시</th>
												<th>반납일시</th>
												<th>특이사항</th>				
											</tr>
								</thead>
							</table>
						</div>
						<div class="tbl-content">
							<table cellpadding="0" cellspacing="0" border="0">
								<tbody>
										<%
												for (int i = 0; i < list.size(); i++) {
											%>
											<tr>
												<td><%=list.get(i).getCar_num()%></td>
												<td><%=list.get(i).getRequest_company_id()%></td>
												<td><%=list.get(i).getFirst_day()%></td>
												<td><%=list.get(i).getLast_day()%></td>
												<td><%=list.get(i).getComments()%></td>
											</tr>
											<%
												}
											%>
								</tbody>
							</table>
						</div>
					</div>
					<!-- End Schdule Day 1 -->

					<!-- Schdule Day 2 -->
					<div role="tabpanel" class="col-lg-9  tab-pane fade" id="day-2">

						<div class="tbl-header">
							<table cellpadding="0" cellspacing="0" border="0">
								<thead>
									<tr>
												<th>차번호</th>
												<th>요청자</th>
												<th>렌트일시</th>
												<th>반납일시</th>
												<th>특이사항</th>				
											</tr>
								</thead>
							</table>
						</div>
						<div class="tbl-content">
							<table cellpadding="0" cellspacing="0" border="0">
								<tbody>
										<%
												for (int i = 0; i < list.size(); i++) {
											%>
											<tr>
												<td><%=list.get(i).getCar_num()%></td>
												<td><%=list.get(i).getRequest_company_id()%></td>
												<td><%=list.get(i).getFirst_day()%></td>
												<td><%=list.get(i).getLast_day()%></td>
												<td><%=list.get(i).getComments()%></td>
											</tr>
											<%
												}
											%>
								</tbody>
							</table>
						</div>

					</div>
					<!-- End Schdule Day 2 -->



				</div>

			</div>

		</section>
		<!-- End Schedule Section -->

		<!-- =======  F.A.Q Section ======= -->
		<section id="editInfo" style="margin-bottom: 100px;">

			<div class="container" data-aos="fade-up" style="padding-top: 100px;">

				<div class="section-header">
					<h2>회원정보 수정</h2>
				</div>

				<div class="row justify-content-center" data-aos="fade-up"
					data-aos-delay="100">
					<div class="col-lg-9">
						<ul id="faq-list">

							<span style="color: red;">* 회원정보를 수정 할 수 있습니다.</span>
							</p>
							<form method="post" action="UpdateService.do">
								<table class="table table-striped">
									<tr>
										<th>E-mail</th>
										<td>회원 E-mail</td>
									</tr>
									<tr>
										<th>변경할 비밀번호</th>
										<td><input type="password" value="" class="form-control"
											name="pw" /></td>
									</tr>
									<tr>
										<th>연락처</th>
										<td><input type="phone" class="form-control" name="tel" /></td>
									</tr>
									<tr>
										<th>현주소</th>
										<td><input type="text" class="form-control"
											name="location" /></td>
									</tr>
									<tr>
										<th>업체명</th>
										<td><input type="text" class="form-control"
											name="companyName" /></td>
									</tr>
								</table>
								<input type="submit" class="login pull-right" value="정보 변경하기">
							</form>
					</div>
				</div>
				</ul>
			</div>
			</div>

			</div>

		</section>
		<!-- End  F.A.Q Section -->

	</main>
	<!-- End #main -->


	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6 footer-info">
						<img src="assets/img/carlogo.png" alt="니카내카">
						<p>ㄲ ㅓ 억</p>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="fa fa-angle-right"></i> <a href="#">로그인</a></li>
							<li><i class="fa fa-angle-right"></i> <a href="#">회원가입</a></li>
						</ul>
					</div>



					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="fa fa-angle-right"></i> <a href="#">Home</a></li>
							<li><i class="fa fa-angle-right"></i> <a href="#">About
									us</a></li>
							<li><i class="fa fa-angle-right"></i> <a href="#">Services</a></li>
							<li><i class="fa fa-angle-right"></i> <a href="#">Terms
									of service</a></li>
							<li><i class="fa fa-angle-right"></i> <a href="#">Privacy
									policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-contact">
						<h4>Contact Us</h4>
						<p>
							A108 Adam Street <br> New York, NY 535022<br> United
							States <br> <strong>Phone:</strong> +1 5589 55488 55<br>
							<strong>Email:</strong> info@example.com<br>
						</p>

						<div class="social-links">
							<a href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a
								href="#" class="facebook"><i class="fa fa-facebook"></i></a> <a
								href="#" class="instagram"><i class="fa fa-instagram"></i></a> <a
								href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
							<a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
						</div>

					</div>

				</div>
			</div>
		</div>

		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong>TheEvent</strong>. All Rights Reserved
			</div>
			<div class="credits">
				<!--
        All the links in the footer should remain intact.
        You can delete the links only if you purchased the pro version.
        Licensing information: https://bootstrapmade.com/license/
        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=TheEvent
      -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</footer>
	<!-- End  Footer -->

	<a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<script src="assets/vendor/venobox/venobox.min.js"></script>
	<script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="assets/vendor/superfish/superfish.min.js"></script>
	<script src="assets/vendor/hoverIntent/hoverIntent.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>