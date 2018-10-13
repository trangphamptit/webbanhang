<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
      $(document).ready(function () {
           var x_timer;
           $("#username").keyup(function (e) {
                clearTimeout(x_timer);
                var user_name = $(this).val();
                x_timer = setTimeout(function () {
                    check_username_ajax(user_name);
                }, 1000);
                });
 
           function check_username_ajax(username) {
                $("#user-result").html('<img src="img/ajax-loader.gif" />');
                $.post('CheckEmailServlet', {'username': username}, function (data) {
                    $("#user-result").html(data);
                 });
           }
       });
</script>
</head>
<body>
	<div class="modal fade" id="myModal_btn" tabindex="-1" role="dialog"
		aria-labelledby="myModal_btn" aria-hidden="true">
		<div class="agilemodal-dialog modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Đăng kí</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
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
									<label for="recipient-name1" class="col-form-label">Họ tên*
							</label> <input type="text" class="form-control" placeholder=" "
										name="Name" id="recipient-name1" required="">
								</div>
								<div class="form-group">
									<label for="recipient-email" class="col-form-label">Email*</label>
									<input type="email" class="form-control" placeholder=" "
										name="Email" id="recipient-email" required="">
								</div>
								<div class="form-group">
									<label for="password1" class="col-form-label">Mật khẩu*</label>
									<input type="password" class="form-control" placeholder=" "
										name="Password" id="password1" required="">
								</div>
								<div class="form-group">
									<label for="password2" class="col-form-label">Xác nhận mật khẩu*</label> 
									<input type="password" class="form-control"
										placeholder=" " name="Confirm Password" id="password2"
										required="">
								</div>
								<div class="sub-w3l">
									<div class="sub-agile">
										<input type="checkbox" id="brand2" value=""> <label
											for="brand2" class="mb-3"> <span></span>Đăng ký nhận bản tin
										</label>
									</div>
								</div>
								<div class="right-w3l">
									<input type="submit" class="form-control" value="Đăng ký">
								</div>
							</form>
							<p class="text-center mt-3">
								Đã có tài khoản? <a href="#" data-toggle="modal"
									data-target="#exampleModal1" class="text-dark login_btn">
								Đăng nhập</a>
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
					<h5 class="modal-title" id="exampleModalLabel">Đăng nhập</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
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
									<label for="recipient-name" class="col-form-label">Họ tên*
										</label> <input type="text" class="form-control" placeholder=" "
										name="Name" id="recipient-name" required="">
								</div>
								<div class="form-group">
									<label class="col-form-label">Mật khẩu</label> <input
										type="password" class="form-control" placeholder=" "
										name="Password" required="">
								</div>
								<div class="right-w3l">
									<input type="submit" class="form-control" value="Đăng nhập">
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