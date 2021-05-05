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
<title>我的订单</title>
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


	<!-- Content
	================================================== -->
	<div class="dashboard-content">

		<!-- Titlebar -->
		<div id="titlebar">
			<div class="row">
				<div class="col-md-12">
					<h2>我的订单</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">主页</a></li>
							<li><a href="#">个人中心</a></li>
							<li>我的订单</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<div class="row">
			
			<!-- Listings -->
			<div class="col-lg-12 col-md-12">
				<div class="dashboard-list-box margin-top-0">
					
					<!-- Booking Requests Filters  -->
					<div class="booking-requests-filter">

						<!-- Sort by -->
						<div class="sort-by">
							<div class="sort-by-select">
								<select data-placeholder="Default order" class="chosen-select-no-single" onchange="show_sub(this.value)" id="status">
									<option value="全部">所有订单</option>	
									<option value="已完成">已完成订单</option>
									<option value="未完成">未完成订单</option>
								</select>
							</div>
						</div>

						<!-- Date Range -->
						<div id="booking-date-range">
						    <span></span>
						</div>
					</div>

					<h4><%=user.getUserName() %>的订单</h4>
					<ul>
					<script>
						function show_sub(v){
							if(v=="全部"){
								finished.style.display="block";
								notfinished.style.display="block";
							}
							if(v=="已完成"){
								finished.style.display="block";
								notfinished.style.display="none";
							}
							if(v=="未完成"){
								finished.style.display="none";
								notfinished.style.display="block";
							}
							
						}
					</script>
					<div id="notfinished">
					<%
					
								ArrayList<Order> order = (ArrayList<Order>) request.getAttribute("mynotfinishorders");
								 for (int i = 0; i < order.size(); i++) {
	
							%>
						<li class="pending-booking">
							<div class="list-box-listing bookings">
								<div class="list-box-listing-img"><img src="<%=order.get(i).getDishPic() %>" alt=""></div>
								<div class="list-box-listing-content">
									<div class="inner">
										<h3><%=order.get(i).getDishName() %> <span class="booking-status unpaid">未完成</span></h3>

										<div class="inner-booking-list">
											<h5>订单创建日期: </h5>
											<ul class="booking-list">
												<li class="highlighted"><%=order.get(i).getOrderTime() %></li>
											</ul>
										</div>
													
										<div class="inner-booking-list">
											<h5>订单详情: </h5>
											<ul class="booking-list">
												<li class="highlighted">商品数： <%=order.get(i).getDishNum() %></li>
												<li class="highlighted">商家：<%=order.get(i).getDiningName() %></li>
											</ul>
										</div>		
													
										<div class="inner-booking-list">
											<h5>总金额: </h5>
											<ul class="booking-list">
												<li class="highlighted">$<%=order.get(i).getSumPrice() %></li>
											</ul>
										</div>		

										<div class="inner-booking-list">
											<h5>收货信息:</h5>
											<ul class="booking-list">
												<li><%=order.get(i).getUserName() %></li>
												<li><%=order.get(i).getPhoneNumber() %></li>
												<li><%=order.get(i).getAddress() %></li>
											</ul>
										</div>

									</div>
								</div>
							</div>
							<div class="buttons-to-right">
								<a href="./showctrl?action=canclethisorder&UserId=<%=user.getUserId() %>&OrderId=<%=order.get(i).getOrderId() %>" class="button gray reject"><i class="sl sl-icon-close"></i> 取消</a>
								<a href="./showctrl?action=finishthisorder&UserId=<%=user.getUserId() %>&OrderId=<%=order.get(i).getOrderId() %>" class="button gray approve"><i class="sl sl-icon-check"></i> 完成</a>
							</div>
						</li>
						<%} %>
						</div>
						<div id="finished">
						<%
					
								ArrayList<Order> oorder = (ArrayList<Order>) request.getAttribute("myfinishorders");
								 for (int i = 0; i < oorder.size(); i++) {
	
							%>
						<li class="approved-booking">
							<div class="list-box-listing bookings">
								<div class="list-box-listing-img"><img src="<%=oorder.get(i).getDishPic() %>" alt=""></div>
								<div class="list-box-listing-content">
									<div class="inner">
										<h3><%=oorder.get(i).getDishName() %> <span class="booking-status">已完成</span></h3>

										<div class="inner-booking-list">
											<h5>订单完成日期: </h5>
											<ul class="booking-list">
												<li class="highlighted"><%=oorder.get(i).getOrderTime() %></li>
											</ul>
										</div>
													
										<div class="inner-booking-list">
											<h5>订单详情: </h5>
											<ul class="booking-list">
												<li class="highlighted">商品数： <%=oorder.get(i).getDishNum() %></li>
												<li class="highlighted">商家：<%=oorder.get(i).getDiningName() %></li>
											</ul>
										</div>	
										
										<div class="inner-booking-list">
											<h5>总金额: </h5>
											<ul class="booking-list">
												<li class="highlighted">$<%=oorder.get(i).getSumPrice() %></li>
											</ul>
										</div>		

										<div class="inner-booking-list">
											<h5>收货信息:</h5>
											<ul class="booking-list">
												<li><%=oorder.get(i).getUserName() %></li>
												<li><%=oorder.get(i).getPhoneNumber() %></li>
												<li><%=oorder.get(i).getAddress() %></li>
											</ul>
										</div>

									</div>
								</div>
							</div>
						</li>
						<%} %>
						</div>
						
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

<!-- Date Range Picker - docs: http://www.daterangepicker.com/ -->
<script src="scripts/moment.min.js"></script>
<script src="scripts/daterangepicker.js"></script>

<script>
$(function() {

    var start = moment().subtract(29, 'days');
    var end = moment();

    function cb(start, end) {
        $('#booking-date-range span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
    }
    cb(start, end);
    $('#booking-date-range').daterangepicker({
    	"opens": "left",
	    "autoUpdateInput": false,
	    "alwaysShowCalendars": true,
        startDate: start,
        endDate: end,
        ranges: {
           'Today': [moment(), moment()],
           'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
           'Last 7 Days': [moment().subtract(6, 'days'), moment()],
           'Last 30 Days': [moment().subtract(29, 'days'), moment()],
           'This Month': [moment().startOf('month'), moment().endOf('month')],
           'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        }
    }, cb);

    cb(start, end);

});

// Calendar animation and visual settings
$('#booking-date-range').on('show.daterangepicker', function(ev, picker) {
	$('.daterangepicker').addClass('calendar-visible calendar-animated bordered-style');
	$('.daterangepicker').removeClass('calendar-hidden');
});
$('#booking-date-range').on('hide.daterangepicker', function(ev, picker) {
	$('.daterangepicker').removeClass('calendar-visible');
	$('.daterangepicker').addClass('calendar-hidden');
});
</script>



</body>
</html>