<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.Dining,java.util.ArrayList,java.util.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312" http-equiv=Content-Type content="text/html">
<title>西餐吧----特色餐厅</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-color.css" id="colors">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/images/favicon.png" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
	rel="stylesheet">
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
<link rel="stylesheet"
	href="assets/js/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet" href="assets/css/jquery.scrollbar.min.css">
<link rel="stylesheet" href="assets/css/mobile-menu.css">
<link rel="stylesheet" href="assets/fonts/flaticon/flaticon.css">
<link rel="stylesheet" href="assets/css/style.css">
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
						<div class="header-message">欢迎来到我们的西餐厅，请尽情享受美味吧！</div>
					</div>
					<div class="top-bar-right">
						<div class="header-language">
							<div class="nozari-language nozari-dropdown">
								<a href="#" class="active language-toggle"
									data-nozari="nozari-dropdown"> <span> 你好！ 张三 </span>
								</a>
								<ul class="nozari-submenu">
									<li class="switcher-option"><a href="#"> <span>
												个人空间 </span>
									</a></li>
									<li class="switcher-option"><a href="#"> <span>
												退出登录 </span>
									</a></li>
								</ul>
							</div>
						</div>
						<ul class="header-user-links">
							<li><a href="login.jsp">登录 &nbsp;&nbsp; /&nbsp;&nbsp; 注册</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="main-header">
					<div class="row">
						<div
							class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
							<div class="logo">
								<a href="index.html"> <img src="assets/images/logo.jpg"
									alt="img">
								</a>
							</div>
						</div>
						<div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
							<div class="block-search-block">
								<form class="form-search form-search-width-category">
									<div class="form-content">
										<div class="category">
											<select title="cate" data-placeholder="All Categories"
												class="chosen-select" tabindex="1">
												<option value="United States">五道口</option>
												<option value="United Kingdom">六道口</option>
												<option value="Afghanistan">大钟寺</option>
												<option value="Aland Islands">知春路</option>
												<option value="Albania">西直门</option>
												<option value="Algeria">上地</option>
											</select>
										</div>
										<div class="inner">
											<input type="text" class="input" name="s" value=""
												placeholder="选择地址   搜索美食~">
										</div>
										<button class="btn-search" type="submit">
											<span class="icon-search"></span>
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="header-nav-container">
				<div class="container">
					<div class="header-nav-wapper main-menu-wapper">
						<div class="vertical-wapper block-nav-categori">
							<div class="block-title">
								<span class="icon-bar"> <span></span> <span></span> <span></span>
								</span> <span class="text">享受美好食光</span>
							</div>
						</div>
						<div class="header-nav">
							<div class="container-wapper">
								<ul class="nozari-clone-mobile-menu nozari-nav main-menu "
									id="menu-main-menu">
									<li class="menu-item"><a href="index.jsp"
										class="nozari-menu-item-title" title="Home">首页</a></li>
									<li class="menu-item"><a href="dining-list.html"
										class="nozari-menu-item-title" title="Shop">特色餐厅</a></li>
									<li class="menu-item  menu-item-has-children item-megamenu">
										<a href="#" class="nozari-menu-item-title" title="Pages">风味餐饮</a>
										<span class="toggle-submenu"></span>
										<div class="submenu mega-menu menu-page">
											<div class="row">
												<div
													class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
													<div class="nozari-custommenu default">
														<h2 class="widgettitle">Shop Pages</h2>
														<ul class="menu">
															<li class="menu-item"><a href="shoppingcart.html">Shopping
																	Cart</a></li>
															<li class="menu-item"><a href="checkout.html">Checkout</a>
															</li>
															<li class="menu-item"><a href="contact.html">Contact
																	us</a></li>
															<li class="menu-item"><a href="404page.html">404</a>
															</li>
															<li class="menu-item"><a href="login.html">Login/Register</a>
															</li>
														</ul>
													</div>
												</div>
												<div
													class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
													<div class="nozari-custommenu default">
														<h2 class="widgettitle">Product</h2>
														<ul class="menu">
															<li class="menu-item"><a
																href="productdetails-fullwidth.html">Product
																	Fullwidth</a></li>
															<li class="menu-item"><a
																href="productdetails-leftsidebar.html">Product left
																	sidebar</a></li>
															<li class="menu-item"><a
																href="productdetails-rightsidebar.html">Product
																	right sidebar</a></li>
														</ul>
													</div>
												</div>
												<div
													class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
												</div>
												<div
													class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
												</div>
											</div>
										</div>
									</li>
									<li class="menu-item  menu-item-has-children"><a
										href="inblog_right-siderbar.html"
										class="nozari-menu-item-title" title="Blogs">购物车</a> <span
										class="toggle-submenu"></span>
										<ul class="submenu">
											<li class="menu-item menu-item-has-children"><a href="#"
												class="nozari-menu-item-title" title="Blog Style">Blog
													Style</a> <span class="toggle-submenu"></span>
												<ul class="submenu">
													<li class="menu-item"><a href="bloggrid.html">Grid</a>
													</li>
													<li class="menu-item"><a href="bloglist.html">List</a>
													</li>
													<li class="menu-item"><a
														href="bloglist-leftsidebar.html">List Sidebar</a></li>
												</ul></li>
											<li class="menu-item menu-item-has-children"><a href="#"
												class="nozari-menu-item-title" title="Post Layout">Post
													Layout</a> <span class="toggle-submenu"></span>
												<ul class="submenu">
													<li class="menu-item"><a
														href="inblog_left-siderbar.html">Left Sidebar</a></li>
													<li class="menu-item"><a
														href="inblog_right-siderbar.html">Right Sidebar</a></li>
												</ul></li>
										</ul></li>
									<li class="menu-item"><a href="about.html"
										class="nozari-menu-item-title" title="About">我的订单</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<div class="header-device-mobile">
			<div class="wapper">
				<div class="item mobile-logo">
					<div class="logo">
						<a href="#"> <img src="assets/images/logo.png" alt="img">
						</a>
					</div>
				</div>
				<div class="item item mobile-search-box has-sub">
					<a href="#"> <span class="icon"> <i class="fa fa-search"
							aria-hidden="true"></i>
					</span>
					</a>
					<div class="block-sub">
						<a href="#" class="close"> <i class="fa fa-times"
							aria-hidden="true"></i>
						</a>
						<div class="header-searchform-box">
							<form class="header-searchform">
								<div class="searchform-wrap">
									<input type="text" class="search-input"
										placeholder="Enter keywords to search..."> <input
										type="submit" class="submit button" value="Search">
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="item mobile-settings-box has-sub">
					<a href="#"> <span class="icon"> <i class="fa fa-cog"
							aria-hidden="true"></i>
					</span>
					</a>
					<div class="block-sub">
						<a href="#" class="close"> <i class="fa fa-times"
							aria-hidden="true"></i>
						</a>
						<div class="block-sub-item">
							<h5 class="block-item-title">Currency</h5>
							<form class="currency-form nozari-language">
								<ul class="nozari-language-wrap">
									<li class="active"><a href="#"> <span> English
												(USD) </span>
									</a></li>
									<li><a href="#"> <span> French (EUR) </span>
									</a></li>
									<li><a href="#"> <span> Japanese (JPY) </span>
									</a></li>
								</ul>
							</form>
						</div>
					</div>
				</div>
				<div class="item menu-bar">
					<a class=" mobile-navigation  menu-toggle" href="#"> <span></span>
						<span></span> <span></span>
					</a>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
		<!-- Header Container / End -->


		<!-- Titlebar
================================================== -->
		<div id="titlebar" class="gradient">
			<div class="container">
				<div class="row">
					<div class="col-md-12">

						<h2>特色餐厅</h2>
						<span>地道西餐，“食”全“食”美</span>

						<!-- Breadcrumbs -->
						<nav id="breadcrumbs">
							<ul>
								<li><a href="#">首页</a></li>
								<li>特色餐厅</li>
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

				<!-- Search -->
				<div class="col-md-12">
					<div
						class="main-search-input gray-style margin-top-0 margin-bottom-10">

						<div class="main-search-input-item">
							<input type="text" placeholder="今天您想吃什么?" value="" />
						</div>

						<div class="main-search-input-item location">
							<div id="autocomplete-container">
								<input id="autocomplete-input" type="text" placeholder="选择定位">
							</div>
							<a href="#"><i class="fa fa-map-marker"></i></a>
						</div>

						<div class="main-search-input-item">
							<select data-placeholder="所有分类" class="chosen-select">
								<option>所有分类</option>
								<option>Shops</option>
								<option>Hotels</option>
								<option>Restaurants</option>
								<option>Fitness</option>
								<option>Events</option>
							</select>
						</div>

						<button class="button">一键查询</button>
					</div>
				</div>
				<!-- Search Section / End -->


				<div class="col-md-12">

					<!-- Sorting - Filtering Section -->
					<div class="row margin-bottom-25 margin-top-30">

						<div class="col-md-6">
							<!-- Layout Switcher -->
							<div class="layout-switcher">
								<a href="listings-grid-full-width.html" class="grid"><i
									class="fa fa-th"></i></a> <a href="#" class="list active"><i
									class="fa fa-align-justify"></i></a>
							</div>
						</div>

						<div class="col-md-6">
							<div class="fullwidth-filters">

								<!-- Panel Dropdown -->
								<div class="panel-dropdown wide float-right">
									<a href="#">More Filters</a>
									<div class="panel-dropdown-content checkboxes">

										<!-- Checkboxes -->
										<div class="row">
											<div class="col-md-6">
												<input id="check-a" type="checkbox" name="check"> <label
													for="check-a">Elevator in building</label> <input
													id="check-b" type="checkbox" name="check"> <label
													for="check-b">Friendly workspace</label> <input
													id="check-c" type="checkbox" name="check"> <label
													for="check-c">Instant Book</label> <input id="check-d"
													type="checkbox" name="check"> <label for="check-d">Wireless
													Internet</label>
											</div>

											<div class="col-md-6">
												<input id="check-e" type="checkbox" name="check"> <label
													for="check-e">Free parking on premises</label> <input
													id="check-f" type="checkbox" name="check"> <label
													for="check-f">Free parking on street</label> <input
													id="check-g" type="checkbox" name="check"> <label
													for="check-g">Smoking allowed</label> <input id="check-h"
													type="checkbox" name="check"> <label for="check-h">Events</label>
											</div>
										</div>

										<!-- Buttons -->
										<div class="panel-buttons">
											<button class="panel-cancel">Cancel</button>
											<button class="panel-apply">Apply</button>
										</div>

									</div>
								</div>
								<!-- Panel Dropdown / End -->

								<!-- Panel Dropdown-->
								<div class="panel-dropdown float-right">
									<a href="#">Distance Radius</a>
									<div class="panel-dropdown-content">
										<input class="distance-radius" type="range" min="1" max="100"
											step="1" value="50"
											data-title="Radius around selected destination">
										<div class="panel-buttons">
											<button class="panel-cancel">Disable</button>
											<button class="panel-apply">Apply</button>
										</div>
									</div>
								</div>
								<!-- Panel Dropdown / End -->

								<!-- Sort by -->
								<div class="sort-by">
									<div class="sort-by-select">
										<select data-placeholder="Default order"
											class="chosen-select-no-single">
											<option>Default Order</option>
											<option>Highest Rated</option>
											<option>Most Reviewed</option>
											<option>Newest Listings</option>
											<option>Oldest Listings</option>
										</select>
									</div>
								</div>
								<!-- Sort by / End -->

							</div>
						</div>

					</div>
					<!-- Sorting - Filtering Section / End -->
						<div class="row">
							<%
								ArrayList<Dining> dining = (ArrayList<Dining>) request.getAttribute("dininglist");
								for (int i = 0; i < dining.size(); i++) {
									
							%>
							<!-- Listing Item -->
							<div class="col-lg-12 col-md-12">
								<div class="listing-item-container list-layout">
									<a href="./showctrl?DiningId=<%=dining.get(i).getDiningId()%>" class="listing-item"> <!-- Image -->
										<div class="listing-item-image">
											<img src="<%=dining.get(i).getDiningPic()%>" alt=""> <span
												class="tag"><%=dining.get(i).getDiningName()%></span>
										</div> <!-- Content -->
										<div class="listing-item-content">
											<div class="listing-badge now-open">营业中</div>

											<div class="listing-item-inner">
												<h3><%=dining.get(i).getDiningName()%><i
														class="verified-icon"></i>
												</h3>
												<div><%=dining.get(i).getDiningAddress()%></div>
												<div>
													餐厅电话：<%=dining.get(i).getDiningPhone()%></div>
												<div class="star-rating" data-rating="4.5">
													<div class="rating-counter"></div>
												</div>
												<%-- <div style="visible:false" name="diningId"><%=dining.get(i).getDiningId()%></div> --%>
											</div>

											<span class="like-icon"></span>
											<div class="listing-item-details">
												本周点击量：<%=dining.get(i).getDiningClick()%></div>
										</div>
									</a>
								</div>
							</div>
							<%
								}
							%>
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
						<img class="footer-logo" src="images/logo.png" alt=""> <br>
						<br>
						<p>Morbi convallis bibendum urna ut viverra. Maecenas quis
							consequat libero, a feugiat eros. Nunc ut lacinia tortor morbi
							ultricies laoreet ullamcorper phasellus semper.</p>
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
							<span>12345 Little Lonsdale St, Melbourne</span> <br> Phone:
							<span>(123) 123-456 </span><br> E-Mail:<span> <a
								href="#">office@example.com</a>
							</span><br>
						</div>

						<ul class="social-icons margin-top-20">
							<li><a class="facebook" href="#"><i
									class="icon-facebook"></i></a></li>
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