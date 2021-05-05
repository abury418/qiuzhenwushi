<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.User"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312" http-equiv=Content-Type content="text/html">
<link rel="shortcut icon" type="image/x-icon" href="assets/images/logo.jpg"/>
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
    


<title>求珍悟石——地学科普综合平台</title>
</head>
<body class="inblog-page">
	<header class="header style7">
    <div class="top-bar">
        <div class="container">
            <div class="top-bar-left">
                <div class="header-message">
                   	 欢迎来到求珍悟石，一个致力于普及地学知识的综合平台
                </div>
            </div>
            <div class="top-bar-right">
                <div class="header-language">
                    <div class="nozari-language nozari-dropdown">
                        <a href="#" class="active language-toggle" data-nozari="nozari-dropdown">
                        <%
                        	User user = new User();
                        	if(request.getSession().getAttribute("user")==null){
                        		user.setUserName("未登录！");
                        	}
                        	else{
                        		user=(User)request.getSession().getAttribute("user");
                        %>
                        <span>你好！</span>
						<%
                        	}
						%>
						<span><%=user.getUserName()%></span>

                        </a>
                        <ul class="nozari-submenu">
                            <li class="switcher-option">
                                <a href="#">
											<span>
												个人空间
											</span>
                                </a>
                            </li>
                            <li class="switcher-option">
                                <a href="#">
											<span>
												退出登录
											</span>
                                </a>
                            </li>
                        </ul>
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
                        <a href="index_1.jsp">
                            <img src="images/logo.png" alt="img" style="width:22%;height:22%;margin-left:20px">
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
                                        <option value="United States">岩矿之书</option>
										<option value="United Kingdom">科普专辑</option>
										<option value="Afghanistan">地球年代纪</option>
										<option value="Aland Islands">地学前沿</option>
										<option value="Albania">求珍小铺</option>
                                    </select>
                                </div>
                                <div class="inner">
                                    <input type="text" class="input" name="s" value="" placeholder="搜索~">
                                </div>
                                <button class="btn-search" type="submit">
                                    <span class="icon-search"></span>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-nav-container rows-space-20">
        <div class="container">
            <div class="header-nav-wapper main-menu-wapper">
                <div class="vertical-wapper block-nav-categori">
                    <div class="block-title">
							<span class="icon-bar">
								<span></span>
								<span></span>
								<span></span>
							</span>
                        <span class="text">求珍悟石</span>
                    </div>
                </div>
                <div class="header-nav">
                    <div class="container-wapper">
                        <ul class="nozari-clone-mobile-menu nozari-nav main-menu " id="menu-main-menu">
                            <li class="menu-item">
                                <a href="index_1.jsp" class="nozari-menu-item-title" title="Home">首页</a>
                            </li>
                            <li class="menu-item">
                                <a href="index_1.jsp" class="nozari-menu-item-title" title="Shop">岩矿之书</a>
                                
                            </li>
                            <li class="menu-item  ">
                                <a href="index_1.jsp" class="nozari-menu-item-title" title="Pages">科普专辑</a>
                       
                            </li>
                            <li class="menu-item  ">
                              
                                    <a href="index_1.jsp" class="nozari-menu-item-title" title="About">地学前沿</a>
                           
                              
                            </li>
                            <li class="menu-item">
                            <!-- gotomycart -->
  
                          
                                  <a href="index.jsp" class="nozari-menu-item-title"
                                   title="Blogs">求珍小铺</a>
                               
                        
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
	<div class="main-content main-content-login">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin">
								<a href="index_1.jsp">首页</a>
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
													<label for="cb2" class="label-text">我接受求珍悟石网站的<span>协议条款</span></label>
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
                           <img src="images/logo.png" alt="img" style="width:18%;height:18%">
                        </div>
                        <ul class="menu">
                       
                            <li class="menu-item">
                                <a href="#"><span class="fa fa-phone"></span>12345678</a>
                            </li>
                            <li class="menu-item">
                                <a href="#"><span class="fa fa-envelope-o"></span>1564743199@qq.com</a>
                            </li>
                            <li class="menu-item">
                                <a href="#"><span class="flaticon-clock"></span>9:00am - 11:00pm</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
                    <div class="nozari-custommenu default">
                        <h2 class="widgettitle">快速浏览</h2>
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="#">新到商品</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">标本</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">地质用品</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">工艺品</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
                <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
                    <div class="nozari-custommenu default">
                        <h2 class="widgettitle">信息</h2>
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="#">售后服务</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">配送方式</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">联系我们</a>
                            </li>
                      
                        </ul>
                    </div>
                </div>
                <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4">
                    <div class="nozari-newsletter style1">
                        <div class="newsletter-head">
                            <h3 class="title">联系方式</h3>
                        </div>
                        <div class="newsletter-form-wrap">
                            <div class="list">
                                请继续关注求珍小铺！
                            </div>
                            <input type="email" class="input-text email email-newsletter"
                                   placeholder="您的联系方式">
                            <button class="button btn-submit submit-newsletter">订阅</button>
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
                            Copyright © 2021
                            <a href="#">求珍悟石</a>
                            
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                       
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