<%@page import="model.ChiTietSanPham"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<title>new fashion</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8" />
<meta name="keywords" content="web ban hang online" />
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
<link href="css/flexslider.css" type="text/css" rel="stylesheet"
	media="all">
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
	</header>
	<!-- //header -->
	<!-- inner banner -->
	<div class="ibanner_w3 pt-sm-5 pt-3">
		<h4
			class="head_agileinfo text-center text-capitalize text-center pt-5">
			<span>f</span>ashion <span>h</span>ub
		</h4>
	</div>
	<!-- //inner banner -->
	<!-- breadcrumbs -->
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.html">Home</a></li>
			<li class="breadcrumb-item"><a href="men.html">Men's
					Clothing</a></li>
			<li class="breadcrumb-item active" aria-current="page">Single
				Product</li>
		</ol>
	</nav>
	<!-- //breadcrumbs -->
	<!-- Single -->
	<div class="innerf-pages section py-5">
		<div class="container">
			<div class="row my-sm-5">
				<div class="col-lg-4 single-right-left">
					<div class="grid images_3_of_2">
						<div class="flexslider1">
							<%
								ChiTietSanPham sanPham = (ChiTietSanPham) request.getAttribute("sanPham");
							%>
							<ul class="slides">
								<li data-thumb=<%=sanPham.getHinhAnh()%>>
									<div class="thumb-image">
										<img src=<%=sanPham.getHinhAnh()%> data-imagezoom="true"
											alt=" " class="img-fluid">
									</div>
								</li>
								<li data-thumb=<%=sanPham.getHinhAnh()%>>
									<div class="thumb-image">
										<img src=<%=sanPham.getHinhAnh()%> data-imagezoom="true"
											alt=" " class="img-fluid">
									</div>
								</li>
								<li data-thumb=<%=sanPham.getHinhAnh()%>>
									<div class="thumb-image">
										<img src=<%=sanPham.getHinhAnh()%> data-imagezoom="true"
											alt=" " class="img-fluid">
									</div>
								</li>
							</ul>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div
					class="col-lg-8 mt-lg-0 mt-5 single-right-left simpleCart_shelfItem">
					<h3><%=sanPham.getTenSanPham()%></h3>
					</h3>
					<div class="caption">

						<ul class="rating-single">
							<li><a href="#"> <span class="fa fa-star yellow-star"
									aria-hidden="true"></span>
							</a></li>
							<li><a href="#"> <span class="fa fa-star yellow-star"
									aria-hidden="true"></span>
							</a></li>
							<li><a href="#"> <span class="fa fa-star yellow-star"
									aria-hidden="true"></span>
							</a></li>
							<li><a href="#"> <span class="fa fa-star yellow-star"
									aria-hidden="true"></span>
							</a></li>
							<li><a href="#"> <span class="fa fa-star yellow-star"
									aria-hidden="true"></span>
							</a></li>
						</ul>
						<div class="clearfix"></div>
						<div class="percent"
							style="background-color: orange; width: 50px; height: 30px;color: white; font-weight: 1px;padding: 5px;">-30%
						</div>
						<h6><%=sanPham.getGiaGiam()%></h6>
					</div>
					<div class="desc_single">
						<h5>Mô tả</h5>
						<p><%=sanPham.getChiTiet()%></p>
					</div>
					<div class="d-sm-flex justify-content-between">
						<div class="occasional">
							<h5 class="sp_title mb-3">Thông tin sản phẩm</h5>
							<ul class="single_specific">
								<li><span>Thương hiệu: </span> Poly-Viscose</li>
								<li><span>Màu sắc :</span> Solid</li>
								<li><span>Kích thước :</span>
									<form>
										<label class="radio-inline"> <input type="radio"
											name="optradio" checked>S
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio">M
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio">L
										</label> </label> <label class="radio-inline"> <input type="radio"
											name="optradio">XL
										</label> </label> <label class="radio-inline"> <input type="radio"
											name="optradio">XXL
										</label> </label> <label class="radio-inline"> <input type="radio"
											name="optradio">FREESIZE
										</label>

									</form></li>
								<li><span>Chất liệu :</span> Slim</li>
								<li><span>Ngành hàng :</span> Slim</li>
								<li><span>Tình trạng sản phẩm :</span> Slim</li>
							</ul>

						</div>
						<div class="color-quality mt-sm-0 mt-4">
							<h5 class="sp_title mb-3">services</h5>
							<ul class="single_serv">
								<li><a href="#">30 Day Return Policy</a></li>
								<li class="mt-2"><a href="#">Cash on Delivery available</a>
								</li>
							</ul>
						</div>
					</div>
				
					<div class="occasion-cart">
						<div class="chr single-item single_page_b">
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="hub_item"
									value="<%=sanPham.getTenSanPham()%>"> <input
									type="hidden" name="amount" value=<%=sanPham.getGiaGiam()%>>
								<button type="submit" class="hub-cart phub-cart btn">
									<i class="fa fa-cart-plus" aria-hidden="true"></i>
								</button>
								<a href="#" data-toggle="modal" data-target="#myModal1"></a>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /new_arrivals -->
	<div class="section singlep_btm pb-5">
		<div class="container">
			<div class="new_arrivals">
				<h4 class="rad-txt text-capitalize">SẢN PHẨM THƯỜNG ĐƯỢC XEM
					CÙNG in</h4>
				<!-- card group 2 -->
				<div class="card-group my-5">
					<!-- card -->
					<div class="col-lg-3 col-sm-6 p-0">
						<div class="card product-men p-3">
							<div class="men-thumb-item">
								<img src="images/pm11.jpg" alt="img" class="card-img-top">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="mens.html" class="link-product-add-cart">Quick
											View</a>
									</div>
								</div>
							</div>
							<!-- card body -->
							<div class="card-body  py-3 px-2">
								<h5 class="card-title text-capitalize">Black Casual Men's
									Blazer</h5>
								<div class="card-text d-flex justify-content-between">
									<p class="text-dark font-weight-bold">$20.00</p>
									<p class="line-through">$25.00</p>
								</div>
							</div>
							<!-- card footer -->
							<div class="card-footer d-flex justify-content-end">
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"> <input
										type="hidden" name="add" value="1"> <input
										type="hidden" name="hub_item"
										value="Black Casual Men's Blazer"> <input
										type="hidden" name="amount" value="20.00">
									<button type="submit" class="hub-cart phub-cart btn">
										<i class="fa fa-cart-plus" aria-hidden="true"></i>
									</button>
									<a href="#" data-toggle="modal" data-target="#myModal1"></a>
								</form>
							</div>
						</div>
					</div>
					<!-- //card -->
					<!-- card -->
					<div class="col-lg-3 col-sm-6 p-0">
						<div class="card product-men p-3">
							<div class="men-thumb-item">
								<img src="images/pm12.jpg" alt="img" class="card-img-top">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="mens.html" class="link-product-add-cart">Quick
											View</a>
									</div>
								</div>
							</div>
							<!-- card body -->
							<div class="card-body  py-3 px-2">
								<h5 class="card-title text-capitalize">Blue Wedding Formal
									Blazer</h5>
								<div class="card-text d-flex justify-content-between">
									<p class="text-dark font-weight-bold">$35.00</p>
									<p class="line-through">$44.99</p>
								</div>
							</div>
							<!-- card footer -->
							<div class="card-footer d-flex justify-content-end">
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"> <input
										type="hidden" name="add" value="1"> <input
										type="hidden" name="hub_item"
										value="Blue Wedding Formal Blazer"> <input
										type="hidden" name="amount" value="35.00">
									<button type="submit" class="hub-cart phub-cart btn">
										<i class="fa fa-cart-plus" aria-hidden="true"></i>
									</button>
									<a href="#" data-toggle="modal" data-target="#myModal1"></a>
								</form>
							</div>
						</div>
					</div>
					<!-- //card -->
					<!-- card -->
					<div class="col-lg-3 col-sm-6 p-0">
						<div class="card product-men p-3 out_w3">
							<div class="men-thumb-item position-relative">
								<img src="images/pm7.jpg" alt="img" class="card-img-top">
								<span class="px-2 position-absolute">out of stock</span>
							</div>
							<!-- card body -->
							<div class="card-body  py-3 px-2">
								<h5 class="card-title text-capitalize">grey Wedding Formal
									Blazer</h5>
								<div class="card-text d-flex justify-content-between">
									<p class="text-dark font-weight-bold">$25.00</p>
									<p class="line-through">$28.00</p>
								</div>
							</div>
							<!-- card footer -->
							<div class="card-footer d-flex justify-content-end">
								<button type="submit" class="hub-cart phub-cart btn">
									<i class="fa fa-cart-plus" aria-hidden="true"></i>
								</button>
							</div>
						</div>
					</div>
					<!-- //card -->
					<!-- card -->
					<div class="col-lg-3 col-sm-6 p-0">
						<div class="card product-men p-3">
							<div class="men-thumb-item">
								<img src="images/pm13.jpg" alt="img" class="card-img-top">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="mens.html" class="link-product-add-cart">Quick
											View</a>
									</div>
								</div>
							</div>
							<!-- card body -->
							<div class="card-body  py-3 px-2">
								<h5 class="card-title text-capitalize">Blue Casual Men's
									Blazer</h5>
								<div class="card-text d-flex justify-content-between">
									<p class="text-dark font-weight-bold">$29.99</p>
									<p class="line-through">$34.99</p>
								</div>
							</div>
							<!-- card footer -->
							<div class="card-footer d-flex justify-content-end">
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"> <input
										type="hidden" name="add" value="1"> <input
										type="hidden" name="hub_item" value="Casual Men's Blazer">
									<input type="hidden" name="amount" value="29.00">
									<button type="submit" class="hub-cart phub-cart btn">
										<i class="fa fa-cart-plus" aria-hidden="true"></i>
									</button>
									<a href="#" data-toggle="modal" data-target="#myModal1"></a>
								</form>
							</div>
						</div>
					</div>
					<!-- //card -->
				</div>
				<!-- //card group -->
				<!--//new_arrivals-->
			</div>
		</div>
	</div>
	<!--// Single -->
	<footer>
		<jsp:include page="footer/footer1.jsp"></jsp:include>
	</footer>
	<!-- //footer -->
	<!-- sign up Modal -->
	<jsp:include page="signmodal/signinsignup.jsp"></jsp:include>
	<!-- signin Modal -->
	<!-- js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
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
						"Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- script for password match -->

	<!-- FlexSlider -->
	<script src="js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function() {
			$('.flexslider1').flexslider({
				animation : "slide",
				controlNav : "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
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
	<!-- zoom -->
	<script src="js/imagezoom.js"></script>
	<!-- zoom-->

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