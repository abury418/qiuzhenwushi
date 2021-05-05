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

<title>求珍悟石</title>

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


<!-- Banner data-background-image="images/main-search-background-01.jpg"
================================================== -->

<div class="main-search-container"  >
	<div class="main-search-inner">

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>探索地质之美</h2>
					<h4>山川湖海，星辰河流，在你滑动的指尖</h4>

					<div class="main-search-input">

						<div class="main-search-input-item">
							<input type="text" placeholder="想找什么?" value=""/>
						</div>

						<div class="main-search-input-item">
							<select data-placeholder="All Categories" class="chosen-select" >
								<option>所有分类</option>	
								<option>矿物</option>
								<option>岩石</option>
								<option>矿石</option>
								<option>化石</option>
								<option>矿床</option>
							</select>
						</div>

						<button class="button" onclick="window.location.href='listings-half-screen-map-list.html'">搜索</button>

					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- Video -->
	<div class="video-container">
		<video poster="" loop autoplay muted>
			<source src="images/videos/Rocky mountains.mp4" type="video/mp4">
		</video>
	</div>
	
</div>
<!-- Container -->
<div class="container">
	<div class="row">

		<div class="col-md-12">
			<h3 class="headline centered margin-bottom-35 margin-top-70">
				<strong class="headline-with-separator">科普专辑</strong>
				<span>关于地球那些不得不说的事……</span></h3>
		</div>
		
		<div class="col-md-6">

			<!-- Image Box -->
			<a href="./showctrl?action=toanimals" class="img-box alternative-imagebox" data-background-image="images/popular-location-01.jpg">
				<div class="img-box-content visible">
					<h4>史前漫记 </h4>
				</div>
			</a>

		</div>	
			
		<div class="col-md-6">

			<!-- Image Box -->
			<a href="./showctrl?action=toearthgrow" class="img-box alternative-imagebox" data-background-image="images/popular-location-02.jpg">
				<div class="img-box-content visible">
					<h4>地球演义</h4>
				</div>
			</a>

		</div>	

		<div class="col-md-4">
			<!-- Image Box -->
			<a href="dinosaurColumn.jsp" class="img-box alternative-imagebox" data-background-image="images/popular-location-03.jpg">
				<div class="img-box-content visible">
					<h4>恐龙专题 </h4>
				</div>
			</a>
		</div>
			
		<div class="col-md-4">
			<!-- Image Box -->
			<a href="planetColumn.jsp" class="img-box alternative-imagebox" data-background-image="images/popular-location-06.jpg">
				<div class="img-box-content visible">
					<h4>星球研究所</h4>
				</div>
			</a>
		</div>
			
		<div class="col-md-4">
			<!-- Image Box -->
			<a href="environmentPro.jsp" class="img-box alternative-imagebox" data-background-image="images/popular-location-05.jpg">
				<div class="img-box-content visible">
					<h4>地球疗愈</h4>
				</div>
			</a>
		</div>

	</div>
	<div class="col-md-12 centered-content">
		<a href="showctrl?action=toarticles" class="button border with-icon" >查看全部</a>
	</div>
</div>
<!-- Container / End -->



<!-- Content  poster="images/main-search-video-poster.jpg"
================================================== -->
<div class="container">
	<div class="row">

		<div class="col-md-12">
			<h3 class="headline centered margin-top-75">
				岩矿之书
				<span>一枚石头，就是一个 <i>宇宙</i> ……</span>
			</h3>
		</div>

	</div>
</div>


<!-- Categories Carousel -->
<div class="fullwidth-carousel-container margin-top-25">
	<div class="fullwidth-slick-carousel category-carousel">

		<!-- Item -->
		<div class="fw-carousel-item">
			<div class="category-box-container">
				<a href="./showctrl?action=tostones&SCategory=1" class="category-box" data-background-image="images/category-box-01.jpg">
					<div class="category-box-content">
						<h3>矿物</h3>
						<span>64  条</span>
					</div>
					<span class="category-box-btn">进入</span>
				</a>
			</div>
		</div>

		<!-- Item -->
		<div class="fw-carousel-item">
			<div class="category-box-container">
				<a href="./showctrl?action=tostones&SCategory=2" class="category-box" data-background-image="images/category-box-02.jpg">
					<div class="category-box-content">
						<h3>岩石</h3>
						<span>67 条</span>
					</div>
					<span class="category-box-btn">进入</span>
				</a>
			</div>
		</div>

		<!-- Item -->
		<div class="fw-carousel-item">
			<div class="category-box-container">
				<a href="./showctrl?action=tostones&SCategory=3" class="category-box" data-background-image="images/category-box-03.jpg">
					<div class="category-box-content">
						<h3>矿石</h3>
						<span>27 条</span>
					</div>
					<span class="category-box-btn">进入</span>
				</a>
			</div>
		</div>

		<!-- Item -->
		<div class="fw-carousel-item">
			<div class="category-box-container">
				<a href="./showctrl?action=tostones&SCategory=4" class="category-box" data-background-image="images/category-box-04.jpg">
					<div class="category-box-content">
						<h3>化石</h3>
						<span>22 条</span>
					</div>
					<span class="category-box-btn">进入</span>
				</a>
			</div>
		</div>

		<!-- Item -->
		<div class="fw-carousel-item">
			<div class="category-box-container">
				<a href="./showctrl?action=tostones&SCategory=5" class="category-box" data-background-image="images/category-box-05.jpg">
					<div class="category-box-content">
						<h3>矿床</h3>
						<span>130 条</span>
					</div>
					<span class="category-box-btn">进入</span>
				</a>
			</div>
		</div>

	</div>
</div>
<!-- Categories Carousel / End -->




<section class="fullwidth padding-top-75 padding-bottom-30" data-background-color="#fff">
	<!-- Info Section -->
	<div class="container">

		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h3 class="headline centered headline-extra-spacing">
					<strong class="headline-with-separator">地球年代纪</strong>
					<span class="margin-top-25">来自地球45.5亿年的情书——</span>
				</h3>
			</div>
		</div>

	</div>
	<!-- Info Section / End -->

	<!-- Categories Carousel -->
	<div class="fullwidth-carousel-container margin-top-20 no-dots">
		
		<div class="testimonial-carousel testimonials">
			<!-- Item -->
			<div class="fw-carousel-review">
				<div class="testimonial-box">
					<div class="testimonial">
						在寒武纪之前，地球早已经形成了，只是在漫长的几十亿年中一片死寂，那时地球上还没有出现门类众多的生物。尽管前寒武纪占了地史中大约八分之七的时间，但人们对这段时期的了解相当少。
						许多前寒武纪时期的岩石已经严重变质，使其起源变得隐晦不明。而其他的不是已经腐蚀毁坏，就是还埋藏在显生宙地层底下。
					</div>
				<div class="testimonial-author">
					<img src="images/happy-client-01.jpg" alt="">
					<h4>前寒武纪</h4>
				</div>
			</div>
			</div>
		
			<!-- Item -->
			<div class="fw-carousel-review">
				<div class="testimonial-box">
					<div class="testimonial">
						寒武纪是现代生物的开始阶段，是地球上现代生命开始出现、发展的时期。
						现生动物几乎所有类群祖先在内的大量多细胞生物突然出现，被称为“寒武纪生命大爆炸”
						。带壳、具骨骼的海洋无脊椎动物趋向繁荣；在潮湿的低地，可能分布有苔藓和地衣类的低等植物。
						寒武纪没有真正的陆生生物，大陆上缺乏生气、荒凉一片。
						
					</div>
				<div class="testimonial-author">
					<img src="images/happy-client-02.jpg" alt="">
					<h4>寒武纪 <span>（古生代）</span></h4>
				</div>
			</div>
			</div>
			<!-- Item -->
			<div class="fw-carousel-review">
				<div class="testimonial-box">
					<div class="testimonial">
						奥陶纪气候温和，浅海广布，世界许多地区（包括我国大部分地区）都被浅海海水掩盖，海生生物空前发展，较寒武纪更为繁盛。
						低等海生植物继续发展，淡水植物据推测可能在奥陶纪也已经出现。奥陶纪时期的海洋生物是现代动物的最早祖先。
						这一时期仍然没有任何动物种类生活在陆地上。
					</div>
				</div>
				<div class="testimonial-author">
					<img src="images/happy-client-03.jpg" alt="">
					<h4>奥陶纪 <span>（古生代）</span></h4>
				</div>
			</div>
			
			<!-- Item -->
			<div class="fw-carousel-review">
				<div class="testimonial-box">
					<div class="testimonial">
						志留纪的生物面貌与奥陶纪相比，有了进一步的发展和变化。海生无脊椎动物在志留纪时仍占重要地位，
						但各门类的种属更替和内部组分都有所变化。植物方面除了海生藻类仍然繁盛以外，晚志留世末期，陆生植物中的裸蕨植物首次出现，
						植物终于从水中开始向陆地发展，这是生物演化的又一重大事件。
					</div>
				</div>
				<div class="testimonial-author">
					<img src="images/happy-client-04.jpg" alt="">
					<h4>志留纪 <span>（古生代）</span></h4>
				</div>
			</div>
			
			<!-- Item -->
			<div class="fw-carousel-review">
				<div class="testimonial-box">
					<div class="testimonial">
						泥盆纪是地球生物界发生巨大变革的时期，由海洋向陆地大规模进军是这一时期最突出、最重要的生物演化事件。
						泥盆纪早期裸蕨类繁荣。中期后，腕足类和珊瑚发育、原始菊石、昆虫出现。
						晚期原始两栖类、迷齿类出现，蕨类植物和原始裸子植物出现；无颌类趋于灭绝。
					</div>
				</div>
				<div class="testimonial-author">
					<img src="images/happy-client-05.jpg" alt="">
					<h4>泥盆纪 <span>（古生代）</span></h4>
				</div>
			</div>
			
			<!-- Item -->
			<div class="fw-carousel-review">
				<div class="testimonial-box">
					<div class="testimonial">
						石炭纪是地壳运动非常活跃的时期，因而古地理的面貌有着极大的变化。这个时期气候分异现象又十分明显，
						北方古大陆为温暖潮湿的聚煤区，冈瓦纳大陆却为寒冷大陆冰川沉积环境。气候分带导致了动、植物地理分区的形成。
						石炭纪陆生生物飞跃发展，海生无脊椎动物也有所更新。
					</div>
				</div>
				<div class="testimonial-author">
					<img src="images/happy-client-06.jpg" alt="">
					<h4>石炭纪 <span>（古生代）</span></h4>
				</div>
			</div>
			
			<!-- Item -->
			<div class="fw-carousel-review">
				<div class="testimonial-box">
					<div class="testimonial">
						二叠纪（Permian period）是古生代的最后一个纪，也是重要的成煤期。
						二叠纪的地壳运动比较活跃，古板块间的相对运动加剧，世界范围内的许多地槽封闭并陆续地形成褶皱山系，
						古板块间逐渐拚接形成联合古大陆。陆地面积的进一步扩大，海洋范围的缩小，预示着生物发展史上一个新时期的到来。
					</div>
				</div>
				<div class="testimonial-author">
					<img src="images/happy-client-07.jpg" alt="">
					<h4>二叠纪 <span>（古生代）</span></h4>
				</div>
			</div>
			
			<!-- Item -->
			<div class="fw-carousel-review">
				<div class="testimonial-box">
					<div class="testimonial">
						虽然这段时间的岩石标志非常明显和清晰，
						其开始和结束的准确时间却如同其它古远的地质时代无法非常精确地被确定，其误差在正负数百万年。
						由于三叠纪以一次灭绝事件开始，因此其生物开始时分化很厉害。六放珊瑚亚纲是这时候出现的，
						第一批被子植物和第一种会飞的脊椎动物（翼龙）可能也是这时候出现的。
					</div>
				</div>
				<div class="testimonial-author">
					<img src="images/happy-client-08.jpg" alt="">
					<h4>三叠纪 <span>（中生代）</span></h4>
				</div>
			</div>
			
			<!-- Item -->
			<div class="fw-carousel-review">
				<div class="testimonial-box">
					<div class="testimonial">
						整个侏罗纪时期，大多数时期处于温暖和潮湿。当时繁盛的森林植被，形成了如今澳大利亚和南极洲丰富的煤炭资源。
						尽管那时有局部的干旱地区，但绝大多数盘古大陆，均处于郁郁葱葱的绿洲。劳亚大陆和南部的冈瓦纳大陆生物群，在许多方面，仍然十分独特，
						动物群具备了较多的洲际色彩。
						</div>
				</div>
				<div class="testimonial-author">
					<img src="images/happy-client-09.jpg" alt="">
					<h4>侏罗纪 <span>（中生代）</span></h4>
				</div>
			</div>
			
			<!-- Item -->
			<div class="fw-carousel-review">
				<div class="testimonial-box">
					<div class="testimonial">
						白垩纪时期，大陆被海洋分开，地球变得温暖、干旱。最大的恐龙出现时期，许多新的恐龙种类开始出现，
						恐龙仍然统治着陆地，翼龙在天空中滑翔，巨大的海生爬行动物统治着浅海。最早的蛇类、蛾、和蜜蜂以及许多新的小型哺乳动物也出现了。
						被子植物也出现于此时期。
					</div>
				</div>
				<div class="testimonial-author">
					<img src="images/happy-client-10.jpg" alt="">
					<h4>白垩纪 <span>（中生代）</span></h4>
				</div>
			</div>
			
			<!-- Item -->
			<div class="fw-carousel-review">
				<div class="testimonial-box">
					<div class="testimonial">
						中生代后的新生代分为两部分：第三纪、第四纪。第三纪自距今6500万年至2万年前，是高等哺乳类动物和类人猿出现的世纪。
						堪称“现代”的新生代第四纪，也是今天我们能够在地表上能够以肉眼看到的各种事物，如火山、湖泊、河流、丘陵、盆地、平原开始出现的世纪。
						特别在更新世，地球上反复发生着对以后诞生的人类产生重大影响的变动。
					</div>
				</div>
				<div class="testimonial-author">
					<img src="images/happy-client-11.jpg" alt="">
					<h4>第三纪、第四纪 <span>（新生代）</span></h4>
				</div>
			</div>
		</div>
	</div>
	<!-- Categories Carousel / End -->

</section>


<!-- Recent Blog Posts -->
<section class="fullwidth border-top margin-top-70 padding-top-75 padding-bottom-75" data-background-color="#fff">
	<div class="container">

		<div class="row">
			<div class="col-md-12">
				<h3 class="headline centered margin-bottom-45">
					地学前沿
				</h3>
			</div>
		</div>

		<div class="row">
			<!-- Blog Post Item -->
			<div class="col-md-4">
				<a href="showctrl?action=tonews" class="blog-compact-item-container">
					<div class="blog-compact-item">
						<img src="images/news/郑永飞文章.jpg" alt="">
						<span class="blog-item-tag">郑永飞</span>
						<div class="blog-compact-item-content">
							<ul class="blog-post-tags">
								<li>2021.4.6</li>
							</ul>
							<h3>华北中生代镁铁质岩浆作用与克拉通减薄和破坏</h3>
							<p>克拉通指古老的、自形成以来一直保持稳定的大陆岩石圈构造体系。它包括古老的大陆地壳及其下伏的岩石圈地幔，其厚度一般可高达200至300公里。</p>
						</div>
					</div>
				</a>
			</div>
			<!-- Blog post Item / End -->

			<!-- Blog Post Item -->
			<div class="col-md-4">
				<a href="pages-blog-post.html" class="blog-compact-item-container">
					<div class="blog-compact-item">
						<img src="images/news/陈发虎文章.jpg" alt="">
						<span class="blog-item-tag">陈发虎</span>
						<div class="blog-compact-item-content">
							<ul class="blog-post-tags">
								<li>2021.4.7</li>
							</ul>
							<h3>东亚夏季风减弱诱发我国西北干旱区降水增加</h3>
							<p>全球变暖下，尤其是近几十年，我国西北干旱区降水增加和气候变湿趋势是学术界关注的重要科学问题。</p>
						</div>
					</div>
				</a>
			</div>
			<!-- Blog post Item / End -->

			<!-- Blog Post Item -->
			<div class="col-md-4">
				<a href="pages-blog-post.html" class="blog-compact-item-container">
					<div class="blog-compact-item">
						<img src="images/news/金亚秋文章.jpg" alt="">
						<span class="blog-item-tag">金亚秋</span>
						<div class="blog-compact-item-content">
							<ul class="blog-post-tags">
								<li>2021.4.8</li>
							</ul>
							<h3>金亚秋院士团队：微波湿度仪的月球辐射定标</h3>
							<p>微波辐射计的定标与验证始终是定量遥感的一个关键问题。金亚秋院士团队数值模拟了月球微波辐射亮度温度，可作为地球极轨卫星微波辐射计的一个定标源。</p>
						</div>
					</div>
				</a>
			</div>
			<!-- Blog post Item / End -->

			<div class="col-md-12 centered-content">
				<a href="showctrl?action=tonews" class="button border margin-top-10">查看更多</a>
			</div>

		</div>

	</div>
</section>
<!-- Recent Blog Posts / End -->


<!-- Footer
================================================== -->
<div id="footer" class="sticky-footer">
	<!-- Main -->
	<div class="container">
		<div class="row">
			<div class="col-md-5 col-sm-6">
				<img class="footer-logo" src="images/logo.png" alt="">
				<br><br>
				<p>
					本网站以地球科学为主题，集科普、分享和购物为一体，希望以简洁且生动的方式，向业余地质爱好者及普通人分享有趣的地学知识、传播前沿的地学信息，同时提供一个
					以地学为导向的分享平台，激发更多的人对地球科学的热爱。
				</p>
			</div>

			<div class="col-md-4 col-sm-6 ">
				<h4>快速链接</h4>
				<ul class="footer-links">
					<li><a href="#">登录</a></li>
					<li><a href="#">注册</a></li>
					<li><a href="#">我的账户</a></li>
					<li><a href="#">修改密码</a></li>
					<li><a href="#">我的订单</a></li>
					<li><a href="#">隐私政策</a></li>
				</ul>

				<ul class="footer-links">
					<li><a href="#">我们的合作伙伴</a></li>
					<li><a href="#">工作方式</a></li>
					<li><a href="#">联系我们</a></li>
				</ul>
				<div class="clearfix"></div>
			</div>		

			<div class="col-md-3  col-sm-12">
				<h4>联系我们</h4>
				<div class="text-widget">
					<span>求珍悟石</span> <br>
					电话: <span>(123) 123-456 </span><br>
					邮箱:<span> <a href="#">office@example.com</a> </span><br>
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
				<div class="copyrights">求珍悟石</div>
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