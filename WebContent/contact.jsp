<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<title>new fashion</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8" />
<meta name="keywords"
	content="web ban hang online" />
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
<!-- Owl Stylesheets -->
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
			<li class="breadcrumb-item active" aria-current="page">Contact
				Us</li>
		</ol>
	</nav>
	<!-- //breadcrumbs -->
	<!-- contact -->
	<section class="wthree-row pt-3 pb-sm-5 w3-contact">
		<div class="container py-sm-5 pb-5">
			<h5 class="head_agileinfo text-center text-capitalize pb-5">
				<span>C</span>ontact us
			</h5>
			<div class="row contact-form pt-lg-5">
				<div class="col-lg-6 wthree-form-left">
					<!-- contact form grid -->
					<div class="contact-top1">
						<h5 class="text-dark mb-4 text-capitalize">send us a note</h5>
						<form action="#" method="get" class="f-color">
							<div class="form-group">
								<label for="contactusername">Name</label> <input type="text"
									class="form-control" id="contactusername" required>
							</div>
							<div class="form-group">
								<label for="contactemail">Email</label> <input type="email"
									class="form-control" id="contactemail" required>
							</div>
							<div class="form-group">
								<label for="contactcomment">Your Message</label>
								<textarea class="form-control" rows="5" id="contactcomment"
									required></textarea>
							</div>
							<button type="submit" class="btn btn-info btn-block">Submit</button>
						</form>
					</div>
					<!--  //contact form grid ends here -->
				</div>
				<!-- contact details -->
				<div class="col-lg-6 contact-bottom pl-5 mt-lg-0 mt-5">
					<!-- contact details grid1-->
					<div class="address">
						<h5 class="pb-3 text-capitalize">Address</h5>
						<address>
							<p class="c-txt">90 Street, City, State 34789.</p>
							<p class="c-txt">76 Street, City, State 34789.</p>
						</address>
					</div>
					<!-- contact details grid2-->
					<div class="address my-5">
						<h5 class="pb-3 text-capitalize">phone</h5>
						<p>+10 234 5678</p>
						<p>+11 222 333</p>
						<p>+12 222 333</p>
					</div>
					<!-- contact details grid3 -->
					<div class="address mt-md-0 mt-3">
						<h5 class="pb-3 text-capitalize">Email</h5>
						<p>
							<a href="mailto:info@example.com">mail@communal.com</a>
						</p>
						<p>
							<a href="mailto:info@example.com">mail@communalinfo.com</a>
						</p>
					</div>
					<!-- //contact details row ends here -->
				</div>
			</div>
			<!-- //contact details container -->
		</div>
		<!-- contact map grid -->
		<div class="map contact-right pb-5">
			<div class="pt-lg-5 bg-pricemain text-center">
				<h3 class="stat-title text-capitalize pb-5">get directions</h3>
				<span class="w3-line"></span>
			</div>
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3023.9503398796587!2d-73.9940307!3d40.719109700000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a27e2f24131%3A0x64ffc98d24069f02!2sCANADA!5e0!3m2!1sen!2sin!4v1441710758555"
				allowfullscreen></iframe>
		</div>
		<!--//contact map grid ends here-->
	</section>
	<!-- contact -->
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