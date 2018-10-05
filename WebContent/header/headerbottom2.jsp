<%@page import="dao.MenuDao"%>
<%@page import="model.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="./js/Header.js"></script>
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-light justify-content-center">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mx-auto text-center">
				<li class="nav-item"><a class="nav-link  active"
					href="index.html">Home <span class="sr-only">(current)</span>
				</a></li>

				<%!ArrayList<Menu> menuCha = MenuDao.getMenuCha();%>
				<%
					for (int j = 0; j < menuCha.size(); j++) {
				%>
					<li class="nav-item dropdown has-mega-menu"
					style="position: static;"><a class="nav-link dropdown-toggle"
					data-toggle="dropdown" href=<%=menuCha.get(j).getLink()%>
					role="button" aria-haspopup="true" aria-expanded="false"><%=menuCha.get(j).getTenMenu()%></a>
					<div class="dropdown-menu" style="width: 100%">
						<div class="px-0 container">
							<div id="2" class="row">
								<%ArrayList<Menu> menuConCon = MenuDao.getMenuCon(menuCha.get(j).getMaMenu());%>
								<%
									for (int i = 0; i < menuConCon.size(); i++) {
								%>
								<%
									if (i % 3 == 0) {
								%>
								<div class="col-md-4">
									<%
										}
									%>
									<a class="dropdown-item"
										href=<%=menuConCon.get(i).getLink()%>><%=menuConCon.get(i).getTenMenu()%></a>
									<%
										if (i % 3 == 2) {
									%>
								</div>
								<%
									}
								%>
								<%
									}
								%>
								<!-- 								<div class="col-md-4"> -->
								<!-- 									<a class="dropdown-item" href="men.html">T-Shirts</a>  -->
								<!-- 									<a class="dropdown-item" href="men.html">Coats</a>  -->
								<!-- 									<a class="dropdown-item" href="men.html">Shirts</a> -->
								<!-- 								</div> -->
							</div>
						</div>
					</div></li>
				<%
					}
				%>



				

				<li class="nav-item"><a class="nav-link" href="about.html">About</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
				</li>
			</ul>
		</div>
	</nav>
</body>
</html>