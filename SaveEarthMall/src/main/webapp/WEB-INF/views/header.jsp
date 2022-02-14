<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Earth mall</title>
<link rel="stylesheet" href="css/shopping.css">
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div id="wrap">
		<!--헤더파일 들어가는 곳 시작 -->
		<header>
			<!--로고 들어가는 곳 시작--->
			<div id="logo">
				<a href="index"> <img src="img/logo.gif	" width="180" alt="">
				</a>
			</div>
			<!--로고 들어가는 곳 끝-->

			<nav id="catagory_menu">
				<ul>
					<li><a href="index">HOME</a></li>

					<li><a href="shop">SHOP</a></li>

					<li><a href="aboutus">ABOUTUS</a></li>

					<li><a href="notice">NOTICE</a></li>
				</ul>
			</nav>
			<nav id="login">
				<ul>
					<li><a href="cart_list"><img src="img/cart.jpg"></a></li>

					<c:choose>
						<c:when test="${empty sessionScope.loginUser }">
							<li><a href="login_form"><img src="img/login.jpg">Login</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="mypage"><img src="img/login.jpg">MyPage</a>
							</li>
						</c:otherwise>
					</c:choose>

				</ul>
			</nav>

			<nav id="category">
				<ul>
					<li><a href="shop">ALL</a></li>
					<li><a href="category?kind=1">LIVING</a></li>
					<li><a href="category?kind=2">BATHROOM</a></li>
					<li><a href="category?kind=3">KITCHEN</a></li>
					<li><a href="category?kind=4">KIT</a></li>
					<li><a href="category?kind=5">ETC</a></li>
				</ul>
			</nav>
		</header>
	</div>
</body>
</html>