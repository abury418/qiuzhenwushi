<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.*,java.util.ArrayList,java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-color.css" id="colors">
<title>我的钱包</title>
</head>
<body>


<!-- Wrapper -->
<div id="wrapper">

<!-- Header Container
================================================== -->
<header id="header-container">
	 <%
                        	User user = new User();
                        	if(request.getSession().getAttribute("user")==null){
                        		user.setUserName("未登录！");
                        	}
                        	else{
                        		user=(User)request.getSession().getAttribute("user");
                        	}
                        %>
	<!-- Header -->
	<div id="header">
		<div class="container">
			
			<!-- Left Side Content -->
			<div class="left-side">
				
				<!-- Logo -->
				<div id="logo">
					<a href="index_1.jsp"><img src="images/logo.png" alt=""></a>
				</div>

				<!-- Mobile Navigation -->
				<div class="mmenu-trigger">
					<button class="hamburger hamburger--collapse" type="button">
						<span class="hamburger-box">
							<span class="hamburger-inner"></span>
						</span>
					</button>
				</div>

				<!-- Main Navigation -->
				<nav id="navigation" class="style-1">
					<ul id="responsive">

						<li><a class="current" href="index_1.jsp">主页</a>
						</li>
						<li><a href="#">科普专辑</a>
							<ul>
								<li><a href="./showctrl?action=toanimals">史前漫记</a></li>
								<li><a href="./showctrl?action=toearthgrow">地球演义</a></li>
								<li><a href="dinosaurColumn.jsp">恐龙专题</a></li>
								<li><a href="planetColumn.jsp">星球研究所</a></li>
								<li><a href="environmentPro.jsp">地球疗愈</a></li>
							</ul>
						</li>
						<li><a href="#">岩矿图鉴</a>
							<ul>
								<li><a href="./showctrl?action=tostones&SCategory=1">矿物</a></li>
								<li><a href="./showctrl?action=tostones&SCategory=2">岩石</a></li>
								<li><a href="./showctrl?action=tostones&SCategory=3">矿石</a></li>
								<li><a href="./showctrl?action=tostones&SCategory=4">化石</a></li>
								<li><a href="./showctrl?action=tostones&SCategory=5">矿床</a></li>
							</ul>
						</li>
						
						<li><a href="showctrl?action=tonews">地学前沿</a>
						</li>
						<li><a href="maps.jsp">展厅馆藏</a>
						<li><a href="movie.jsp">每日电影</a>
						<li><a href="./showctrl?action=tomyhome&UserId=<%=user.getUserId() %>">个人</a>
							<div class="mega-menu mobile-styles three-columns">

									<div class="mega-menu-section">
										<ul>
											<li class="mega-menu-headline">我的</li>
											<li><a href="./showctrl?action=tomyhome&UserId=<%=user.getUserId() %>"><i class="sl sl-icon-user"></i> 个人中心</a></li>
											<li><a href="my_messages.jsp"><i class="sl sl-icon-check"></i> 消息</a></li>
											<li><a href="./showctrl?action=tomyorders&UserId=<%=user.getUserId() %>"><i class="fa fa-calendar-check-o"></i> 我的订单</a></li>
											<li><a href="./makeorder?action=tomywallet&UserId=<%=user.getUserId() %>"><i class="sl sl-icon-wallet"></i> 我的钱包</a></li>
										</ul>
									</div>
		
									<div class="mega-menu-section">
										<ul>
											<li class="mega-menu-headline">收藏夹</li>
											<li><a href="./showctrl?action=tomycollects&UserId=<%=user.getUserId() %>"><i class="sl sl-icon-star"></i>岩矿图鉴</a></li>
											<li><a href="./showctrl?action=tomyarticles&UserId=<%=user.getUserId() %>"><i class="sl sl-icon-star"></i>文章收藏</a></li>
											<li><a href="./showctrl?action=tomyreviews&UserId=<%=user.getUserId() %>"><i class="sl sl-icon-note"></i> 笔记&评论</a></li>
										</ul>
									</div>

									<div class="mega-menu-section">
										<ul>
											<li class="mega-menu-headline">账户</li>
											<li><a href="my_profile.jsp"><i class="sl sl-icon-user"></i> 账户信息</a></li>
											<li><a href="index_1.jsp"><i class="sl sl-icon-power"></i> 退出登录</a></li>
										</ul>
									</div>
									
							</div>
						</li>
						
					</ul>
				</nav>
				<div class="clearfix"></div>
				<!-- Main Navigation / End -->
				
			</div>
			<!-- Left Side Content / End -->


			<!-- Right Side Content / End -->
			<div class="right-side">
				<div class="header-widget">
				<%
					if(user.getUserName()=="未登录"){
				%>
					<a href="login.jsp" class="sign-in popup-with-zoom-anim"><i class="sl sl-icon-login"></i> 去登录</a>
				<%
					}
					else{
				%>		
					<a href="./showctrl?action=tomyhome&UserId=<%=user.getUserId() %>" class="sign-in popup-with-zoom-anim"><i class="sl sl-icon-home"></i>欢迎， <%=user.getUserName() %></a>
				<%
					}
				%>
				
					
					<a href="index.jsp" class="button border with-icon">去商城  <i class="sl sl-icon-basket-loaded"></i></a>
				</div>
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
	<a href="#" class="dashboard-responsive-nav-trigger"><i class="fa fa-reorder"></i> Dashboard Navigation</a>

	<div class="dashboard-nav">
		<div class="dashboard-nav-inner">

			<ul data-submenu-title="Main">
				<li class="active"><a href="./showctrl?action=tomyhome&UserId=<%=user.getUserId() %>"><i class="sl sl-icon-settings"></i> 个人中心</a></li>
				<li><a href="my_messages.jsp"><i class="sl sl-icon-envelope-open"></i> 消息 <span class="nav-tag messages">2</span></a></li>
				<li><a href="./showctrl?action=tomyorders&UserId=<%=user.getUserId() %>"><i class="fa fa-calendar-check-o"></i> 我的订单</a></li>
				<li><a href="./makeorder?action=tomywallet&UserId=<%=user.getUserId() %>"><i class="sl sl-icon-wallet"></i> 我的钱包</a></li>
			</ul>
			
			<ul data-submenu-title="BOOKMARK">
				<li><a><i class="sl sl-icon-star"></i> 收藏夹</a>
					<ul>
						<li><a href="./showctrl?action=tomycollects&UserId=<%=user.getUserId() %>">岩矿图鉴<span class="nav-tag green">6</span></a></li>
						<li><a href="./showctrl?action=tomyarticles&UserId=<%=user.getUserId() %>">文章收藏<span class="nav-tag yellow">1</span></a></li>
					</ul>	
				</li>
				<li><a href="./showctrl?action=tomyreviews&UserId=<%=user.getUserId() %>"><i class="sl sl-icon-note"></i> 笔记&评论</a></li>
			</ul>	

			<ul data-submenu-title="Account">
				<li><a href="my_profile.jsp"><i class="sl sl-icon-user"></i> 账户信息</a></li>
				<li><a href="index.html"><i class="sl sl-icon-power"></i> 退出登录</a></li>
			</ul>
			
		</div>
	</div>
	<!-- Navigation / End -->

	<%
		request.setCharacterEncoding("utf-8"); 
		response.setCharacterEncoding("utf-8"); 
		float totalpay = 0;//总支出
		int totalitem = 0;//购物车内商品总数
		int restitem = 120;//购物车剩余容量
		ArrayList<Order> orderlist = (ArrayList<Order>) request.getAttribute("orderlist");
		ArrayList<CartItem> cartitemlist = (ArrayList<CartItem>) request.getAttribute("cartitemlist");
		//计算历史订单总支出
		for(int k=0;k<orderlist.size();k++){
			totalpay=totalpay+orderlist.get(k).getSumPrice();
		}
		//计算购物车内商品总数
		for(int k=0;k<cartitemlist.size();k++){
			totalitem=totalitem+cartitemlist.get(k).getDishNum();
		}
		restitem = 120 - totalitem;
    %>

	<!-- Content
	================================================== -->
	<div class="dashboard-content">

		<!-- Titlebar -->
		<div id="titlebar">
			<div class="row">
				<div class="col-md-12">
					<h2>我的钱包</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">主页</a></li>
							<li>个人中心</li>
							<li>我的钱包</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<!-- Content -->
		<div class="row">

			<!-- Item -->
			<div class="col-lg-4 col-md-6">
				<div class="dashboard-stat color-1">
					<div class="dashboard-stat-content wallet-totals"><h4><%=totalpay %></h4> <span>总支出 <strong class="wallet-currency">RMB</strong></span></div>
					<div class="dashboard-stat-icon"><i class="im im-icon-Money-2"></i></div>
				</div>
			</div>
			<!-- Item -->
			<div class="col-lg-4 col-md-6">
				<div class="dashboard-stat color-3">
					<div class="dashboard-stat-content wallet-totals"><h4><%=totalitem %></h4> <span>购物车内商品数</span></div>
					<div class="dashboard-stat-icon"><i class="im im-icon-Shopping-Cart"></i></div>
				</div>
			</div>

			<!-- Item -->
			<div class="col-lg-4 col-md-6">
				<div class="dashboard-stat color-2">
					<div class="dashboard-stat-content"><h4><%=orderlist.size() %></h4> <span>已完成订单数</span></div>
					<div class="dashboard-stat-icon"><i class="im im-icon-Money-Bag"></i></div>
				</div>
			</div>

		</div>

		<div class="row">
			
			<!-- Invoices -->
			<div class="col-lg-6 col-md-12">
				<div class="dashboard-list-box invoices with-icons margin-top-20">
					<h4>购物车 <div class="comission-taken">剩余容量: <strong><%=restitem %></strong></div></h4>
					<ul>
					<%
						for (int j = 0; j < cartitemlist.size(); j++) {		
					%>	
						<li><i class="list-box-icon sl sl-icon-basket"></i>
							<strong><%=cartitemlist.get(j).getDishName() %></strong>
							<ul>
								<li class="unpaid">$<%=cartitemlist.get(j).getSumPrice() %></li>
								<li>数量：<%=cartitemlist.get(j).getDishNum() %></li>
							</ul>
						</li>
					<%} %>
					</ul>
				</div>
			</div>
			
			<!-- Invoices -->
			<div class="col-lg-6 col-md-12">
				<div class="dashboard-list-box invoices with-icons margin-top-20">
					<h4>历史订单 </h4>
					<ul>
					<%
						for (int i = 0; i < orderlist.size(); i++) {		
					%>
						<li><i class="list-box-icon sl sl-icon-wallet"></i>
							<strong><%=orderlist.get(i).getDishName() %></strong>
							<ul>
								<li class="paid">金额: <span>$<%=orderlist.get(i).getSumPrice() %></span></li>
								<li>订单编号: #<%=orderlist.get(i).getOrderId() %></li>
								<li>日期: <%=orderlist.get(i).getOrderTime() %></li>
							</ul>
						</li>
					<%} %>

					</ul>
				</div>
			</div>

			<!-- Copyrights -->
			<div class="col-md-12">
				<div class="copyrights">© 求珍悟石</div>
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