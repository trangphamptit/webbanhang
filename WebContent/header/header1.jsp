<%@page import="dao.MenuDao"%>
<%@page import="model.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<nav class="top_nav d-flex pt-3 pb-1">
		<!-- logo -->
		<h1>
			<a class="navbar-brand" href="index.jsp">T&T </a>
		</h1>
		<!-- //logo -->
		<div class="w3ls_right_nav ml-auto d-flex">
			<!-- search form -->
			<form class="nav-search form-inline my-0 form-control" id="s" 
				method="post">
				<select class="form-control input-lg" id="mySelect" name="category">
					<option value="index.jsp">Tìm kiếm</option>
					<option value="shop.jsp">ALL</option>
					<%!ArrayList<Menu> menuCha = MenuDao.getMenuCha();%>
					<%
						for (int i = 1; i < menuCha.size(); i++) {
					%>
					<optgroup label="<%=menuCha.get(i).getTenMenu()%>">
						<%
							ArrayList<Menu> menuCon = MenuDao.getMenuCon(menuCha.get(i).getMaMenu());
						%>
						<%
							for (int j = 0; j < menuCon.size(); j++) {
						%>

						<option value=<%=menuCon.get(j).getLink()%>><%=menuCon.get(j).getTenMenu()%></option>

						<%
							}
						%>
					</optgroup>
					<%
						}
					%>
				</select> 
					<input class="btn btn-outline-secondary  ml-3 my-sm-0" type="button" value="Tìm kiếm" onclick="myFunction()" />
				<script>
				function myFunction() {
					    var x = document.getElementById("mySelect").value;
					    window.location.assign(x)
					
					
					/*var x = document.getElementById("select").value;
					document.getElementById("demo").innerHTML = x;*/
				 	/*var link = obj.value;
					window.location.assign("link");
				
					
					/*
					window.location.assign(document.forms["s"].category.value)
				 
				alern(document.forms["s"].category.value);*/
				 
				}
		</script>
			</form>
			<!-- search form -->
			<div class="nav-icon d-flex">
				<!-- sigin and sign up -->
				<a class="text-dark login_btn align-self-center mx-3"
					href="#myModal_btn" data-toggle="modal" data-target="#myModal_btn">
					<i class="far fa-user"></i>
				</a>
				<!-- sigin and sign up -->
				<!-- shopping cart -->
				<div class="cart-mainf">
					<div class="hubcart hubcart2 cart cart box_1">
						<form action="#" method="post">
							<input type="hidden" name="cmd" value="_cart"> <input
								type="hidden" name="display" value="1">
							<button class="btn top_hub_cart mt-1" type="submit" name="submit"
								value="" title="Cart">
								<i class="fas fa-shopping-bag"></i>
							</button>
						</form>
					</div>
				</div>
				<!-- //shopping cart ends here -->
			</div>
		</div>
	</nav>
</body>
</html>
