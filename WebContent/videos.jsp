<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.User"
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
<title>视频推荐</title>
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
<!-- Header Container / End -->
<div class="clearfix"></div>
<!-- Header Container / End -->


<!-- Titlebar
================================================== -->
<div id="titlebar" class="gradient">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h2>视频推荐</h2><span>以岩石为骨,以土壤为肉,以草木或积雪为帽,因其涵 养水源,孕育江河,生养草木,包容生命,所以称之为博大</span>

				<!-- Breadcrumbs -->
				<nav id="breadcrumbs">
					<ul>
						<li><a href="#">主页</a></li>
						<li>视频推荐</li>
					</ul>
				</nav>

			</div>
		</div>
	</div>
</div>


<!-- Content
================================================== -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Amalfi Coast.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Beautiful mountains.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Deer on a field.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Desert island.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Doing a workout in the mountains.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Grossglockner Mountain.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Hiking through the mountains.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Lago Di Braies.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Man looking at the view.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Mountains in the fog.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Rocks by the lake.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Rocky mountains.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Stone sculpture in the mountains.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Stones by the waterfall.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12" style="height:600px;margin-top:100px">
					<div class="listing-item-container list-layout" style="height:600px">
						<a href="listings-single-page.html" class="listing-item" style="height:600px">
							<div class="listing-item-content" style="height:600px">
								<div class="video-container">
									<video poster="" loop autoplay muted>
										<source src="images/videos/Walking to the mountain top.mp4" type="video/mp4">
									</video>
								</div>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
			</div>

			<!-- Pagination -->
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-12">
					<!-- Pagination -->
					<div class="pagination-container margin-top-20 margin-bottom-40">
						<nav class="pagination">
							<ul>
								<li><a href="#" class="current-page">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#"><i class="sl sl-icon-arrow-right"></i></a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<!-- Pagination / End -->

		</div>

	</div>
</div>


<!-- Footer
================================================== -->
<div id="footer" class="margin-top-15">
	<!-- Main -->
	<div class="container">
		<div class="row">
			<div class="col-md-5 col-sm-6">
				<img class="footer-logo" src="images/logo.png" alt="">
				<br><br>
				<p>Morbi convallis bibendum urna ut viverra. Maecenas quis consequat libero, a feugiat eros. Nunc ut lacinia tortor morbi ultricies laoreet ullamcorper phasellus semper.</p>
			</div>

			<div class="col-md-4 col-sm-6 ">
				<h4>Helpful Links</h4>
				<ul class="footer-links">
					<li><a href="#">Login</a></li>
					<li><a href="#">Sign Up</a></li>
					<li><a href="#">My Account</a></li>
					<li><a href="#">Add Listing</a></li>
					<li><a href="#">Pricing</a></li>
					<li><a href="#">Privacy Policy</a></li>
				</ul>

				<ul class="footer-links">
					<li><a href="#">FAQ</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Our Partners</a></li>
					<li><a href="#">How It Works</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<div class="clearfix"></div>
			</div>		

			<div class="col-md-3  col-sm-12">
				<h4>Contact Us</h4>
				<div class="text-widget">
					<span>12345 Little Lonsdale St, Melbourne</span> <br>
					Phone: <span>(123) 123-456 </span><br>
					E-Mail:<span> <a href="#">office@example.com</a> </span><br>
				</div>

				<ul class="social-icons margin-top-20">
					<li><a class="facebook" href="#"><i class="icon-facebook"></i></a></li>
					<li><a class="twitter" href="#"><i class="icon-twitter"></i></a></li>
					<li><a class="gplus" href="#"><i class="icon-gplus"></i></a></li>
					<li><a class="vimeo" href="#"><i class="icon-vimeo"></i></a></li>
				</ul>

			</div>

		</div>
		
		<!-- Copyright -->
		<div class="row">
			<div class="col-md-12">
				<div class="copyrights">© 2019 Listeo. All Rights Reserved.</div>
			</div>
		</div>

	</div>

</div>
<!-- Footer / End -->


<!-- Back To Top Button -->
<div id="backtotop"><a href="#"></a></div>


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
	    setTimeout(function(){ 
	        $(".pac-container").prependTo("#autocomplete-container");
	    }, 300);
	}
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?libraries=places&callback=initAutocomplete"></script>

<!-- Style Switcher
================================================== -->
<script src="scripts/switcher.js"></script>

<div id="style-switcher">
	<h2>Color Switcher <a href="#"><i class="sl sl-icon-settings"></i></a></h2>
	
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