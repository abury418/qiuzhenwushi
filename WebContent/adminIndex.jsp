<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.AdminUser"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-color.css" id="colors">
<title>管理员--首页</title>
</head>
<body>
	<!-- Wrapper -->
<div id="wrapper">

<!-- Header Container
================================================== -->
<header id="header-container" class="fixed fullwidth dashboard">

	<!-- Header -->
	<div id="header" class="not-sticky">
		<div class="container">
			
			<!-- Left Side Content -->
			<div class="left-side">
				
				<!-- Logo -->
				<div id="logo">
					<a href="adminIndex.jsp"><img src="images/logo.png" alt=""></a>
				</div>

				<!-- Mobile Navigation -->
				<div class="mmenu-trigger">
					<button class="hamburger hamburger--collapse" type="button">
						<span class="hamburger-box">
							<span class="hamburger-inner"></span>
						</span>
					</button>
				</div>
				<div class="clearfix"></div>
				<!-- Main Navigation / End -->
				
			</div>
			<!-- Left Side Content / End -->

			<!-- Right Side Content / End -->
			<div class="right-side">
				<!-- Header Widget -->
				<div class="header-widget">
					<%
						AdminUser admin = (AdminUser)request.getSession().getAttribute("adminuser");
						if(admin==null){
							admin.setAdmName("未登录");
						}
					%>
					<!-- User Menu -->
					<div class="user-menu">
						<div class="user-name"><span><img src="images/dashboard-avatar.jpg" alt=""></span><%=admin.getAdmName() %> </div>
					</div>

					<a href="admmanage?action=quit" class="button border with-icon">退出系统<i class="sl sl-icon-power"></i></a>
				</div>
				<!-- Header Widget / End -->
			</div>
			<!-- Right Side Content / End -->

		</div>
	</div>
	<!-- Header / End -->

</header>
<div class="clearfix"></div>
<!-- Header Container / End -->


<!-- Dashboard -->
<div id="dashboard">

	<!-- Navigation
	================================================== -->

	<!-- Responsive Navigation Trigger -->
	<a href="adminIndex.jsp" class="dashboard-responsive-nav-trigger"><i class="fa fa-reorder"></i> 求珍悟石后台中心</a>

	<div class="dashboard-nav">
		<div class="dashboard-nav-inner">

			<ul data-submenu-title="Main">
				<li class="active"><a href="adminIndex.jsp"><i class="sl sl-icon-settings"></i> 首页</a></li>
			</ul>
			<ul data-submenu-title="Listings">
				<li><a><i class="sl sl-icon-layers"></i>分类管理</a>
					<ul>
						<li><a href="admmanage?action=man_minerals"><i class="sl sl-icon-star"></i>岩矿管理</a></li>
						<li><a href="admmanage?action=man_articles"><i class="sl sl-icon-star"></i>文章管理</a></li>
						<li><a href="admmanage?action=man_news"><i class="sl sl-icon-star"></i>新闻管理</a></li>
						<li><a href="admmanage?action=man_products"><i class="sl sl-icon-star"></i>商品管理</a></li>
						<li><a href="admmanage?action=man_users"><i class="sl sl-icon-star"></i>用户管理</a></li>
					</ul>	
				</li>
				<li><a><i class="sl sl-icon-plus"></i>分类录入</a>
					<ul>
						<li><a href="admNewMineral.jsp"><i class="sl sl-icon-star"></i>录入岩矿</a></li>
						<li><a href="admNewArticle.jsp"><i class="sl sl-icon-star"></i>录入文章</a></li>
						<li><a href="admNewNews.jsp"><i class="sl sl-icon-star"></i>录入新闻</a></li>
						<li><a href="admNewProduct.jsp"><i class="sl sl-icon-star"></i>录入商品</a></li>
						<li><a href="admNewUser.jsp"><i class="sl sl-icon-star"></i>录入用户</a></li>
					</ul>	
				</li>
			</ul>	
			<ul data-submenu-title="Account">
				<li><a href="admSelf.jsp"><i class="sl sl-icon-user"></i>个人管理</a></li>
				<li><a href="admmanage?action=quit"><i class="sl sl-icon-power"></i>注销退出</a></li>
			</ul>
		</div>
	</div>
	<!-- Navigation / End -->


	<!-- Content
	================================================== -->
	<div class="dashboard-content">

		<!-- Titlebar -->
		<div id="titlebar">
			<div class="row">
				<div class="col-md-12">
					<h2>你好, <%=admin.getAdmName() %>!</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="adminIndex.jsp">求珍悟石后台中心</a></li>
							<li>首页</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<!-- Notice -->
		<div class="row">
			<div class="col-md-12">
				<div class="notification success closeable margin-bottom-30">
					<p>欢迎来到  "求珍悟石" 综合地学科普平台的<strong>后台管理中心</strong>!</p>
					<a class="close" href="#"></a>
				</div>
			</div>
		</div>
		<!-- Content -->
		<div class="row">

			<!-- Item -->
			<a href="admmanage?action=man_minerals">
			<div class="col-lg-3 col-md-6">
				<div class="dashboard-stat color-1">
					<div class="dashboard-stat-content"><h3 style="color:white;font-weight:600;font-size:35px">Minerals</h3> <span>岩矿管理</span></div>
					<div class="dashboard-stat-icon"><i class="im im-icon-Map2"></i></div>
				</div>
			</div></a>
				
			<!-- Item -->
			<a href="admmanage?action=man_articles">
			<div class="col-lg-3 col-md-6">
				<div class="dashboard-stat color-4">
					<div class="dashboard-stat-content"><h3 style="color:white;font-weight:600;font-size:35px">Articles</h3> <span>文章管理</span></div>
					<div class="dashboard-stat-icon"><i class="im im-icon-Heart"></i></div>
				</div>
			</div></a>
			
			<a href="admmanage?action=man_products">
			<div class="col-lg-3 col-md-6">
				<div class="dashboard-stat color-2">
					<div class="dashboard-stat-content"><h3 style="color:white;font-weight:600;font-size:35px">Products</h3> <span>商品管理</span></div>
					<div class="dashboard-stat-icon"><i class="im im-icon-Line-Chart"></i></div>
				</div>
			</div></a>
			
			<!-- Item -->
			<a href="admmanage?action=man_users">
			<div class="col-lg-3 col-md-6">
				<div class="dashboard-stat color-3">
					<div class="dashboard-stat-content"><h3 style="color:white;font-weight:600;font-size:35px">Users</h3> <span>用户管理</span></div>
					<div class="dashboard-stat-icon"><i class="im im-icon-Add-UserStar"></i></div>
				</div>
			</div></a>

		</div>
		<div class="row">
		<!-- Copyrights -->
			<div class="col-md-12">
				<div class="copyrights">©  2021. 求珍悟石</div>
			</div>
		</div>

	</div>
	<!-- Content / End -->


</div>
<!-- Dashboard / End -->


</div>
<!-- Wrapper / End -->


<!-- Scripts
================================================== -->
<script type="text/javascript" src="scripts/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery-migrate-3.1.0.min.js"></script>
<script type="text/javascript" src="scripts/mmenu.min.js"></script>
<script type="text/javascript" src="scripts/chosen.min.js"></script>
<script type="text/javascript" src="scripts/slick.min.js"></script>
<script type="text/javascript" src="scripts/rangeslider.min.js"></script>
<script type="text/javascript" src="scripts/magnific-popup.min.js"></script>
<script type="text/javascript" src="scripts/waypoints.min.js"></script>
<script type="text/javascript" src="scripts/counterup.min.js"></script>
<script type="text/javascript" src="scripts/jquery-ui.min.js"></script>
<script type="text/javascript" src="scripts/tooltips.min.js"></script>
<script type="text/javascript" src="scripts/custom.js"></script>
	
</body>
</html>