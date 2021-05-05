<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.Dining,java.util.ArrayList,java.util.*,com.javaee.bean.*,com.javaee.bean.PageModel"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-color.css" id="colors">
<title>岩矿管理</title>
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
						<li><a href="admmanage?action=dishs"><i class="sl sl-icon-star"></i>文章管理</a></li>
						<li><a href="admmanage?action=dishs"><i class="sl sl-icon-star"></i>新闻管理</a></li>
						<li><a href="admmanage?action=dishs"><i class="sl sl-icon-star"></i>商品管理</a></li>
						<li><a href="admmanage?action=man_users"><i class="sl sl-icon-star"></i>用户管理</a></li>
					</ul>	
				</li>
				<li><a><i class="sl sl-icon-plus"></i>分类录入</a>
					<ul>
						<li><a href="admNewDining.jsp"><i class="sl sl-icon-star"></i>录入岩矿</a></li>
						<li><a href="admNewDish.jsp"><i class="sl sl-icon-star"></i>录入文章</a></li>
						<li><a href="admNewDish.jsp"><i class="sl sl-icon-star"></i>录入新闻</a></li>
						<li><a href="admNewUser.jsp"><i class="sl sl-icon-star"></i>录入商品</a></li>
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
					<h2>岩矿管理</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="adminIndex.jsp">首页</a></li>
							<li><a href="#">分类管理</a></li>
							<li>岩矿管理</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<div class="row">
			
			<!-- Listings -->
			<div class="col-lg-12 col-md-12">
				<div class="dashboard-list-box margin-top-0">
					<h4>岩矿列表</h4>
					<ul>
						<form method="post" action="" name="manageMinerals">
							<% 
							 request.setCharacterEncoding("utf-8"); 
						     response.setCharacterEncoding("utf-8"); 
						     PageModel<Stone> pageModel= (PageModel<Stone>)request.getAttribute("pageModel");
						     ArrayList<Stone> stone = pageModel.getList();
							for (int i = 0; i < stone.size(); i++) {
								String simg = stone.get(i).getSImage()+"1.jpg";
							%>
							
							<li>
							<div class="list-box-listing">
								<div class="list-box-listing-img"><a href="#"><img src="<%=simg%>" alt=""></a></div>
								<div class="list-box-listing-content">
									<div class="inner">
										<h3><a href="#">
										<input title="sname" type="text" name="sname"+"<%=stone.get(i).getSId()%>" value=<%=stone.get(i).getSName()%> style="broder:0px;border-color:#FFFFFF;background:transparent;height:40px;width:200px;padding-top:auto;padding-bottom:auto;margin-top:-20px">
										</a></h3>
										<span><input title="suse" type="text" name="suse<%=stone.get(i).getSId()%>" value=<%=stone.get(i).getSUse()%> style="border-color:#FFFFFF;background:transparent;height:40px;width:400px;padding-top:auto;padding-bottom:auto;margin-top:-20px" >
										</span>
										<label style="margin-top:-20px;margin-left:20px">成分:</label>
										<!-- <span> --><input title="scomponent" type="text" name="scomponent<%=stone.get(i).getSComponent()%>" value=<%=stone.get(i).getSComponent()%> style="border-color:#FFFFFF;background:transparent;height:40px;width:200px;padding-top:auto;padding-bottom:auto;margin-top:-50px;margin-left:60px">
										<!-- </span> -->
										<input title="sappearance" type="text" name="sappearance<%=stone.get(i).getSId()%>" value=<%=stone.get(i).getSAppearance()%> style="border-color:#FFFFFF;background:transparent;height:40px;width:200px;padding-top:auto;padding-bottom:auto;margin-top:-25px">
										
									</div>
								</div>
							</div>
							<div class="buttons-to-right">
							    <a href="#" class="button gray">
								<i class="sl sl-icon-note"></i>
								<input type="submit" id = <%=stone.get(i).getSId()%> value="编辑" name="Update" onclick="checkaction(1,this);" class="button gray" style="margin-right:-10px;width:50px;height:30px;font-size:14px"></a>
								<a href="#" class="button gray"><i class="sl sl-icon-close"></i> 
								<input type="submit" id = <%=stone.get(i).getSId()%> value="删除" name="Delete" onclick="checkaction(0,this);" class="button gray" style="margin-right:-10px;width:50px;height:30px;font-size:14px"></a>
							</div>
							<script>
							   function checkaction(v,now){
								   if(v==1){
									   document.manageMinerals.action="admmanage?action=updateminerals&SId="+now.id;
								   }
								   else{
									   document.manageMinerals.action="admmanage?action=updateminerals&SId="+now.id;
								   }
							   }
							</script>
							</li>
						<%} 
						%>
					<div align="left" style="margin-left:30px;margin-top:20px;margin-bottom:20px">
													<font color="#000000">&nbsp;共&nbsp <%=pageModel.getTotalPages() %> &nbsp页</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<font color="#000000">当前第</font>&nbsp <font color="#000000"><%=pageModel.getPageNo() %></font>&nbsp
													<font color="#000000">页</font>
												</div>
												<div align="right" style="margin-right:70px;margin-top:-50px;font-size:18px;">
													<a name="btnTopPage" id="btnTopPage" href="admmanage?action=pagelistmineral&pageNo=<%=pageModel.getPageNo() %>" title="首页">|&lt;&lt;
													</a>&nbsp; &nbsp; <a name="btnPreviousPage" id="btnPreviousPage"
														href="admmanage?action=pagelistmineral&pageNo=<%=pageModel.getPrev() %>" title="上页"> &lt; </a>&nbsp;&nbsp;  <a name="btnNextPage"
														id="btnNextPage" href="admmanage?action=pagelistmineral&pageNo=<%=pageModel.getNext() %>" title="下页"> &gt; </a>&nbsp; &nbsp; <a
														name="btnBottomPage" id="btnBottomPage" href="admmanage?action=pagelistmineral&pageNo=<%=pageModel.getBottom() %>" title="尾页">
														&gt;&gt;|</a>

												</div>
					</form>
				   </ul>
				</div>
			</div>


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