<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<div class="modal fade" id="myModal_btn" tabindex="-1" role="dialog"
		aria-labelledby="myModal_btn" aria-hidden="true">
		<div class="agilemodal-dialog modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Register Now</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">�</span>
					</button>
				</div>
				<div class="modal-body pt-3 pb-5 px-sm-5">
					<div class="row">
						<div class="col-md-6 align-self-center">
							<img src="images/p3.png" class="img-fluid" alt="login_image" />
						</div>
						<div class="col-md-6">
							<form action="#" method="post">
								<div class="form-group">
									<label for="recipient-name1" class="col-form-label">Your
										Name</label> <input type="text" class="form-control" placeholder=" "
										name="Name" id="recipient-name1" required="">
								</div>
								<div class="form-group">
									<label for="recipient-email" class="col-form-label">Email</label>
									<input type="email" class="form-control" placeholder=" "
										name="Email" id="recipient-email" required="">
								</div>
								<div class="form-group">
									<label for="password1" class="col-form-label">Password</label>
									<input type="password" class="form-control" placeholder=" "
										name="Password" id="password1" required="">
								</div>
								<div class="form-group">
									<label for="password2" class="col-form-label">Confirm
										Password</label> <input type="password" class="form-control"
										placeholder=" " name="Confirm Password" id="password2"
										required="">
								</div>
								<div class="sub-w3l">
									<div class="sub-agile">
										<input type="checkbox" id="brand2" value=""> <label
											for="brand2" class="mb-3"> <span></span>I Accept to
											the Terms & Conditions
										</label>
									</div>
								</div>
								<div class="right-w3l">
									<input type="submit" class="form-control" value="Register">
								</div>
							</form>
							<p class="text-center mt-3">
								Already a member? <a href="#" data-toggle="modal"
									data-target="#exampleModal1" class="text-dark login_btn">
									Login Now</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //signup modal -->
	<!-- signin Modal -->
	<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog"
		aria-labelledby="exampleModal1" aria-hidden="true">
		<div class="agilemodal-dialog modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Login</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">�</span>
					</button>
				</div>
				<div class="modal-body  pt-3 pb-5 px-sm-5">
					<div class="row">
						<div class="col-md-6 align-self-center">
							<img src="images/p3.png" class="img-fluid" alt="login_image" />
						</div>
						<div class="col-md-6">
							<form action="#" method="post">
								<div class="form-group">
									<label for="recipient-name" class="col-form-label">Your
										Name</label> <input type="text" class="form-control" placeholder=" "
										name="Name" id="recipient-name" required="">
								</div>
								<div class="form-group">
									<label class="col-form-label">Password</label> <input
										type="password" class="form-control" placeholder=" "
										name="Password" required="">
								</div>
								<div class="right-w3l">
									<input type="submit" class="form-control" value="Login">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>