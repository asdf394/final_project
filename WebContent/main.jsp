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
<style type="text/css">
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed,
figure, figcaption, footer, header, hgroup,
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font: inherit;
  font-size: 100%;
  vertical-align: baseline;
}

html {
  line-height: 1;
}

ol, ul {
  list-style: none;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

caption, th, td {
  text-align: left;
  font-weight: normal;
  vertical-align: middle;
}

q, blockquote {
  quotes: none;
}
q:before, q:after, blockquote:before, blockquote:after {
  content: "";
  content: none;
}

a img {
  border: none;
}

article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
  display: block;
}

/* Colors */
/* ---------------------------------------- */
* {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  text-align: center;
  font-family: "Lato", "sans-serif";
  font-weight: 400;
}

a {
  text-decoration: none;
}

.info-text {
  text-align: left;
  width: 100%;
}

header,
form {
  padding: 4em 10%;
}

.form-group {
  margin-bottom: 20px;
}

h2.heading {
  font-size: 18px;
  text-transform: uppercase;
  font-weight: 300;
  text-align: left;
  color: #506982;
  border-bottom: 1px solid #506982;
  padding-bottom: 3px;
  margin-bottom: 20px;
}

.controls {
  text-align: left;
  position: relative;
}
.controls input[type="text"],
.controls input[type="email"],
.controls input[type="number"],
.controls input[type="date"],
.controls input[type="tel"],
.controls textarea,
.controls button,
.controls select {
  padding: 12px;
  font-size: 14px;
  border: 1px solid #c6c6c6;
  width: 100%;
  margin-bottom: 18px;
  color: #888;
  font-family: "Lato", "sans-serif";
  font-size: 16px;
  font-weight: 300;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
}
.controls input[type="text"]:focus, .controls input[type="text"]:hover,
.controls input[type="email"]:focus,
.controls input[type="email"]:hover,
.controls input[type="number"]:focus,
.controls input[type="number"]:hover,
.controls input[type="date"]:focus,
.controls input[type="date"]:hover,
.controls input[type="tel"]:focus,
.controls input[type="tel"]:hover,
.controls textarea:focus,
.controls textarea:hover,
.controls button:focus,
.controls button:hover,
.controls select:focus,
.controls select:hover {
  outline: none;
  border-color: #9fb1c1;
}
.controls input[type="text"]:focus + label, .controls input[type="text"]:hover + label,
.controls input[type="email"]:focus + label,
.controls input[type="email"]:hover + label,
.controls input[type="number"]:focus + label,
.controls input[type="number"]:hover + label,
.controls input[type="date"]:focus + label,
.controls input[type="date"]:hover + label,
.controls input[type="tel"]:focus + label,
.controls input[type="tel"]:hover + label,
.controls textarea:focus + label,
.controls textarea:hover + label,
.controls button:focus + label,
.controls button:hover + label,
.controls select:focus + label,
.controls select:hover + label {
  color: #bdcc00;
  cursor: text;
}
.controls .fa-sort {
  position: absolute;
  right: 10px;
  top: 17px;
  color: #999;
}
.controls select {
  -moz-appearance: none;
  -webkit-appearance: none;
  cursor: pointer;
}
.controls label {
  position: absolute;
  left: 8px;
  top: 12px;
  width: 60%;
  color: #999;
  font-size: 16px;
  display: inline-block;
  padding: 4px 10px;
  font-weight: 400;
  background-color: rgba(255, 255, 255, 0);
  -moz-transition: color 0.3s, top 0.3s, background-color 0.8s;
  -o-transition: color 0.3s, top 0.3s, background-color 0.8s;
  -webkit-transition: color 0.3s, top 0.3s, background-color 0.8s;
  transition: color 0.3s, top 0.3s, background-color 0.8s;
  background-color: white;
}
.controls label.active {
  top: -11px;
  color: #555;
  background-color: white;
  width: auto;
}
.controls textarea {
  resize: none;
  height: 200px;
}

button {
  cursor: pointer;
  background-color: #1b3d4d;
  border: none;
  color: #fff;
  padding: 12px 0;
  float: right;
}
button:hover {
  background-color: #224c60;
}

.clear:after {
  content: "";
  display: table;
  clear: both;
}

.grid {
  background: white;
}
.grid:after {
  /* Or @extend clearfix */
  content: "";
  display: table;
  clear: both;
}

[class*="col-"] {
  float: left;
  padding-right: 10px;
}
.grid [class*="col-"]:last-of-type {
  padding-right: 0;
}

.col-2-3 {
  width: 66.66%;
}

.col-1-3 {
  width: 33.33%;
}

.col-1-2 {
  width: 50%;
}

.col-1-4 {
  width: 25%;
}

@media (max-width: 760px) {
  .col-1-4-sm,
  .col-1-3,
  .col-2-3 {
    width: 100%;
  }

  [class*="col-"] {
    padding-right: 0px;
  }
}
.col-1-8 {
  width: 12.5%;
}
</style>
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header">
		<div class="container">

			<div id="logo" class="pull-left">
				<a href="main.html" class="scrollto"><img
					src="assets/img/carlogo.png" alt="" title=""></a>
			</div>

			<nav id="nav-menu-container">
				<ul class="nav-menu">
					<li><a href="#schedule">차량대여</a></li>
					<li><a href="#">문의하기</a></li>
					<li><a href="#">내정보</a></li>
					<li><a href="#">로그아웃</a></li>
				</ul>
			</nav>
			<!-- #nav-menu-container -->
		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Intro Section ======= -->
	<section id="intro">
		<div class="intro-container" data-aos="zoom-in" data-aos-delay="100">
			<h1 class="mb-4 pb-0">
				영업중 부족한 차량 <br>구입 해야되나 고민말고<span>빌려쓰세요</span>
			</h1>
			<p class="mb-4 pb-0"></p>
			<a href="#schedule" class="about-btn scrollto">차량 대여 신청</a>
		</div>
	</section>
	<!-- End Intro Section -->

	<main id="main">
		<!-- ======= Schedule Section ======= -->
		<section id="schedule" class="section-with-bg">
			<div class="container" data-aos="fade-up">
				<div class="section-header">
					<h2>차량 대여 신청</h2>
					<p>쉽고 빠르게 신청하세요</p>
				</div>

				<ul class="nav nav-tabs" role="tablist" data-aos="fade-up"
					data-aos-delay="100">
					<li class="nav-item" value="short"><a class="nav-link" href="#day-1"
						role="tab" data-toggle="tab">단기렌트 신청</a></li>
					<li class="nav-item" value="long"><a class="nav-link" href="#day-1"
						role="tab" data-toggle="tab">장기렌트 신청</a></li>

					<br>
					<br>
					<br>

					<div class="tab-content row justify-content-center"
						data-aos="fade-up" data-aos-delay="200">

						<!-- Schdule Day 1 -->
						<div role="tabpanel" class="col-lg-9 tab-pane fade show active"
							id="day-1">

							<form action="">
								<!--  General -->
								<div class="form-group">
									<h2 class="heading">렌트 상세정보</h2>
									<div class="controls">
										<input type="text" id="name" class="floatLabel" name="name">
										<label for="name">상호명</label>
									</div>
									<div class="controls">
										<input type="text" id="email" class="floatLabel" name="email">
										<label for="email">이메일</label>
									</div>
									<div class="controls">
										<input type="tel" id="phone" class="floatLabel" name="phone">
										<label for="phone">전화번호</label>
									</div>
									<div class="controls">
										<input type="text" id="country" class="floatLabel" name="country"> 
										<label for="country">상세주소</label>
									</div>
								<!--  Details -->
								<div class="form-group">
									<h2 class="heading">Details</h2>
									<div class="grid">
										<div class="col-1-4 col-1-4-sm">
											<div class="controls">
												<input type="date" id="arrive" class="floatLabel"
													name="arrive" value="<?php echo date('Y-m-d'); ?>">
												<label for="arrive" class="label-date"><i
													class="fa fa-calendar"></i>&nbsp;&nbsp;대여</label>
											</div>
										</div>
										<div class="col-1-4 col-1-4-sm">
											<div class="controls">
												<input type="date" id="depart" class="floatLabel"
													name="depart" value="<?php echo date('Y-m-d'); ?>" /> <label
													for="depart" class="label-date"><i
													class="fa fa-calendar"></i>&nbsp;&nbsp;반납</label>
											</div>
										</div>
									</div>
									<div class="grid">
										<p class="info-text">하고싶은 말</p>
										<br>
										<div class="controls">
											<textarea name="comments" class="floatLabel" id="comments"></textarea>
											<label for="comments">Comments</label>
										</div>
										<button type="submit" value="Submit" class="col-1-4">Submit</button>
									</div>
								</div>
								<!-- /.form-group -->
							</form>

						</div>
						<!-- End Schdule Day 1 -->
		</section>
		<!-- End Schedule Section -->

		<!-- ======= Speakers Section ======= -->
		<section id="speakers">
			<div class="container" data-aos="fade-up">
				<div class="section-header">
					<h2>차량 대여 신청</h2>
					<p>쉽고 빠르게 차량 대여 하기</p>
				</div>

				<div class="row">
					<div class="col-lg-4 col-md-6">
						<div class="speaker" data-aos="fade-up" data-aos-delay="100">
							<img src="assets/img/speakers/1.jpg" alt="Speaker 1"
								class="img-fluid">
							<div class="details">
								<h3>
									<a href="speaker-details.html">Brenden Legros</a>
								</h3>
								<p>Quas alias incidunt</p>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="speaker" data-aos="fade-up" data-aos-delay="200">
							<img src="assets/img/speakers/2.jpg" alt="Speaker 2"
								class="img-fluid">
							<div class="details">
								<h3>
									<a href="speaker-details.html">Hubert Hirthe</a>
								</h3>
								<p>Consequuntur odio aut</p>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="speaker" data-aos="fade-up" data-aos-delay="300">
							<img src="assets/img/speakers/3.jpg" alt="Speaker 3"
								class="img-fluid">
							<div class="details">
								<h3>
									<a href="speaker-details.html">Cole Emmerich</a>
								</h3>
								<p>Fugiat laborum et</p>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="speaker" data-aos="fade-up" data-aos-delay="100">
							<img src="assets/img/speakers/4.jpg" alt="Speaker 4"
								class="img-fluid">
							<div class="details">
								<h3>
									<a href="speaker-details.html">Jack Christiansen</a>
								</h3>
								<p>Debitis iure vero</p>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="speaker" data-aos="fade-up" data-aos-delay="200">
							<img src="assets/img/speakers/5.jpg" alt="Speaker 5"
								class="img-fluid">
							<div class="details">
								<h3>
									<a href="speaker-details.html">Alejandrin Littel</a>
								</h3>
								<p>Qui molestiae natus</p>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="speaker" data-aos="fade-up" data-aos-delay="300">
							<img src="assets/img/speakers/6.jpg" alt="Speaker 6"
								class="img-fluid">
							<div class="details">
								<h3>
									<a href="speaker-details.html">Willow Trantow</a>
								</h3>
								<p>Non autem dicta</p>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>
		<!-- End Speakers Section -->
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6 footer-info">
						<img src="assets/img/carlogo.png" alt="니카내카">
						<p>In alias aperiam. Placeat tempore facere. Officiis
							voluptate ipsam vel eveniet est dolor et totam porro.
							Perspiciatis ad omnis fugit molestiae recusandae possimus. Aut
							consectetur id quis. In inventore consequatur ad voluptate
							cupiditate debitis accusamus repellat cumque.</p>
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
	<script type="text/javascript">
	(function($){
		function floatLabel(inputType){
			$(inputType).each(function(){
				var $this = $(this);
				// on focus add cladd active to label
				$this.focus(function(){
					$this.next().addClass("active");
				});
				//on blur check field and remove class if needed
				$this.blur(function(){
					if($this.val() === '' || $this.val() === 'blank'){
						$this.next().removeClass();
					}
				});
			});
		}
		// just add a class of "floatLabel to the input field!"
		floatLabel(".floatLabel");
	})(jQuery);
	</script>
</body>
</html>