<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.Dining,java.util.ArrayList,java.util.*,com.javaee.bean.*,com.javaee.bean.PageModel"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-color.css" id="colors">
<title>餐厅管理</title>
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
					<h2>餐厅管理</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="adminindex.jsp">首页</a></li>
							<li><a href="admmanage?part=dinings">分类管理</a></li>
							<li>餐厅管理</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<div class="row">
			
			<!-- Listings -->
			<div class="col-lg-12 col-md-12">
				<div class="dashboard-list-box margin-top-0">
					<h4>餐厅列表</h4>
					<ul>
						<form method="post" action="" name="manageDinings">
							<% 
							 request.setCharacterEncoding("utf-8"); 
						     response.setCharacterEncoding("utf-8"); 
						     PageModel<Dining> pageModel= (PageModel<Dining>)request.getAttribute("pageModel");
						     ArrayList<Dining> dining = pageModel.getList();
							for (int i = 0; i < dining.size(); i++) {%>
							<li>
							<div class="list-box-listing">
								<div class="list-box-listing-img"><a href="#"><img src="<%=dining.get(i).getDiningPic()%>" alt=""></a></div>
								<div class="list-box-listing-content">
									<div class="inner">
										<h3><a href="#">
										<input title="diningname" type="text" name="diningname"+"<%=dining.get(i).getDiningId()%>" value=<%=dining.get(i).getDiningName()%> style="broder:0px;border-color:#FFFFFF;background:transparent;height:40px;width:200px;padding-top:auto;padding-bottom:auto;margin-top:-20px">
										</a></h3>
										<span><input title="diningaddress" type="text" name="diningaddress<%=dining.get(i).getDiningId()%>" value=<%=dining.get(i).getDiningAddress()%> style="border-color:#FFFFFF;background:transparent;height:40px;width:400px;padding-top:auto;padding-bottom:auto;margin-top:-20px" >
										</span>
										<label style="margin-top:-20px;margin-left:20px">配送费:</label>
										<!-- <span> --><input title="distribumoney" type="text" name="distributemoney<%=dining.get(i).getDiningId()%>" value=<%=dining.get(i).getDistributeMoney()%> style="border-color:#FFFFFF;background:transparent;height:40px;width:200px;padding-top:auto;padding-bottom:auto;margin-top:-50px;margin-left:60px">
										<!-- </span> -->
										<input title="diningphone" type="text" name="diningphone<%=dining.get(i).getDiningId()%>" value=<%=dining.get(i).getDiningPhone()%> style="border-color:#FFFFFF;background:transparent;height:40px;width:200px;padding-top:auto;padding-bottom:auto;margin-top:-25px">
										
									</div>
								</div>
							</div>
							<div class="buttons-to-right">
							    <a href="#" class="button gray">
								<i class="sl sl-icon-note"></i>
								<input type="submit" id = <%=dining.get(i).getDiningId()%> value="编辑" name="Update" onclick="checkaction(1,this);" class="button gray" style="margin-right:-10px;width:50px;height:30px;font-size:14px"></a>
								<a href="#" class="button gray"><i class="sl sl-icon-close"></i> 
								<input type="submit" id = <%=dining.get(i).getDiningId()%> value="删除" name="Delete" onclick="checkaction(0,this);" class="button gray" style="margin-right:-10px;width:50px;height:30px;font-size:14px"></a>
							</div>
							<script>
							   function checkaction(v,now){
								   if(v==1){
									   document.manageDinings.action="admmanage?action=updatedinings&DiningId="+now.id;
								   }
								   else{
									   document.manageDinings.action="admmanage?action=updatedinings&DiningId="+now.id;
								   }
							   }
							</script>
							</li>
						<%} 
						%>
					
					</form>
				   </ul>
				</div>
			</div>


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
</body>
</html>