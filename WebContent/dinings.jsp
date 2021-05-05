<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.ArrayList,java.util.*,com.javaee.bean.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312" http-equiv=Content-Type content="text/html">
<title>求珍小铺——全部商品</title>
<!--  -->

<link rel="stylesheet" href="css/style.css">
<!--  -->
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
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
<!--  -->
<link rel="stylesheet" href="css/main-color.css" id="colors">
<script>
	function showsub(v){
		document.placeform.selectedplace.value=v;
	}
</script>

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
                   	 欢迎来到求珍小铺！
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
                <div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
                    <div class="block-search-block">
                      
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


		<!-- Titlebar
================================================== -->
		

		<!-- Content
================================================== -->
		<div class="container">
		<div class="breadcrumb-trail breadcrumbs">
                <ul class="trail-items breadcrumb">
                    <li class="trail-item trail-begin">
                        <a href="index.jsp">
								<span>
									主页
								</span>
                        </a>
                    </li>
                    <li class="trail-item trail-end active">
							<span>
								 全部商品
							</span>
                    </li>
                </ul>
            </div>
			<div class="row">
			<div style="margin-left:15px;">
 				<h3 class="custom_blog_title" >
                        全部商品
                    </h3></div>
				<!-- Search -->
				
				<!-- Search Section / End -->


				<div class="col-md-12" style="background:white;">

					<!-- Sorting - Filtering Section -->
				
					<!-- Sorting - Filtering Section / End -->
						<div class="row">
							<!-- Listing Item -->
							<div class="col-lg-12 col-md-12">
								<div class="listing-item-container list-layout">
								
									<a href="./showctrl?action=todish&DiningId=2001" class="listing-item"> <!-- Image -->
									
									
										<div class="listing-item-image">
										
											<img src="images/products/标本.png" alt=""> <span
												class="tag">标本类专区</span>
										</div> <!-- Content -->
										<div class="listing-item-content">
											<div class="listing-badge now-open">营业中</div>
											<div class="listing-item-inner">
												<h3>标本类专区<i
														class="verified-icon"></i>
												</h3>
												<div>北京市海淀区学院路标本售卖中心</div>
												<div>
													电话：15069823145</div>
												
												<%-- <div style="visible:false" name="diningId"><%=dining.get(i).getDiningId()%></div> --%>
											</div>

											<span class="like-icon"></span>
											<div class="listing-item-details">
												本周点击量：151</div>
										</div>
									</a>
								</div>
							</div>
							
							<!-- Listing Item -->
							<div class="col-lg-12 col-md-12">
								<div class="listing-item-container list-layout">
								
									<a href="./showctrl?action=todish&DiningId=2002" class="listing-item"> <!-- Image -->
									
									
										<div class="listing-item-image">
										
											<img src="images/products/实习用品.png" alt=""> <span
												class="tag">地质用品</span>
										</div> <!-- Content -->
										<div class="listing-item-content">
											<div class="listing-badge now-open">营业中</div>
											<div class="listing-item-inner">
												<h3>地质用品<i
														class="verified-icon"></i>
												</h3>
												<div>北京市海淀区学院路地质用品专区</div>
												<div>
													电话：13743254226</div>
												
												<%-- <div style="visible:false" name="diningId"><%=dining.get(i).getDiningId()%></div> --%>
											</div>

											<span class="like-icon"></span>
											<div class="listing-item-details">
												本周点击量：199</div>
										</div>
									</a>
								</div>
							</div>
							
							<!-- Listing Item -->
							<div class="col-lg-12 col-md-12">
								<div class="listing-item-container list-layout">
								
									<a href="./showctrl?action=todish&DiningId=2003" class="listing-item"> <!-- Image -->
									
									
										<div class="listing-item-image">
										
											<img src="images/products/工艺品.png" alt=""> <span
												class="tag">工艺品</span>
										</div> <!-- Content -->
										<div class="listing-item-content">
											<div class="listing-badge now-open">营业中</div>
											<div class="listing-item-inner">
												<h3>工艺品<i
														class="verified-icon"></i>
												</h3>
												<div>北京市海淀区学院路工艺专区</div>
												<div>
													电话：13687763452</div>
												
												<%-- <div style="visible:false" name="diningId"><%=dining.get(i).getDiningId()%></div> --%>
											</div>

											<span class="like-icon"></span>
											<div class="listing-item-details">
												本周点击量：173</div>
										</div>
									</a>
								</div>
							</div>
							
							<!-- Listing Item -->
							<div class="col-lg-12 col-md-12">
								<div class="listing-item-container list-layout">
								
									<a href="./showctrl?action=todish&DiningId=2004" class="listing-item"> <!-- Image -->
									
									
										<div class="listing-item-image">
										
											<img src="images/products/其它.png" alt=""> <span
												class="tag">其他</span>
										</div> <!-- Content -->
										<div class="listing-item-content">
											<div class="listing-badge now-open">营业中</div>
											<div class="listing-item-inner">
												<h3>其他<i
														class="verified-icon"></i>
												</h3>
												<div>北京市海淀区学院路其他用品专区</div>
												<div>
													电话：13165238871</div>
												
												<%-- <div style="visible:false" name="diningId"><%=dining.get(i).getDiningId()%></div> --%>
											</div>

											<span class="like-icon"></span>
											<div class="listing-item-details">
												本周点击量：439</div>
										</div>
									</a>
								</div>
							</div>


					<!-- Pagination -->
					<div class="clearfix"></div>
				
					<!-- Pagination / End -->

				</div>

			</div>
		</div>

<br/><br/><br/>
		<!-- Footer
================================================== -->

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
		<!-- Footer / End -->


		<!-- Back To Top Button -->
		<div id="backtotop">
			<a href="#"></a>
		</div>


	</div>
	<!-- Wrapper / End -->


	<!-- Scripts
================================================== -->
	<script type="text/javascript" src="scripts/jquery-3.4.1.min.js"></script>
	<script type="text/javascript"
		src="scripts/jquery-migrate-3.1.0.min.js"></script>
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

	<!-- Google Autocomplete -->
	<script>
		function initAutocomplete() {
			var input = document.getElementById('autocomplete-input');
			var autocomplete = new google.maps.places.Autocomplete(input);

			autocomplete.addListener('place_changed', function() {
				var place = autocomplete.getPlace();
				if (!place.geometry) {
					return;
				}
			});

			if ($('.main-search-input-item')[0]) {
				setTimeout(function() {
					$(".pac-container").prependTo("#autocomplete-container");
				}, 300);
			}
		}
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?libraries=places&callback=initAutocomplete"></script>

	<!-- Style Switcher
================================================== -->
	<script src="scripts/switcher.js"></script>

	<div id="style-switcher">
		<h2>
			Color Switcher <a href="#"><i class="sl sl-icon-settings"></i></a>
		</h2>

		<div>
			<ul class="colors" id="color1">
				<li><a href="#" class="main" title="Main"></a></li>
				<li><a href="#" class="blue" title="Blue"></a></li>
				<li><a href="#" class="green" title="Green"></a></li>
				<li><a href="#" class="orange" title="Orange"></a></li>
				<li><a href="#" class="navy" title="Navy"></a></li>
				<li><a href="#" class="yellow" title="Yellow"></a></li>
				<li><a href="#" class="peach" title="Peach"></a></li>
				<li><a href="#" class="beige" title="Beige"></a></li>
				<li><a href="#" class="purple" title="Purple"></a></li>
				<li><a href="#" class="celadon" title="Celadon"></a></li>
				<li><a href="#" class="red" title="Red"></a></li>
				<li><a href="#" class="brown" title="Brown"></a></li>
				<li><a href="#" class="cherry" title="Cherry"></a></li>
				<li><a href="#" class="cyan" title="Cyan"></a></li>
				<li><a href="#" class="gray" title="Gray"></a></li>
				<li><a href="#" class="olive" title="Olive"></a></li>
			</ul>
		</div>

	</div>
	<!-- Style Switcher / End -->
</body>
</html>