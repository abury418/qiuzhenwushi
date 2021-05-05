<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.Dining,java.util.ArrayList,java.util.*,com.javaee.bean.*,com.javaee.bean.PageModel"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-color.css" id="colors">
<title>录入商品</title>
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
					<h2>录入商品</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">首页</a></li>
							<li><a href="#">分类录入</a></li>
							<li>录入商品</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<div class="row">
		  <form action="admmanage?action=newproduct" method="post" name="newProduct"> 
			<div class="col-lg-12">
				<div id="add-listing">
					<!-- Section -->
					<div class="add-listing-section">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="sl sl-icon-doc"></i>商品基本信息</h3>
						</div>

						<!-- Title -->
						<div class="row with-forms">
							<div class="col-md-12">
								<h5>商品名<i class="tip" data-tip-content="Name of new Product"></i></h5>
								<input title="dishname" name="dishName" class="search-field" type="text" placeholder="商品名称"/>
							</div>
						</div>
						
						<div class="row with-forms">
							<div class="col-md-12">
								<h5>商品描述<i class="tip" data-tip-content="Details of new Product"></i></h5>
								<input title="dishdetails" name="dishDetails" class="search-field" type="text" placeholder="商品描述内容" style="height:500px"/>
							</div>
						</div>
						
						<div class="row with-forms">
							<div class="col-md-6">
								<h5>所属商店编号<i class="tip" data-tip-content="diningId of new Product"></i></h5>
								<input title="diningid" name="diningId" class="search-field" type="text" placeholder="所属商店编号"/>
							</div>
							<div class="col-md-6">
								<h5>类别<i class="tip" data-tip-content="Category of new Product"></i></h5>
								<input title="dishcategory" name="dishCategory" class="search-field" type="text" placeholder="所属类别（标本/工艺品/地质用品/其它类）"/>
							</div>
						</div>
						
						<div class="row with-forms">
							<div class="col-md-6">
								<h5>单价<i class="tip" data-tip-content="Price of new Product"></i></h5>
								<input title="dishprice" name="dishPrice" class="search-field" type="text" placeholder="商品单价"/>
							</div>
							<div class="col-md-6">
								<h5>库存<i class="tip" data-tip-content="Stock of new Product"></i></h5>
								<input title="dishstock" name="dishStock" class="search-field" type="text" placeholder="初始库存"/>
							</div>
						</div>
						
						<!-- Row / End -->
					</div>
					<!-- Section / End -->
					<!-- Section -->
					<div class="add-listing-section margin-top-45">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="sl sl-icon-picture"></i> 商品图片</h3>
						</div>

						<!-- Dropzone -->
						<div class="submit-section">
							<input title="pimg" name="pImg" id="pimgname" type="text" placeholder="图片地址（选择图片上传后自动读取文件名）">
						</div>
						<input type="file" name="file" class="file" style="border:none" id="fileField" onchange="document.getElementById('pimgname').value=this.files[0].name"/> 

					</div>
					<!-- Section / End -->
					<a href="#">
					<input type="submit" class="button-submit" value="提交" style="width:100px;margin-top:30px"></a>

				</div>
			</div>
			</form> 
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


<!-- DropZone | Documentation: http://dropzonejs.com -->
<script type="text/javascript" src="scripts/dropzone.js"></script>
</body>
</html>