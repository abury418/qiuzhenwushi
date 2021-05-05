<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.User"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>展厅导航</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <style>
    #container1 {
        overflow: hidden;
        width: 100%;
        height: 100%;
        margin: 0;
        font-family: "微软雅黑";
    }
    </style>
    <script src="//api.map.baidu.com/api?type=webgl&v=1.0&ak=Iifm1rN6XwgxZIyimqIfmp6m9rzGGTI2"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-color.css" id="colors">
</head>
<body>
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

<div class="fs-container">

	<div class="fs-inner-container content">
		<div class="fs-content">

			

		<section class="listings-container">
			<!-- Sorting / Layout Switcher -->

			<!-- Listings -->
			<div class="row fs-listings">
				
				<!-- Listing Item -->
				<div class="col-lg-6 col-md-12">
					<a href="#" class="listing-item-container" data-marker-id="1">
						<div class="listing-item">
							<img src="images/museums/1.jpg" alt="">

							<div class="listing-badge now-open">开放中</div>
							
							<div class="listing-item-content">
								<span class="tag">展厅推荐</span>
								<h3>中国地质大学（北京）博物馆<i class="verified-icon"></i></h3>
								<span>海淀区学院路29号中国地质大学（北京）逸夫实验楼</span>
							</div>
							<span class="like-icon"></span>
						</div>
					</a>
				</div>
				<!-- Listing Item / End -->

				<!-- Listing Item -->
				<div class="col-lg-6 col-md-12">
					<a href="#" class="listing-item-container" data-marker-id="2">
						<div class="listing-item">
							<img src="images/museums/2.jpg" alt="">
							<div class="listing-item-details">
								<ul>
									<li>开馆时间：9；00——16:30</li>
								</ul>
							</div>
							<div class="listing-item-content">
								<span class="tag">展厅推荐</span>
								<h3>中国地质博物馆</h3>
								<span>西四羊肉胡同15号</span>
							</div>
							<span class="like-icon"></span>
						</div>
					</a>
				</div>
				<!-- Listing Item / End -->		

				<!-- Listing Item -->
				<div class="col-lg-6 col-md-12">
					<a href="#" class="listing-item-container" data-marker-id="3">
						<div class="listing-item">
							<img src="images/museums/3.jpg" alt="">
							<div class="listing-item-details">
								<ul>
									<li>周一全天闭馆</li>
								</ul>
							</div>
							<div class="listing-item-content">
								<span class="tag">展厅推荐</span>
								<h3>房山世界地质公园博物馆</h3>
								<span>北京市房山区长沟镇六甲房</span>
							</div>
							<span class="like-icon"></span>
						</div>
					</a>
				</div>
				<!-- Listing Item / End -->

				<!-- Listing Item -->
				<div class="col-lg-6 col-md-12">
					<a href="#" class="listing-item-container" data-marker-id="4">
						<div class="listing-item">
							<img src="images/museums/4.jpg" alt="">

							<div class="listing-badge now-open">开放中</div>

							<div class="listing-item-content">
								<span class="tag">展厅推荐</span>
								<h3>中国地质博物馆-史前生物厅<i class="verified-icon"></i></h3>
								<span>北京市西城区中国地质博物馆(阜成门内大街南)</span>
							</div>
							<span class="like-icon"></span>
						</div>
					</a>
				</div>
				<!-- Listing Item / End -->

				<!-- Listing Item -->
				<div class="col-lg-6 col-md-12">
					<a href="#" class="listing-item-container" data-marker-id="5">
						<div class="listing-item">
							<img src="images/museums/5.jpg" alt="">
							<div class="listing-item-content">
								<span class="tag">展厅推荐</span>
								<h3>延庆地质博物馆</h3>
								<span>北京市延庆区妫水北街72号</span>
							</div>
							<span class="like-icon"></span>
						</div>
					</a>
				</div>
				<!-- Listing Item / End -->

				<!-- Listing Item -->
				<div class="col-lg-6 col-md-12">
					<a href="#" class="listing-item-container" data-marker-id="6">
						<div class="listing-item">
							<img src="images/museums/6.jpg" alt="">

							<div class="listing-badge now-closed">闭馆中</div>

							<div class="listing-item-content">
								<span class="tag">展厅推荐</span>
								<h3>黄松峪地质博物馆</h3>
								<span>黄松峪乡黑豆峪村京东大溶洞风景区</span>
							</div>
							<span class="like-icon"></span>
						</div>
					</a>
				</div>
				<!-- Listing Item / End -->
				
				<!-- Listing Item -->
				<div class="col-lg-6 col-md-12">
					<a href="#" class="listing-item-container" data-marker-id="6">
						<div class="listing-item">
							<img src="images/museums/7.jpg" alt="">

							<div class="listing-badge now-open">开放中</div>

							<div class="listing-item-content">
								<span class="tag">展厅推荐</span>
								<h3>北京大学地质博物馆</h3>
								<span>颐和园路5号北京大学内</span>
							</div>
							<span class="like-icon"></span>
						</div>
					</a>
				</div>
				<!-- Listing Item / End -->


			</div>
			<!-- Listings Container / End -->


			<!-- Pagination Container -->
			<div class="row fs-listings">
				<div class="col-md-12">

					<!-- Pagination -->
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12">
							<!-- Pagination -->
							<div class="pagination-container margin-top-15 margin-bottom-40">
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
					<div class="clearfix"></div>
					<!-- Pagination / End -->
					
					<!-- Copyrights -->
					<div class="copyrights margin-top-0">© 求珍悟石</div>

				</div>
			</div>
			<!-- Pagination Container / End -->
		</section>

		</div>
	</div>
	<div class="fs-inner-container map-fixed">

		<!-- Map -->
		<div id="map-container">
		    <div id="container1" ></div>
		</div>

	</div>
</div>
	
</body>
</html>
<script>
var map = new BMapGL.Map('container1');
map.centerAndZoom(new BMapGL.Point(116.358949,39.996725), 13);
map.enableScrollWheelZoom(true);

// 创建点标记
var marker1 = new BMapGL.Marker(new BMapGL.Point(116.358949,39.996725));
var marker2 = new BMapGL.Marker(new BMapGL.Point(116.378653,39.929518));
var marker3 = new BMapGL.Marker(new BMapGL.Point(115.880227,39.590562));
var marker4 = new BMapGL.Marker(new BMapGL.Point(116.378902,39.929495));
var marker5 = new BMapGL.Marker(new BMapGL.Point(115.987013,40.461423));
var marker6 = new BMapGL.Marker(new BMapGL.Point(117.265339,40.221313));
var marker7 = new BMapGL.Marker(new BMapGL.Point(116.321253,39.997738));

map.addOverlay(marker1);
map.addOverlay(marker2);
map.addOverlay(marker3);
map.addOverlay(marker4);
map.addOverlay(marker5);
map.addOverlay(marker6);
map.addOverlay(marker7);
// 创建信息窗口
var opts = {
    width: 200,
    height: 100,
    title: '中国地质大学（北京）博物馆'
};
var infoWindow = new BMapGL.InfoWindow('地址：北京市海淀区学院路29号逸夫楼10层<br/>电话：(010)82322204', opts);

var opts2 = {
	width: 200,
	height: 100,
	title: '中国地质博物馆'
};
var infoWindow2 = new BMapGL.InfoWindow('地址：西四羊肉胡同15号<br/>电话：(010)66557858', opts2);

var opts3 = {
	width: 200,
	height: 100,
	title: '房山世界地质公园博物馆'
};
var infoWindow3 = new BMapGL.InfoWindow('地址：北京市房山区长沟镇六甲房<br/>电话：(010)61368210', opts3);

var opts4 = {
	width: 200,
	height: 100,
	title: '中国地质博物馆-史前生物厅'
};
var infoWindow4 = new BMapGL.InfoWindow('地址：北京市西城区中国地质博物馆(阜成门内大街南)', opts4);

var opts5 = {
	width: 200,
	height: 100,
	title: '延庆地质博物馆'
};
var infoWindow5 = new BMapGL.InfoWindow('地址：北京市延庆区妫水北街72号<br/>电话：(010)81193303', opts5);

var opts6 = {
	width: 200,
	height: 100,
	title: '黄松峪地质博物馆'
};
var infoWindow6 = new BMapGL.InfoWindow('地址：黄松峪乡黑豆峪村京东大溶洞风景区', opts6);

var opts7 = {
	width: 200,
	height: 100,
	title: '北京大学地质博物馆'
};
var infoWindow7 = new BMapGL.InfoWindow('地址：颐和园路5号北京大学内<br/>电话：(010)62756088', opts7);
// 点标记添加点击事件
marker1.addEventListener('click', function () {
    map.openInfoWindow(infoWindow, new BMapGL.Point(116.358949,39.996725)); // 开启信息窗口
});
marker2.addEventListener('click', function () {
    map.openInfoWindow(infoWindow2, new BMapGL.Point(116.378653,39.929518)); // 开启信息窗口
});
marker3.addEventListener('click', function () {
    map.openInfoWindow(infoWindow3, new BMapGL.Point(115.880227,39.590562)); // 开启信息窗口
});
marker4.addEventListener('click', function () {
    map.openInfoWindow(infoWindow4, new BMapGL.Point(116.378902,39.929495)); // 开启信息窗口
});
marker5.addEventListener('click', function () {
    map.openInfoWindow(infoWindow5, new BMapGL.Point(115.987013,40.461423)); // 开启信息窗口
});
marker6.addEventListener('click', function () {
    map.openInfoWindow(infoWindow6, new BMapGL.Point(117.265339,40.221313)); // 开启信息窗口
});
marker7.addEventListener('click', function () {
    map.openInfoWindow(infoWindow7, new BMapGL.Point(116.321253,39.997738)); // 开启信息窗口
});
</script>