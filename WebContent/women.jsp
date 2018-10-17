<%@page import="model.ChiTietSanPham"%>
<%@page import="dao.ChiTietSanPhamDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<!-- js -->
<script src="js/jquery-2.2.3.min.js"></script>
<!-- //js -->
<!-- Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet"
	media="all">
<!-- shop css -->
<link href="css/shop.css" type="text/css" rel="stylesheet" media="all">
<!-- Range-slider-css -->
<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
<!-- flexslider-css -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
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
<script type="text/javascript">
	function hello(id, nhom) {
		$.get("Card", {'nhom' : nhom}, function(data) {
			$('.inside-data' + id).html(data);
		});
	}
</script>
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
			<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="women.jsp">Women's
				Clothing</a></li>
		</ol>
	</nav>
	<!-- //breadcrumbs -->
	<!-- Shop -->
	<div class="innerf-pages section">
		<div class="fh-container mx-auto">
			<div class="row my-lg-5 mb-5">
				<!-- grid left -->
				<div class="side-bar col-lg-3">
					<!--preference -->
					<div class="left-side">
						<h3 class="shopf-sear-headits-sear-head">Categories</h3>
						<ul>
							<li><input type="checkbox" class="checked" name="cat1"
								id="cat1"> <label for="cat1">Fashion</label></li>
							<li><input type="checkbox" class="checked" name="cat2"
								id="cat2"> <label for="cat2">Popular</label></li>
							<li><input type="checkbox" class="checked" name="cat3"
								id="cat3"> <label for="cat3">Trending</label></li>
							<li><input type="checkbox" class="checked" name="cat4"
								id="cat4"> <label for="cat4">Sort by popularity</label>
							</li>

						</ul>
					</div>
					<!-- // preference -->
					<div class="search-hotel">
						<h3 class="shopf-sear-headits-sear-head">
							<span>Brand</span> in focus
						</h3>
						<form action="#" method="post">
							<input type="search" placeholder="search here" name="search"
								required=""> <input type="submit" value="Search">
						</form>
					</div>
					<!-- price range -->
					<div class="range">
						<h3 class="shopf-sear-headits-sear-head">
							<span>Price</span> range
						</h3>
						<ul class="dropdown-menu6">
							<li>

								<div id="slider-range"></div> <input type="text" id="amount"
								style="border: 0; color: #ffffff; font-weight: normal;" />
							</li>
						</ul>
					</div>
					<!-- //price range -->
					<!--preference -->
					<div class="left-side">
						<h3 class="shopf-sear-headits-sear-head">
							<span>latest</span> arrivals
						</h3>
						<ul>
							<li><input type="checkbox" class="checked" name="arr1"
								id="arr1"> <label for="arr1">last 30 days</label></li>
							<li><input type="checkbox" class="checked" name="arr2"
								id="arr2"> <label for="arr2">last 90 days</label></li>
							<li><input type="checkbox" class="checked" name="arr3"
								id="arr3"> <label for="arr3">last 150 days</label></li>

						</ul>
					</div>
					<!-- // preference -->
					<!-- discounts -->
					<div class="left-side">
						<h3 class="shopf-sear-headits-sear-head">Sizes</h3>
						<ul>
							<li><input type="checkbox" class="checked" name="size1"
								id="size1"> <label for="size1">XS</label></li>
							<li><input type="checkbox" class="checked" name="size2"
								id="size2"> <label for="size2">S</label></li>
							<li><input type="checkbox" class="checked" name="size3"
								id="size3"> <label for="size3">M</label></li>
							<li><input type="checkbox" class="checked" name="size4"
								id="size4"> <label for="size4">L</label></li>
							<li><input type="checkbox" class="checked" name="size5"
								id="size5"> <label for="size5">XL</label></li>
							<li><input type="checkbox" class="checked" name="size6"
								id="size6"> <label for="size6">XXL</label></li>
							<li><input type="checkbox" class="checked" name="size7"
								id="size7"> <label for="size7">XXXL</label></li>
						</ul>
					</div>
					<!-- //discounts -->
					<!-- Binding -->
					<div class="left-side">
						<h3 class="shopf-sear-headits-sear-head">Color</h3>
						<div class="d-flex">
							<ul>
								<li><input type="checkbox" class="checked" name="color1"
									id="color1"> <label for="color1">Black</label></li>
								<li><input type="checkbox" class="checked" name="color2"
									id="color2"> <label for="color2">Blue</label></li>
								<li><input type="checkbox" class="checked" name="color3"
									id="color3"> <label for="color3">Red</label></li>
								<li><input type="checkbox" class="checked" name="color4"
									id="color4"> <label for="color4">Yellow</label></li>
								<li><input type="checkbox" class="checked" name="color5"
									id="color5"> <label for="color5">White</label></li>
							</ul>
							<ul>
								<li><input type="checkbox" class="checked" name="color6"
									id="color6"> <label for="color6">Green</label></li>
								<li><input type="checkbox" class="checked" name="color7"
									id="color7"> <label for="color7">Multi</label></li>
								<li><input type="checkbox" class="checked" name="color8"
									id="color8"> <label for="color8">Purple</label></li>
								<li><input type="checkbox" class="checked" name="color9"
									id="color9"> <label for="color9">Gold</label></li>
								<li><input type="checkbox" class="checked" name="color10"
									id="color10"> <label for="color10">Orange</label></li>
							</ul>
						</div>
					</div>
					<!-- //Binding -->
					<!-- discounts -->
					<div class="left-side">
						<h3 class="shopf-sear-headits-sear-head">Discount</h3>
						<ul>
							<li><input type="checkbox" class="checked" name="dis1"
								id="dis1"> <label for="dis1">5% - 20%</label></li>
							<li><input type="checkbox" class="checked" name="dis2"
								id="dis2"> <label for="dis2">20% - 40%</label></li>
							<li><input type="checkbox" class="dis3" name="dis3"
								id="dis3"> <label for="dis3">40% - 60%</label></li>
							<li><input type="checkbox" class="checked" name="dis4"
								id="dis4"> <label for="dis4">60% or more</label></li>
						</ul>
					</div>
					<!-- //discounts -->
					<!-- reviews -->
					<div class="customer-rev left-side">
						<h3 class="shopf-sear-headits-sear-head">Customer Review</h3>
						<ul>
							<li><a href="#"> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star"
									aria-hidden="true"></i> <span>5.0</span>
							</a></li>
							<li><a href="#"> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star-o"
									aria-hidden="true"></i> <span>4.0</span>
							</a></li>
							<li><a href="#"> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star-half-o"
									aria-hidden="true"></i> <i class="fa fa-star-o"
									aria-hidden="true"></i> <span>3.5</span>
							</a></li>
							<li><a href="#"> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star-o"
									aria-hidden="true"></i> <i class="fa fa-star-o"
									aria-hidden="true"></i> <span>3.0</span>
							</a></li>
							<li><a href="#"> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star"
									aria-hidden="true"></i> <i class="fa fa-star-half-o"
									aria-hidden="true"></i> <i class="fa fa-star-o"
									aria-hidden="true"></i> <i class="fa fa-star-o"
									aria-hidden="true"></i> <span>2.5</span>
							</a></li>
						</ul>
					</div>
					<!-- //reviews -->
				</div>
				<!-- //grid left -->
				<!-- grid right -->
				<div class="col-lg-9 mt-lg-0 mt-5 right-product-grid">
					<!-- card group  -->
					<%
						ChiTietSanPhamDAO ctsp = new ChiTietSanPhamDAO();
						String maNhom = "";
						int i = 0;
						if(request.getParameter("nhom") == null){
							i = 1;
						}
						if(request.getParameter("nhom") != null){
							maNhom = request.getParameter("nhom");
						}
					%>
					<div class="card-group inside-data0">
						<%
							if(i == 0){
						%>
						<script type="text/javascript">
							hello(0, <%=maNhom%>);
						</script>
						<%
							}else{
								for(ChiTietSanPham sp : ChiTietSanPhamDAO.getAllSanPham(0)){
						%>
						<div class="col-lg-3 col-sm-6 p-0">
								<div class="card product-men p-3">
									<div class="men-thumb-item">
										<img src="<%=sp.getHinhAnh() %>" alt="img" class="card-img-top">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="Detail?id=<%=sp.getMaSanPham() %>" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
									</div>
									<!-- card body -->
									<div class="card-body  py-3 px-2">
										<h5 class="card-title text-capitalize"><%=sp.getTenSanPham() %></h5>
										<div class="card-text d-flex justify-content-between">
											<p class="text-dark font-weight-bold">$<%=sp.getGiaGiam() %></p>
											<p class="line-through">$<%=sp.getGia() %></p>
										</div>
									</div>
									<!-- card footer -->
									<div class="card-footer d-flex justify-content-end">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="id" value="<%=sp.getMaSanPham()%>">
											<input type="hidden" name="hub_item" value="<%=sp.getTenSanPham() %>">
											<input type="hidden" name="amount" value="<%=sp.getGiaGiam() %>">
											<button type="submit" class="hub-cart phub-cart btn">
												<i class="fa fa-cart-plus" aria-hidden="false"></i>
											</button>
											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>
									</div>
								</div>
							</div>
						<%
								}
							}
						%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// Shop -->
	<footer>
		<jsp:include page="footer/footer1.jsp"></jsp:include>
	</footer>
	<!-- //footer -->
	<!-- sign up Modal -->
	<jsp:include page="signmodal/signinsignup.jsp"></jsp:include>
	<!-- signin Modal -->
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
	<!-- price range (top products) -->
	<script src="js/jquery-ui.js"></script>
	<script>
		//<![CDATA[ 
		$(window).load(
				function() {
					$("#slider-range").slider(
							{
								range : true,
								min : 0,
								max : 9000,
								values : [ 50, 6000 ],
								slide : function(event, ui) {
									$("#amount").val(
											"$" + ui.values[0] + " - $"
													+ ui.values[1]);
								}
							});
					$("#amount").val(
							"$" + $("#slider-range").slider("values", 0)
									+ " - $"
									+ $("#slider-range").slider("values", 1));

				}); //]]>
	</script>
	<!-- //price range (top products) -->
	<script src="js/bootstrap.js"></script>
	<!-- start-smoth-scrolling -->
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
	<!-- start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
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
	<!-- //here ends scrolling icon -->
	<!-- smoothscroll -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->

</body>

</html>
