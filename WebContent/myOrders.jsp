<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.User,com.javaee.bean.Order,java.util.ArrayList,java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<!-- CSS
================================================== -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-color.css" id="colors">
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
<title>历史订单</title>

</head>
<body>
	
<!-- Wrapper -->
<div id="wrapper">

<!-- Header Container
================================================== -->
<header class="header style7">
    <div class="top-bar">
        <div class="container">
            <div class="top-bar-left">
                <div class="header-message">
                   	  欢迎来到求珍小铺
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
                                <a href="./showctrl?action=tomyhome&UserId=<%=user.getUserId() %>">
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
                        <a href="index.jsp">
                            <img src="images/logo.png" alt="img" style="width:20%;height:20%;margin-left:30px">
                        </a>
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
                        <span class="text">求珍小铺</span>
                    </div>
                </div>
                <div class="header-nav">
                    <div class="container-wapper">
                        <ul class="nozari-clone-mobile-menu nozari-nav main-menu " id="menu-main-menu">
                            <li class="menu-item">
                                <a href="index.jsp" class="nozari-menu-item-title" title="Home">首页</a>
                            </li>
                            <li class="menu-item">
                                <a href="loginctrl?action=todinings" class="nozari-menu-item-title" title="Shop">全部商品</a>
                                
                            </li>
                            <li class="menu-item  ">
                                <a href="map.jsp" class="nozari-menu-item-title" title="Pages">按分类查看</a>
                       
                            </li>
                            <li class="menu-item  ">
                              
                                    <a href="loginctrl?action=tomycart&UserId=<%=user.getUserId() %>" class="nozari-menu-item-title" title="About">购物车</a>
                           
                              
                            </li>
                            <li class="menu-item">
                            <!-- gotomycart -->
  
                          
                             
                                  <a href="./loginctrl?action=showorders&UserId=<%=user.getUserId() %>" class="nozari-menu-item-title"
                                   title="Blogs">我的订单</a>
                               
                        
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="clearfix"></div>
<!-- Header Container / End -->


<!-- Dashboard -->
<div id="" style="margin-top:-20px">
	<!-- Content
	================================================== -->
	<div class="">
	
		<!-- Titlebar -->
	 <div class="breadcrumb-trail breadcrumbs" style="margin-left:370px;">
                <ul class="trail-items breadcrumb">
                    <li class="trail-item trail-begin">
                        <a href="">
								<span>
									主页
								</span>
                        </a> 
                    </li>
                    <li class="trail-item trail-end active">
							<span>
								历史订单
							</span>
                    </li>
                </ul>
            </div>
            <div class="row" style="margin-left:350px;"> 
                <div class="main-content-cart main-content col-sm-12">
                    <h3 class="custom_blog_title">
                      历史订单
                    </h3>
				
			</div>
			</div>
			
		
		<div class="container" >
		<div class="row">
			
			<!-- Listings -->
			<div class="col-lg-12 col-md-12">
				<div class="dashboard-list-box margin-top-0">
					
					<!-- Booking Requests Filters  -->
					<div class="booking-requests-filter">

						<!-- Sort by -->
						<div class="sort-by">
							<div class="sort-by-select">
								<select data-placeholder="Default order" class="chosen-select-no-single" id="status" onchange="showsub(this.value)">
									<option value="全部">全部</option>	
									<option value="已完成">已完成</option>
									<option value="未完成">未完成</option>
								</select>
							</div>
						</div>

					</div>

					<h4><%=user.getUserName() %>,欢迎查看您的历史订单</h4>
					<ul> 
					<script>
						function showsub(v){
							if(v=="全部"){
								finish.style.display="block";
								notfinish.style.display="block";
							}
							if(v=="已完成"){
								finish.style.display="block";
								notfinish.style.display="none";
							}
							if(v=="未完成"){
								finish.style.display="none";
								notfinish.style.display="block";
							}
							
						}
					</script>
					<div id="finish">
					<%
					
								ArrayList<Order> order = (ArrayList<Order>) request.getAttribute("finishorders");
								 for (int i = 0; i < order.size(); i++) {
	
							%>
						<li class="pending-booking">
							<div class="list-box-listing bookings">
								<div class="list-box-listing-img"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=120" alt=""></div>
								<div class="list-box-listing-content">
									<div class="inner">
										<h3><%=order.get(i).getOrderId() %><span class="booking-status">已完成</span></h3>

										<div class="inner-booking-list">
											<h5 style="font-size:16px">订单日期:</h5>
											<ul class="booking-list">
												<li class="highlighted"><%=order.get(i).getOrderTime()%></li>
											</ul>
										</div>
													
										<div class="inner-booking-list">
											<h5 style="font-size:16px">菜品:</h5>
											<ul class="booking-list">
												<li class="highlighted"><%=order.get(i).getDishName()%></li>
												<li class="highlighted"><%=order.get(i).getDishNum()%></li> 
											</ul>
										</div>		 
													
										<div class="inner-booking-list">
											<h5 style="font-size:16px">订单金额:</h5>
											<ul class="booking-list">
												<li class="highlighted"><%=order.get(i).getSumPrice()%></li> 
											</ul>
										</div>		

										<div class="inner-booking-list">
											<h5 style="font-size:16px">收货信息:</h5>
											<ul class="booking-list">
											    <li><%=order.get(i).getUserName()%></li>
												<li><%=order.get(i).getPhoneNumber()%></li>
												<li><%=order.get(i).getAddress()%></li> 
												
											</ul>
										</div>
									</div>
								</div>
							</div>
							
						</li> 
					<%} %>  
					</div>
					<div id="notfinish">
					<%
					
								ArrayList<Order> oorder = (ArrayList<Order>) request.getAttribute("notfinishorders");
								 for (int i = 0; i < oorder.size(); i++) {
	
							%>
						<li class="approved-booking">
							<div class="list-box-listing bookings">
								<div class="list-box-listing-img"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=120" alt=""></div>
								<div class="list-box-listing-content">
									<div class="inner">
										<h3><%=oorder.get(i).getDiningName() %><span class="booking-status unpaid">未完成</span></h3>

										<div class="inner-booking-list">
											<h5 style="font-size:16px">订单日期:</h5>
											<ul class="booking-list">
												<li class="highlighted"><%=oorder.get(i).getOrderTime() %></li>
											</ul>
										</div>
													
										<div class="inner-booking-list">
											<h5 style="font-size:16px">菜品:</h5>
											<ul class="booking-list">
												<li class="highlighted"><%=oorder.get(i).getDishName()%></li>
												<li class="highlighted"><%=oorder.get(i).getDishNum()%></li> 
											</ul>
										</div>		
										
										<div class="inner-booking-list">
											<h5 style="font-size:16px">订单金额:</h5>
											<ul class="booking-list">
												<li class="highlighted"><%=oorder.get(i).getSumPrice()%></li> 
											</ul>
										</div>	

										<div class="inner-booking-list">
											<h5 style="font-size:16px">收货信息:</h5>
											<ul class="booking-list">
											    <li><%=oorder.get(i).getUserName()%></li>
												<li><%=oorder.get(i).getPhoneNumber()%></li>
												<li><%=oorder.get(i).getAddress()%></li> 
												
											</ul>
										</div>


									</div>
								</div>
							</div>
							<div class="buttons-to-right">
								<a href="./loginctrl?action=cancleorders&UserId=<%=user.getUserId() %>&OrderId=<%=oorder.get(i).getOrderId() %>" class="button gray reject"><i class="sl sl-icon-close"></i> 取消</a>
								<a href="./loginctrl?action=sureorders&UserId=<%=user.getUserId() %>&OrderId=<%=oorder.get(i).getOrderId() %>" class="button gray approve"><i class="sl sl-icon-check"></i> 确认</a>
							</div>
						</li>
						<%} %>
</div>

						
					</ul>
				</div>
			</div>


			<!-- Copyrights -->
			<div class="col-md-12">
				<div class="copyrights"></div>
			</div>
		</div>
	</div>
	</div>
	<!-- Content / End -->


</div>
<!-- Dashboard / End -->

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