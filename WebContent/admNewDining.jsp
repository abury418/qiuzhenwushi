<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.Dining,java.util.ArrayList,java.util.*,com.javaee.bean.*,com.javaee.bean.PageModel"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-color.css" id="colors">
<title>添加新餐厅</title>
<script language="javascript">
	
	function checkDining(){
		if(document.newDining.diningName.value==""){
			alert("餐厅名非空！");
			return false;
		}
		if(document.newDining.diningPhone.value==""){
			alert("餐厅电话非空！");
			return false;
		}
		if(document.newDining.distributeMoney.value==""){
			alert("配送费用非空！");
			return false;
		}
		if(document.newDining.diningAddress.value==""){
			alert("餐厅地址非空！");
			return false;
		}
		if(document.newDining.diningPic.value==""){
			alert("图片地址非空！");
			return false;
		}
	}
</script>
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
					<a href="adminIndex.jsp" class="dashboard-logo"><img src="images/logo2.png" alt=""></a>
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
						<div class="user-name"><span><img src="images/dashboard-avatar.jpg" alt=""></span>管理员 </div>
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
	<a href="adminIndex.jsp" class="dashboard-responsive-nav-trigger"><i class="fa fa-reorder"></i> 网上订餐系统后台中心</a>

	<div class="dashboard-nav">
		<div class="dashboard-nav-inner">

			<ul data-submenu-title="Main">
				<li class="active"><a href="adminIndex.jsp"><i class="sl sl-icon-settings"></i> 首页</a></li>
			</ul>
			<ul data-submenu-title="Listings">
				<li><a><i class="sl sl-icon-layers"></i>分类管理</a>
					<ul>
						<li><a href="admmanage?action=dinings"><i class="sl sl-icon-star"></i>餐厅管理</a></li>
						<li><a href="admmanage?action=dishs"><i class="sl sl-icon-star"></i>菜品管理</a></li>
						<li><a href="admmanage?action=userinfos"><i class="sl sl-icon-star"></i>用户管理</a></li>
					</ul>	
				</li>
				<li><a><i class="sl sl-icon-plus"></i>分类录入</a>
					<ul>
						<li><a href="admNewDining.jsp"><i class="sl sl-icon-star"></i>录入餐厅</a></li>
						<li><a href="admNewDish.jsp"><i class="sl sl-icon-star"></i>录入菜品</a></li>
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
					<h2>录入餐厅</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">首页</a></li>
							<li><a href="#">分类录入</a></li>
							<li>录入餐厅</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<div class="row">
		  <form action="admmanage?action=newdining" method="post" name="newDining" onSubmit="return checkDining()"> 
			<div class="col-lg-12">
				<div id="add-listing">
					<!-- Section -->
					<div class="add-listing-section">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="sl sl-icon-doc"></i>餐厅基本信息</h3>
						</div>

						<!-- Title -->
						<div class="row with-forms">
							<div class="col-md-12">
								<h5>餐厅名<i class="tip" data-tip-content="Name of new dining"></i></h5>
								<input title="diningname" name="diningName" class="search-field" type="text" placeholder="餐厅名限制在20字以内"/>
							</div>
						</div>

						<!-- Row -->
						<div class="row with-forms">
							<!-- Type -->
							<div class="col-md-6">
								<h5>餐厅电话 <i class="tip" data-tip-content="Phone of new dining"></i></h5>
								<input title="diningphone" name="diningPhone" type="text" placeholder="餐厅联系电话">
							</div>
							<div class="col-md-6">
								<h5>配送费用 <i class="tip" data-tip-content="DistributeMoney of new dining"></i></h5>
								<input title="distributemoney" name="distributeMoney" type="text" placeholder="餐厅配送费用（不得超出20元）">
							</div>
						</div>
						<!-- Row / End -->
					</div>
					<!-- Section / End -->

					<!-- Section -->
					<div class="add-listing-section margin-top-45">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="sl sl-icon-location"></i> 餐厅所在区域</h3>
						</div>

						<div class="submit-section">

							<!-- Row -->
							<div class="row with-forms">

								<!-- City -->
								<div class="col-md-6">
									<h5>餐厅区域 <i class="tip" data-tip-content="Area of new dining"></i></h5>
									<select class="chosen-select-no-single" >
										<option label="blank">五道口</option>	
										<option>六道口</option>
										<option>西直门</option>
										<option>大钟寺</option>
										<option>知春路</option>
									</select>
								</div>
								<!-- Address -->
								<div class="col-md-6">
									<h5>详细地址 <i class="tip" data-tip-content="Address of new dining"></i></h5>
									<input title="diningaddress" name="diningAddress" type="text" placeholder="如：五道口华府美食城三层">
								</div>

							</div>
							<!-- Row / End -->

						</div>
					</div>
					<!-- Section / End -->


					<!-- Section -->
					<div class="add-listing-section margin-top-45">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="sl sl-icon-picture"></i> 餐厅图片</h3>
						</div>

						<!-- Dropzone -->
						<div class="submit-section">
							<input title="diningpic" name="diningPic" id="diningpicname" type="text" placeholder="图片地址（选择图片上传后自动读取文件名）">
							</div>
							<input type="file" name="file" class="file" style="border:none" id="fileField" onchange="document.getElementById('diningpicname').value=this.files[0].name"/> 
							<!-- <form action="/file-upload" class="dropzone" ></form> -->
						

					</div>
					<!-- Section / End -->
					<a href="#">
					<input type="submit" class="button-submit" value="提交" style="width:100px;margin-top:30px"></a>

				</div>
			</div>
			</form> 
			<!-- Copyrights -->
			<div class="col-md-12">
				<div class="copyrights">© 2020 网上订餐系统后台管理中心</div>
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