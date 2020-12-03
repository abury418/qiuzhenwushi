<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312" http-equiv=Content-Type content="text/html">
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png"/>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/jquery-ui.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/chosen.min.css">
<link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="assets/css/magnific-popup.min.css">
<link rel="stylesheet" href="assets/css/lightbox.min.css">
<link rel="stylesheet" href="assets/js/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet" href="assets/css/jquery.scrollbar.min.css">
<link rel="stylesheet" href="assets/css/mobile-menu.css">
<link rel="stylesheet" href="assets/fonts/flaticon/flaticon.css">
<link rel="stylesheet" href="assets/css/style.css">
<title>xxx网上餐厅 - 登录您的账号</title>
<script language="javascript">
	
	function checkUserInfo(){
		if(document.loginForm.loginName.value==""){
			alert("用户名非空！");
			return false;
		}
		if(document.loginForm.loginPass.value==""){
			alert("密码非空！");
			return false;
		}
	}
</script>
</head>
<body class="inblog-page">
<header class="header style7">
		<div class="top-bar">
			<div class="container">
				<div class="top-bar-left">
					<div class="header-message">
						欢迎来到我们的西餐厅，请尽情享受美味吧！
					</div>
				</div>
				<div class="top-bar-right">
					<div class="header-language">
						<div class="nozari-language nozari-dropdown">
							<a href="#" class="active language-toggle" data-nozari="nozari-dropdown">
								<span>
									未登录
								</span>
							</a>
						</div>
					</div>
					<ul class="header-user-links">
						<li>
							<a href="login.jsp">登录  &nbsp;&nbsp; /&nbsp;&nbsp; 注册</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="main-header">
				<div class="row">
					<div class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
						<div class="logo">
							<a href="index.html">
								<img src="assets/images/logo.jpg" alt="img">
							</a>
						</div>
					</div>
					<div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
						<div class="block-search-block">
							<form class="form-search form-search-width-category">
								<div class="form-content">
									<div class="category">
										<select title="cate" data-placeholder="All Categories" class="chosen-select"
												tabindex="1">
											<option value="United States">五道口</option>
											<option value="United Kingdom">六道口</option>
											<option value="Afghanistan">大钟寺</option>
											<option value="Aland Islands">知春路</option>
											<option value="Albania">西直门</option>
											<option value="Algeria">上地</option>
										</select>
									</div>
									<div class="inner">
										<input type="text" class="input" name="s" value="" placeholder="选择地址   搜索美食~">
									</div>
									<button class="btn-search" type="submit">
										<span class="icon-search"></span>
									</button>
								</div>
							</form>
						</div>
					</div>
					<div class="col-lg-2 col-sm-12 col-md-3 col-xs-12 col-ts-12">
						<div class="header-control">
							<div class="block-minicart nozari-mini-cart block-header nozari-dropdown">
								<a href="javascript:void(0);" class="shopcart-icon" data-nozari="nozari-dropdown">
									购物车
									<span class="count">
									0
									</span>
								</a>
								<div class="no-product nozari-submenu">
									<p class="text">
										您的购物车是
										<span>
											 空
										</span>
										的
									</p>
								</div>
							</div>
							<div class="block-account block-header nozari-dropdown">
								<a href="javascript:void(0);" data-nozari="nozari-dropdown">
									<span class="flaticon-user"></span>
								</a>
								<div class="header-account nozari-submenu">
									<div class="header-user-form-tabs">
										<ul class="tab-link">
											<li class="active">
												<a data-toggle="tab" aria-expanded="true" href="#header-tab-login">登录</a>
											</li>
											<li>
												<a data-toggle="tab" aria-expanded="true" href="#header-tab-rigister">注册</a>
											</li>
										</ul>
										<div class="tab-container">
											<div id="header-tab-login" class="tab-panel active">
												<form method="post" class="login form-login" name="loginForm" obSubmit="return checkUserInfo()" action="loginctrl?action=loginctrl">
													<p class="form-row form-row-wide">
														<input type="text" placeholder="账号名" class="input-text" name="loginName">
													</p>
													<p class="form-row form-row-wide">
														<input type="password" class="input-text" placeholder="账号密码" name="loginPass">
													</p>
													<p class="form-row">
														<label class="form-checkbox">
															<input type="checkbox" class="input-checkbox">
															<span>
																记住账号
															</span>
														</label>
														<input type="submit" class="button" value="Login">
													</p>
													<p class="lost_password">
														<a href="#">忘记密码?</a>
													</p>
												</form>
											</div>
											<div id="header-tab-rigister" class="tab-panel">
												<form method="post" class="register form-register">
													<p class="form-row form-row-wide">
														<input type="email" placeholder="Email" class="input-text">
													</p>
													<p class="form-row form-row-wide">
														<input type="password" class="input-text" placeholder="Password">
													</p>
													<p class="form-row">
														<input type="submit" class="button" value="Register">
													</p>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<a class="menu-bar mobile-navigation menu-toggle" href="#">
								<span></span>
								<span></span>
								<span></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="header-nav-container">
			<div class="container">
				<div class="header-nav-wapper main-menu-wapper">
					<div class="vertical-wapper block-nav-categori">
						<div class="block-title">
						<span class="icon-bar">
							<span></span>
							<span></span>
							<span></span>
						</span>
							<span class="text">享受美好食光</span>
						</div>
						</div>
					<div class="header-nav">
						<div class="container-wapper">
							<ul class="nozari-clone-mobile-menu nozari-nav main-menu " id="menu-main-menu">
								<li class="menu-item">
									<a href="index.jsp" class="nozari-menu-item-title" title="Home">首页</a>
								</li>
								<li class="menu-item">
									<a href="dining-list.html" class="nozari-menu-item-title" title="Shop">特色餐厅</a>
								</li>
								<li class="menu-item  menu-item-has-children item-megamenu">
									<a href="dining-list.html" class="nozari-menu-item-title" title="Pages">风味餐饮</a>
									<span class="toggle-submenu"></span>
									<div class="submenu mega-menu menu-page">
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
												<div class="nozari-custommenu default">
													<h2 class="widgettitle">Shop Pages</h2>
													<ul class="menu">
														<li class="menu-item">
															<a href="shoppingcart.html">Shopping Cart</a>
														</li>
														<li class="menu-item">
															<a href="checkout.html">Checkout</a>
														</li>
														<li class="menu-item">
															<a href="contact.html">Contact us</a>
														</li>
														<li class="menu-item">
															<a href="404page.html">404</a>
														</li>
														<li class="menu-item">
															<a href="login.html">Login/Register</a>
														</li>
													</ul>
												</div>
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
												<div class="nozari-custommenu default">
													<h2 class="widgettitle">Product</h2>
													<ul class="menu">
														<li class="menu-item">
															<a href="productdetails-fullwidth.html">Product Fullwidth</a>
														</li>
														<li class="menu-item">
															<a href="productdetails-leftsidebar.html">Product left sidebar</a>
														</li>
														<li class="menu-item">
															<a href="productdetails-rightsidebar.html">Product right sidebar</a>
														</li>
													</ul>
												</div>
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
											</div>
										</div>
									</div>
								</li>
								<li class="menu-item  menu-item-has-children">
									<a href="inblog_right-siderbar.html" class="nozari-menu-item-title"
									   title="Blogs">购物车</a>
									<span class="toggle-submenu"></span>
									<ul class="submenu">
										<li class="menu-item menu-item-has-children">
											<a href="#" class="nozari-menu-item-title" title="Blog Style">Blog Style</a>
											<span class="toggle-submenu"></span>
											<ul class="submenu">
												<li class="menu-item">
													<a href="bloggrid.html">Grid</a>
												</li>
												<li class="menu-item">
													<a href="bloglist.html">List</a>
												</li>
												<li class="menu-item">
													<a href="bloglist-leftsidebar.html">List Sidebar</a>
												</li>
											</ul>
										</li>
										<li class="menu-item menu-item-has-children">
											<a href="#" class="nozari-menu-item-title" title="Post Layout">Post Layout</a>
											<span class="toggle-submenu"></span>
											<ul class="submenu">
												<li class="menu-item">
													<a href="inblog_left-siderbar.html">Left Sidebar</a>
												</li>
												<li class="menu-item">
													<a href="inblog_right-siderbar.html">Right Sidebar</a>
												</li>
											</ul>
										</li>
									</ul>
								</li>
								<li class="menu-item">
									<a href="about.html" class="nozari-menu-item-title" title="About">我的订单</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="header-device-mobile">
		<div class="wapper">
			<div class="item mobile-logo">
				<div class="logo">
					<a href="#">
						<img src="assets/images/logo.png" alt="img">
					</a>
				</div>
			</div>
			<div class="item item mobile-search-box has-sub">
				<a href="#">
						<span class="icon">
							<i class="fa fa-search" aria-hidden="true"></i>
						</span>
				</a>
				<div class="block-sub">
					<a href="#" class="close">
						<i class="fa fa-times" aria-hidden="true"></i>
					</a>
					<div class="header-searchform-box">
						<form class="header-searchform">
							<div class="searchform-wrap">
								<input type="text" class="search-input" placeholder="Enter keywords to search...">
								<input type="submit" class="submit button" value="Search">
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="item mobile-settings-box has-sub">
				<a href="#">
						<span class="icon">
							<i class="fa fa-cog" aria-hidden="true"></i>
						</span>
				</a>
				<div class="block-sub">
					<a href="#" class="close">
						<i class="fa fa-times" aria-hidden="true"></i>
					</a>
					<div class="block-sub-item">
						<h5 class="block-item-title">Currency</h5>
						<form class="currency-form nozari-language">
							<ul class="nozari-language-wrap">
								<li class="active">
									<a href="#">
											<span>
												English (USD)
											</span>
									</a>
								</li>
								<li>
									<a href="#">
											<span>
												French (EUR)
											</span>
									</a>
								</li>
								<li>
									<a href="#">
											<span>
												Japanese (JPY)
											</span>
									</a>
								</li>
							</ul>
						</form>
					</div>
				</div>
			</div>
			<div class="item menu-bar">
				<a class=" mobile-navigation  menu-toggle" href="#">
					<span></span>
					<span></span>
					<span></span>
				</a>
			</div>
		</div>
	</div>
	<div class="main-content main-content-login">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin">
								<a href="index.html">首页</a>
							</li>
							<li class="trail-item trail-end active" style="color:#F91942">
								登录  &nbsp;&nbsp; /&nbsp;&nbsp; 注册
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="content-area col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="site-main">
						<h3 class="custom_blog_title">
							用户登录
						</h3>
						<div class="customer_login">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="login-item">
										<h5 class="title-login">已注册用户，请在这里登录</h5>
										<!-- 登录表单 -->
										<form class="login" action="loginctrl?action=loginctrl" method="post" name="loginForm" onSubmit="return checkUserInfo()">
											<p class="form-row form-row-wide">
												<label class="text">用户账号</label>
												<input title="username" type="text" class="input-text" name="loginName">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">账号密码</label>
												<input title="password" type="password" class="input-text" name="loginPass">
											</p>
											<p class="lost_password">
												<span class="inline">
													<input type="checkbox" id="cb1">
													<label for="cb1" class="label-text">记住密码</label>
												</span>
												<a href="#" class="forgot-pw">忘记密码?</a>
											</p>
											<p class="form-row">
												<input type="submit" class="button-submit" value="确认登录" style="font-size:15px" name="Submit">
											</p>
										</form>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="login-item">
										<h5 class="title-login">未注册用户，请在这里填写您的注册信息</h5>
										<form class="register" action="loginctrl?action=registerctrl&UserId=${requestScope.Users.top}" method="post" name="loginForm">
											<p class="form-row form-row-wide">
												<label class="text">您的邮箱</label>
												<input title="email" type="email" class="input-text" name="registerMail">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">您的姓名</label>
												<input title="name" type="text" class="input-text" name="registerName">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">输入密码</label>
												<input title="pass" type="password" class="input-text" name="registerPass">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">确认密码</label>
												<input title="pass2" type="password" class="input-text">
											</p>
											<p class="form-row">
												<span class="inline">
													<input type="checkbox" id="cb2">
													<label for="cb2" class="label-text">我接受西餐吧网站的<span>协议条款</span></label>
												</span>
											</p>
											<p class="">
												<input type="submit" class="button-submit" value="立 即 注 册" style="font-size:15px" name="Submit">
											</p>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer style7">
		<div class="container">
			<div class="container-wapper">
				<div class="row">
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4">
						<div class="widget-box">
							<div class="single-img">
								<a href="index.html"><img src="assets/images/logo-light.png" alt="img"></a>
							</div>
							<ul class="menu">
								<li class="menu-item">
									<a href="#"><span class="flaticon-placeholder"></span>45 Grand Central Terminal New
										York,NY 1017 United State USA</a>
								</li>
								<li class="menu-item">
									<a href="#"><span class="fa fa-phone"></span>(+123) 456 789 - (+123) 666 888</a>
								</li>
								<li class="menu-item">
									<a href="#"><span class="fa fa-envelope-o"></span>Contact@yourcompany.com</a>
								</li>
								<li class="menu-item">
									<a href="#"><span class="flaticon-clock"></span>Mon-Sat 9:00pm - 5:00pm Sun : Closed</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
						<div class="nozari-custommenu default">
							<h2 class="widgettitle">Quick Menu</h2>
							<ul class="menu">
								<li class="menu-item">
									<a href="#">New arrivals</a>
								</li>
								<li class="menu-item">
									<a href="#">Life style</a>
								</li>
								<li class="menu-item">
									<a href="#">Trousers</a>
								</li>
								<li class="menu-item">
									<a href="#">Bags</a>
								</li>
								<li class="menu-item">
									<a href="#">Shoes</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
						<div class="nozari-custommenu default">
							<h2 class="widgettitle">Information</h2>
							<ul class="menu">
								<li class="menu-item">
									<a href="#">FAQs</a>
								</li>
								<li class="menu-item">
									<a href="#">Track Order</a>
								</li>
								<li class="menu-item">
									<a href="#">Delivery</a>
								</li>
								<li class="menu-item">
									<a href="#">Contact Us</a>
								</li>
								<li class="menu-item">
									<a href="#">Return</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4">
						<div class="nozari-newsletter style1">
							<div class="newsletter-head">
								<h3 class="title">Newsletter</h3>
							</div>
							<div class="newsletter-form-wrap">
								<div class="list">
									Get notified of new products, limited releases, and more.
								</div>
								<input type="email" class="input-text email email-newsletter"
									   placeholder="Your email letter">
								<button class="button btn-submit submit-newsletter">SUBSCRIBE</button>
							</div>
						</div>
						<div class="nozari-socials">
							<ul class="socials">
								<li>
									<a href="#" class="social-item" target="_blank">
										<i class="icon fa fa-facebook"></i>
									</a>
								</li>
								<li>
									<a href="#" class="social-item" target="_blank">
										<i class="icon fa fa-twitter"></i>
									</a>
								</li>
								<li>
									<a href="#" class="social-item" target="_blank">
										<i class="icon fa fa-instagram"></i>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12 border-custom">
						<span></span>
					</div>
				</div>
				<div class="footer-end">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="coppyright">
								Copyright © 2019
								<a href="#">Nozari</a>
								. All rights reserved
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="nozari-payment">
								<img src="assets/images/payments.png" alt="img">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<div class="footer-device-mobile">
		<div class="wapper">
			<div class="footer-device-mobile-item device-home">
				<a href="index.html">
					<span class="icon">
						<i class="fa fa-home" aria-hidden="true"></i>
					</span>
					Home
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-wishlist">
				<a href="#">
					<span class="icon">
						<i class="fa fa-heart" aria-hidden="true"></i>
					</span>
					Wishlist
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-cart">
				<a href="#">
					<span class="icon">
						<i class="fa fa-shopping-basket" aria-hidden="true"></i>
						<span class="count-icon">
							0
						</span>
					</span>
					<span class="text">Cart</span>
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-user">
				<a href="#">
					<span class="icon">
						<i class="fa fa-user" aria-hidden="true"></i>
					</span>
					Account
				</a>
			</div>
		</div>
	</div>
	<a href="#" class="backtotop">
		<i class="pe-7s-angle-up"></i>
	</a>
	<script src="assets/js/jquery-1.12.4.min.js"></script>
	<script src="assets/js/jquery.plugin-countdown.min.js"></script>
	<script src="assets/js/jquery-countdown.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/magnific-popup.min.js"></script>
	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/jquery.scrollbar.min.js"></script>
	<script src="assets/js/jquery-ui.min.js"></script>
	<script src="assets/js/mobile-menu.js"></script>
	<script src="assets/js/chosen.min.js"></script>
	<script src="assets/js/slick.js"></script>
	<script src="assets/js/jquery.elevateZoom.min.js"></script>
	<script src="assets/js/jquery.actual.min.js"></script>
	<script src="assets/js/fancybox/source/jquery.fancybox.js"></script>
	<script src="assets/js/lightbox.min.js"></script>
	<script src="assets/js/owl.thumbs.min.js"></script>
	<script src="assets/js/jquery.scrollbar.min.js"></script>
	<script src='https://ditu.google.cn/maps/api/js?key=AIzaSyC3nDHy1dARR-Pa_2jjPCjvsOR4bcILYsM'></script>
	<script src="assets/js/frontend-plugin.js"></script>
</body>
</html>