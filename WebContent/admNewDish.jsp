<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.Dining,java.util.ArrayList,java.util.*,com.javaee.bean.*,com.javaee.bean.PageModel"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-color.css" id="colors">
<title>添加新菜品</title>
<script language="javascript">
	
	function checkDish(){
		if(document.newDish.dishName.value==""){
			alert("菜品名非空！");
			return false;
		}
		if(document.newDish.diningId.value==""){
			alert("菜品所属餐厅非空！");
			return false;
		}
		if(document.newDish.dishStock.value==""){
			alert("菜品初始库存非空！");
			return false;
		}
		if(document.newDish.dishPrice.value==""){
			alert("菜品单价非空！");
			return false;
		}
		if(document.newDish.vipDiscount.value==""){
			alert("会员折扣非空！");
			return false;
		}
		if(document.newDish.dishPic.value==""){
			alert("图片地址非空！");
			return false;
		}
		if(document.newDish.dishDetails.value==""){
			alert("菜品详情非空！");
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
					<h2>录入菜品</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">首页</a></li>
							<li><a href="#">分类录入</a></li>
							<li>录入菜品</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<div class="row">
		<form action="admmanage?action=newdish" method="post" name="newDish" onSubmit="return checkDish()"> 
			<div class="col-lg-12">

				<div id="add-listing">

					<!-- Section -->
					<div class="add-listing-section">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="sl sl-icon-doc"></i>菜品基本信息</h3>
						</div>

						<!-- Title -->
						<div class="row with-forms">
							<div class="col-md-12">
								<h5>菜品名<i class="tip" data-tip-content="Name of new dish"></i></h5>
								<input title="diningid" name="dishName" class="search-field" type="text" placeholder="菜品名限制在20字以内"/>
							</div>
						</div>

						<!-- Row -->
						<div class="row with-forms">

							<!-- diningid-->
							<div class="col-md-6">
								<h5>所属餐厅编号<i class="tip" data-tip-content="Id of new dish's dining"></i></h5>
								<input title="diningid" name="diningId" type="text" placeholder="该菜品所属餐厅编号">
							</div>
							<!-- stock-->
							<div class="col-md-6">
								<h5>初始库存量<i class="tip" data-tip-content="Stock of new dish"></i></h5>
								<input title="dishstock" name="dishStock" type="text" placeholder="该菜品初始库存量">
							</div>
							<!-- price-->
							<div class="col-md-6">
								<h5>菜品单价<i class="tip" data-tip-content="Price of new dish"></i></h5>
								<input title="dishprice" name="dishPrice" type="text" placeholder="该菜品单价">
							</div>
							<!-- vip-->
							<div class="col-md-6">
								<h5>会员折扣<i class="tip" data-tip-content="Discount of new dish for vip"></i></h5>
								<input title="vipdiscount" name="vipDiscount" type="text" placeholder="该菜品会员可享折扣（无折扣请填1）">
							</div>
						</div>
						<!-- Row / End -->

					</div>
					<!-- Section / End -->
					<!-- Section -->
					<div class="add-listing-section margin-top-45">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="sl sl-icon-picture"></i> 菜品图片</h3>
						</div>

						<!-- Dropzone -->
						<div class="submit-section">
							<input title="dishpic" name="dishPic" id="dishpicname" type="text" placeholder="图片地址">
							<input type="file" name="file" class="file" style="border:none" id="fileField" onchange="document.getElementById('dishpicname').value=this.files[0].name"/>
						</div>

					</div>
					<!-- Section / End -->


					<!-- Section -->
					<div class="add-listing-section margin-top-45">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="sl sl-icon-docs"></i> 菜品详情描述</h3>
						</div>

						<!-- Description -->
						<div class="form">
							<h5>详情</h5>
							<textarea class="WYSIWYG" name="dishDetails" cols="40" rows="3" id="summary" spellcheck="true"></textarea>
						</div>
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


<!-- Opening hours added via JS (this is only for demo purpose) -->
<script>
$(".opening-day.js-demo-hours .chosen-select").each(function() {
	$(this).append(''+
        '<option></option>'+
        '<option>Closed</option>'+
        '<option>1 AM</option>'+
        '<option>2 AM</option>'+
        '<option>3 AM</option>'+
        '<option>4 AM</option>'+
        '<option>5 AM</option>'+
        '<option>6 AM</option>'+
        '<option>7 AM</option>'+
        '<option>8 AM</option>'+
        '<option>9 AM</option>'+
        '<option>10 AM</option>'+
        '<option>11 AM</option>'+
        '<option>12 AM</option>'+
        '<option>1 PM</option>'+
        '<option>2 PM</option>'+
        '<option>3 PM</option>'+
        '<option>4 PM</option>'+
        '<option>5 PM</option>'+
        '<option>6 PM</option>'+
        '<option>7 PM</option>'+
        '<option>8 PM</option>'+
        '<option>9 PM</option>'+
        '<option>10 PM</option>'+
        '<option>11 PM</option>'+
        '<option>12 PM</option>');
});
</script>

<!-- DropZone | Documentation: http://dropzonejs.com -->
<script type="text/javascript" src="scripts/dropzone.js"></script>
</body>
</html>