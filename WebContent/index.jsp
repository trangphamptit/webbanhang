<%@page import="model.ChiTietSanPham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ChiTietSanPhamDAO"%>
<%@page import="dao.MenuDao"%>
<%@page import="model.Menu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="zxx">
<head>
<title>new fashion</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8" />
<meta name="keywords" content="web ban hang online" />
<script src="js/jquery-2.2.3.min.js"></script>
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet"
	media="all">
<!-- shop css -->
<link href="css/shop.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<!-- Owl-Carousel-CSS -->
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- font-awesome icons -->
<link href="css/fontawesome-all.min.css" rel="stylesheet">
<!-- //Custom Theme files -->
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Elsie+Swash+Caps:400,900"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i"
	rel="stylesheet">
<!-- //online-fonts -->
</head>

<body>
	<!-- header -->
	<header>
		<div class="container">
			<!-- top nav -->
			<jsp:include page="header/header1.jsp"></jsp:include>
			<!-- //top nav -->
			<!-- bottom nav -->
			<jsp:include page="header/headerbottom1.jsp"></jsp:include>
			<!-- //bottom nav -->
		</div>
		<!-- //header container -->
		<script type="text/javascript">
		function hello(id, nhom) {
			$.get("Card", {'nhom': nhom}, function(data){
				$('.inside-data' + id).html(data);
			});
		}
			
		</script>
	</header>
	<!-- //header -->
	<!-- banner -->
	<div class="banner-text">
		<div class="callbacks_container">
			<ul class="rslides" id="slider3">
				<li class="banner">
					<div class="container">
						<h3 class="agile_btxt">
							<span>n</span>ew <span>f</span>ashion
						</h3>
						<h4 class="w3_bbot">new day, new clothing</h4>
						<div class="slider-info mt-sm-5">
							<h4 class="bn_right">
								<span>w</span>omen's <span>f</span>ashion
							</h4>
							<div class="bnr_clip position-relative">
								<h4>
									get up to <span class="px-2">45% </span>
								</h4>
								<div
									class="d-inline-flex flex-column banner-pos position-absolute text-center">
									<div class="bg-flex-item">
										<span>O</span>
									</div>
									<div class="bg-flex-item">
										<span>F</span>
									</div>
									<div class="bg-flex-item">
										<span>F </span>
									</div>
								</div>
								<p class="text-uppercase py-2">on special sale</p>
								<a class="btn btn-primary mt-3 text-capitalize" href="shop.jsp"
									role="button">shop now</a>
							</div>
						</div>
					</div>
				</li>
				<li class="banner banner2">
					<div class="container">
						<h3 class="agile_btxt">
							<span>n</span>ew <span>f</span>ashion
						</h3>
						<h4 class="w3_bbot">new day, new clothing</h4>
						<div class="slider-info mt-sm-5">
							<h4 class="bn_right">
								<span>m</span>en's <span>f</span>ashion
							</h4>
							<div class="bnr_clip position-relative">
								<h4>
									get up to <span class="px-2">35% </span>
								</h4>
								<div
									class="d-inline-flex flex-column banner-pos position-absolute text-center">
									<div class="bg-flex-item">
										<span>O</span>
									</div>
									<div class="bg-flex-item">
										<span>F</span>
									</div>
									<div class="bg-flex-item">
										<span>F </span>
									</div>
								</div>
								<p class="text-uppercase py-2">on special sale</p>
								<a class="btn btn-primary mt-3 text-capitalize" href="shop.jsp"
									role="button">shop now</a>
							</div>
						</div>
					</div>
				</li>

			</ul>
		</div>
	</div>
	<!-- //banner -->
	<!--services-->
	<div class="agileits-services" id="services">
		<div class="no-gutters agileits-services-row row">
			<div class="col-lg-3 col-sm-6 agileits-services-grids p-sm-5 p-3">
				<span class="fas fa-sync-alt p-4"></span>
				<h4 class="mt-2 mb-3">30 ngày đổi trả dễ dàng</h4>
			</div>
			<div class="col-lg-3 col-sm-6 agileits-services-grids p-sm-5 p-3">
				<span class="fas fa-gift p-4"></span>
				<h4 class="mt-2 mb-3">Quà tặng hấp dẫn</h4>
			</div>

			<div class="col-lg-3 col-sm-6 agileits-services-grids p-sm-5 p-3">
				<span class="fas fa-lock p-4"></span>
				<h4 class="mt-2 mb-3">Thanh toán an toàn</h4>
			</div>
			<div class="col-lg-3 col-sm-6 agileits-services-grids p-sm-5 p-3">
				<span class="fas fa-shipping-fast p-4"></span>
				<h4 class="mt-2 mb-3">Miễn phí giao hàng tận nơi</h4>
			</div>
		</div>
	</div>
	<!-- //services-->
	<!-- about -->
	<div class="row no-gutters pb-5">
		<div class="col-lg-6 col-sm-6">
			<div class="hovereffect">
				<img class="img-fluid" src="images/a1.jpg" alt="">
				<div class="overlay">
					<h5>Áo Quần Nam</h5>
					<a class="info" href="women.jsp">Shop Now</a>
				</div>
			</div>
		</div>
		<div class="col-lg-6 col-sm-6">
			<div class="hovereffect">
				<img class="img-fluid" src="images/a2.jpg" alt="">
				<div class="overlay">
					<h5>Áo Quần Nữ</h5>
					<a class="info" href="men.jsp">Shop Now</a>
				</div>
			</div>
		</div>

	</div>
	<!-- //about -->
	<!-- product tabs -->
	<section class="tabs_pro py-md-5 pt-sm-3 pb-5">
		<h5 class="head_agileinfo text-center text-capitalize pb-5">
			<span>s</span>mart clothing</h5>
		<div class="tabs tabs-style-line pt-md-5">
			<nav class="container">
				<ul id="clothing-nav" class="nav nav-tabs tabs-style-line"
					role="tablist">
					<li class="nav-item"><a class="nav-link active" href="#women"
						id="women-tab" role="tab" data-toggle="tab" aria-controls="women"
						aria-expanded="true">Áo Quần Nữ</a></li>
					<li class="nav-item"><a class="nav-link" href="#men"
						role="tab" id="men-tab" data-toggle="tab" aria-controls="men">Áo Quần Nam </a></li>
				</ul>
			</nav>
			<!-- 
			
			 -->
			<!-- Content Panel -->
			<div id="clothing-nav-content" class="tab-content py-sm-5">
				<div role="tabpanel" class="tab-pane fade show active" id="women"
					aria-labelledby="women-tab">
					<div id="owl-demo" class="owl-carousel text-center inside-data0">
						<script type="text/javascript">hello(0, 8);</script>

						
					</div>
				</div>

				<div role="tabpanel" class="tab-pane fade" id="men"
					aria-labelledby="men-tab">
					<div id="owl-demo1" class="owl-carousel text-center inside-data1">
						<script type="text/javascript">hello(1,5);</script>
						<div class="item">

							<div class="product-men p-3 text-center">
								<img src="images/p2.png" class="img-responsive" alt=""> <a
									href="men.jsp" class="btn btn-lg bg-info text-white">view
									more</a>
							</div>
							<!-- //card -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //product tabs -->

	<!-- footer -->
	<footer>
		<jsp:include page="footer/footer1.jsp"></jsp:include>
	</footer>
	<!-- //footer -->
	<!-- sign up Modal -->
	<jsp:include page="signmodal/signinsignup.jsp"></jsp:include>
	<!-- signin Modal -->
	<!-- js -->
	
	<!-- //js -->
	<!-- script for show signin and signup modal -->
	<script>
		$(document).ready(function() {
			$("#myModal_btn").modal();
		});
	</script>
	<!-- //script for show signin and signup modal -->
	<!-- smooth dropdown -->
	<script>
		$(document).ready(
				function() {
					$('ul li.dropdown').hover(
							function() {
								$(this).find('.dropdown-menu').stop(true, true)
										.delay(200).fadeIn(200);
							},
							function() {
								$(this).find('.dropdown-menu').stop(true, true)
										.delay(200).fadeOut(200);
							});
				});
	</script>
	<!-- //smooth dropdown -->
	<!-- script for password match -->
	<script>
		window.onload = function() {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity(
						"Các passwords đã nhập không trùng nhau!");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- script for password match -->
	<!-- Banner Responsiveslides -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function() {
			// Slideshow 4
			$("#slider3").responsiveSlides({
				auto : false,
				pager : true,
				nav : false,
				speed : 500,
				namespace : "callbacks",
				before : function() {
					$('.events').append("<li>before event fired.</li>");
				},
				after : function() {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!-- // Banner Responsiveslides -->
	<!-- Product slider Owl-Carousel-JavaScript -->
	<script src="js/owl.carousel.js"></script>
	<script>
		var owl = $('.owl-carousel');
		owl.owlCarousel({
			items : 4,
			loop : false,
			margin : 10,
			autoplay : false,
			autoplayTimeout : 5000,
			autoplayHoverPause : false,
			responsive : {
				320 : {
					items : 1,
				},
				568 : {
					items : 2,
				},
				991 : {
					items : 3,
				},
				1050 : {
					items : 4
				}
			}
		});
	</script>
	<!-- //Product slider Owl-Carousel-JavaScript -->
	<!-- cart-js -->
	<script src="js/minicart.js">
		
	</script>
	<script>
		hub.render();

		hub.cart.on('new_checkout', function(evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {
				}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- start-smooth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- smooth-scrolling-of-move-up -->
	<script>
		$(document).ready(function() {
			/*
			var defaults = {
			    containerID: 'toTop', // fading element id
			    containerHoverID: 'toTopHover', // fading element hover id
			    scrollSpeed: 1200,
			    easingType: 'linear' 
			};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<script src="js/SmoothScroll.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>

</html>