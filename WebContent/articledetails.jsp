<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.dao.IArticleDAO,java.util.ArrayList,java.util.*,com.javaee.util.DAOFactory,com.javaee.bean.*"
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
<title>科普专辑--文章详情</title>
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
						<li><a href="#">岩矿图鉴</a>
							<ul>
								<li><a href="./showctrl?action=tostones&SCategory=1">矿物</a></li>
								<li><a href="./showctrl?action=tostones&SCategory=2">岩石</a></li>
								<li><a href="./showctrl?action=tostones&SCategory=3">矿石</a></li>
								<li><a href="./showctrl?action=tostones&SCategory=4">化石</a></li>
								<li><a href="./showctrl?action=tostones&SCategory=5">矿床</a></li>
							</ul>
						</li>
						
						<li><a href="#">阅读</a>
							<ul>
								<li><a href="showctrl?action=toarticles">科普专辑</a>
									<ul>
										<li><a href="showctrl?action=toarticles">史前漫记</a></li>
										<li><a href="showctrl?action=toarticles">地球演义</a></li>
										<li><a href="showctrl?action=toarticles">恐龙专题</a></li>
										<li><a href="showctrl?action=toarticles">更多…</a></li>
									</ul>
								</li>
								<li><a href="showctrl?action=tonews">地学前沿</a>
									
								</li>
								
							</ul>
						</li>
						
						<li><a href="./showctrl?action=tomyhome&UserId=<%=user.getUserId() %>">个人中心</a>
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
						<li><a href="maps.jsp">去看展</a>
						<li><a href="videos.jsp">去看视频</a>
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


<!-- Titlebar
================================================== -->
<div class="address-box-container">
		<div class="address-container" data-background-image="images/our-office.jpg" style="background-image: url(&quot;images/our-office.jpg&quot;);">
			<div class="office-address">
				<h3 style="margin-top:25px">科普专栏</h3>
				<ul>
					<li>科普大V，持续更新</li>
					<li>“你是我唯一想要的了解”</li>
					
				</ul>
			</div>
		</div>
	</div>
	<br>&lt;

<!-- Content
================================================== -->
<div class="container">

	<!-- Blog Posts -->
	<div class="blog-page">
	<div class="row">
<%
		request.setCharacterEncoding("utf-8"); 
	 	response.setCharacterEncoding("utf-8"); 
	 	PageModel<Article> pageModel2= (PageModel<Article>)request.getAttribute("pageModel2");
	 	ArrayList<Article> article2 = pageModel2.getList();
		Article articledetail = (Article)request.getAttribute("articledetails");
		PageModel<Comment> pageModel= (PageModel<Comment>)request.getAttribute("pageModel");
		ArrayList<Comment> comment = pageModel.getList();
	%>
<div class="col-lg-3 col-md-4">
		<div class="sidebar right">
			<!-- Coupon Widget -->
			<div class="coupon-widget" style="background-image: url(http://localhost/listeo_html/images/single-listing-01.jpg);">
				<a href="http://127.0.0.1:8020/11/pages-blog-post.html?__hbt=1618282851421#" class="coupon-top">
					<span class="coupon-link-icon"></span>
					<h3>北地小铺，限时七折！</h3>
					<div class="coupon-valid-untill">截止日期 2021/4/19</div>
					<div class="coupon-how-to-use"><strong>怎么用？</strong> 点我了解</div>
				</a>
				<div class="coupon-bottom">
					<div class="coupon-scissors-icon"></div>
					<div class="coupon-code">七折券</div>
				</div>
			</div>
			<br><br>
			<!-- Widget -->
			<div class="widget">
				<h3 class="margin-top-0 margin-bottom-25">搜索文章：</h3>
				<div class="search-blog-input">
					<div class="input"><input class="search-field" type="text" placeholder="输入文章标题" value=""></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- Widget / End -->


			<!-- Widget -->
			<div class="widget margin-top-40">
				<h3>有疑问？</h3>
				<div class="info-box margin-bottom-10">
					<p>遇到问题了？告诉我们吧！</p>
					<a href="http://127.0.0.1:8020/11/pages-contact.html" class="button fullwidth margin-top-20"><i class="fa fa-envelope-o"></i>联系我们</a>
				</div>
			</div>
			<!-- Widget / End -->


			<!-- Widget -->
			<div class="widget margin-top-40">

				<h3>相关科普</h3>
				<ul class="widget-tabs">

					<!-- Post #1 -->
					<li>
						<div class="widget-content">
								<div class="widget-thumb">
								<a href="http://127.0.0.1:8020/11/pages-blog-post.html"><img src="images/articles/7.jpg" alt=""></a>
							</div>
							
							<div class="widget-text">
								<h5><a href="http://127.0.0.1:8020/11/pages-blog-post.html">偏师劲旅（下） </a></h5>
								<span>2021.4.6</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</li>
					
					<!-- Post #2 -->
					<li>
						<div class="widget-content">
							<div class="widget-thumb">
								<a href="http://127.0.0.1:8020/11/pages-blog-post.html"><img src="images/articles/5.jpg" alt=""></a>
							</div>
							
							<div class="widget-text">
								<h5><a href="http://127.0.0.1:8020/11/pages-blog-post.html">二叠纪剧场 Madagascar (III)</a></h5>
								<span>2021.4.7</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</li>
					
					<!-- Post #3 -->
					<li>
						<div class="widget-content">
							<div class="widget-thumb">
								<a href="http://127.0.0.1:8020/11/pages-blog-post.html"><img src="images/articles/3.jpg" alt=""></a>
							</div>
							
							<div class="widget-text">
								<h5><a href="http://127.0.0.1:8020/11/pages-blog-post.html">二叠纪剧场 Madagascar (I)</a></h5>
								<span>2021.4.9</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</li>

				</ul>

			</div>
			<!-- Widget / End-->


			<!-- Widget -->
			<div class="widget margin-top-40">
				<h3 class="margin-bottom-25">分享</h3>
				<ul class="social-icons rounded">
					<li><a class="facebook" href="http://127.0.0.1:8020/11/pages-blog-post.html?__hbt=1618282851421#"><i class="icon-facebook"></i></a></li>
					<li><a class="twitter" href="http://127.0.0.1:8020/11/pages-blog-post.html?__hbt=1618282851421#"><i class="icon-twitter"></i></a></li>
					<li><a class="gplus" href="http://127.0.0.1:8020/11/pages-blog-post.html?__hbt=1618282851421#"><i class="icon-gplus"></i></a></li>
					<li><a class="linkedin" href="http://127.0.0.1:8020/11/pages-blog-post.html?__hbt=1618282851421#"><i class="icon-linkedin"></i></a></li>
				</ul>

			</div>
			<!-- Widget / End-->


			

			<div class="clearfix"></div>
			<div class="margin-bottom-40"></div>
		</div>
	</div>
		<!-- Post Content -->
		<div class="col-lg-9 col-md-8 padding-right-30">
			<div class="about-author">
				<img src="images/popular-location-02.jpg" alt="">
				<div class="about-description">
					<h4>专栏： <%=articledetail.getAKeyWord() %></h4>
					
					<p>专栏简介：“地球演义”专栏为你讲述40亿年的地球生命故事</p>
				</div>
			</div>

			<!-- Blog Post -->
			<div class="blog-post single-post">
				
				<!-- Img -->
				

				
				<!-- Content -->
				<div class="post-content">

					<h3><%=articledetail.getATitle() %></h3>

					<ul class="post-meta">
						<li></li>
						<li><a href="#">关键词： <%=articledetail.getAKeyWord() %></a></li>
						<li><a href="#"><%=comment.size() %> 条评论</a></li>
					</ul>
					<img class="post-img" src="<%=articledetail.getAImage() %>" alt="">
					<div class="post-quote">
						<span class="icon"></span>
						<blockquote>
							<%=articledetail.getAContent() %>
						</blockquote>
					</div>

					<p> <%=articledetail.getAMContent() %></p>

					<!-- Share Buttons -->
					<ul class="share-buttons margin-top-40 margin-bottom-0">
						<li><a class="fb-share" href="http://127.0.0.1:8020/11/pages-blog-post.html?__hbt=1618282851421#"><i class="fa fa-facebook"></i> 分享</a></li>
						<li><a class="twitter-share" href="http://127.0.0.1:8020/11/pages-blog-post.html?__hbt=1618282851421#"><i class="fa fa-twitter"></i> Tweet</a></li>
						<li><a class="gplus-share" href="http://127.0.0.1:8020/11/pages-blog-post.html?__hbt=1618282851421#"><i class="fa fa-google-plus"></i> 分享</a></li>
						<li><a class="pinterest-share" href="http://127.0.0.1:8020/11/pages-blog-post.html?__hbt=1618282851421#"><i class="fa fa-pinterest-p"></i> Pin</a></li>
					</ul>
					<div class="clearfix"></div>

				</div>
			</div>
			<!-- Blog Post / End -->


			<!-- Post Navigation -->
			<ul id="posts-nav" class="margin-top-0 margin-bottom-45">
			<%
				Article sarticledetail = (Article)request.getAttribute("sarticle");
				Article xarticledetail = (Article)request.getAttribute("xarticle");
			%>
			<%
				if(xarticledetail.getAId()==0){
			%>
				<li class="next-post" id="xia">
					<span>下一篇</span>
					<%=xarticledetail.getATitle() %>
				</li>
			<%} 
			else{
			%>
				<li class="next-post" id="xia">
					<a href="showctrl?action=toarticledetails&AId=<%=xarticledetail.getAId() %>&AKeyWord=<%=xarticledetail.getAKeyWord() %>"><span>下一篇</span>
					<%=xarticledetail.getATitle() %></a>
				</li>
			<%} 
				if(sarticledetail.getAId()==0){
			%>
				<li class="prev-post" id="shang">
					<span>上一篇</span>
					<%=sarticledetail.getATitle() %>
				</li>
			<%}
				else{
			%>
				<li class="prev-post" id="shang">
					<a href="showctrl?action=toarticledetails&AId=<%=sarticledetail.getAId() %>&AKeyWord=<%=sarticledetail.getAKeyWord() %>"><span>上一篇</span>
					<%=sarticledetail.getATitle() %></a>
				</li>
				<%} %>
			</ul>


			<!-- Related Posts -->
			<div class="clearfix"></div>
			<h4 class="headline margin-top-25">相关文章</h4>
			<div class="row">
 			
 			
				<!-- Blog Post Item -->
				<div class="col-md-6">
					<a href="showctrl?action=toarticledetails&AId=<%=article2.get(0).getAId() %>&AKeyWord=<%=article2.get(0).getAKeyWord() %>" class="blog-compact-item-container">
						<div class="blog-compact-item">
							<img src="<%=article2.get(0).getAImage() %>" alt="">
							<span class="blog-item-tag"><%=article2.get(0).getAKeyWord() %></span>
							<div class="blog-compact-item-content">
								<ul class="blog-post-tags">
									<li></li>
								</ul>
								<h3><%=article2.get(0).getATitle() %></h3>
								<p><%=article2.get(0).getAContent() %></p>
							</div>
						</div>
					</a>
				</div>
				<!-- Blog post Item / End -->

				<!-- Blog Post Item -->
				<div class="col-md-6">
					<a href="showctrl?action=toarticledetails&AId=<%=article2.get(1).getAId() %>&AKeyWord=<%=article2.get(1).getAKeyWord() %>" class="blog-compact-item-container">
						<div class="blog-compact-item">
							<img src="<%=article2.get(1).getAImage() %>" alt="">
							<span class="blog-item-tag"><%=article2.get(1).getAKeyWord() %></span>
							<div class="blog-compact-item-content">
								<ul class="blog-post-tags">
									<li></li>
								</ul>
								<h3><%=article2.get(1).getATitle() %></h3>
								<p><%=article2.get(1).getAContent() %></p>
							</div>
						</div>
					</a>
				</div>
				<!-- Blog post Item / End -->

			</div>
			<!-- Related Posts / End -->


			<div class="margin-top-50"></div>

			<!-- Reviews -->
			<section class="comments">
			<h4 class="headline margin-bottom-35">评论 <span class="comments-amount">(<%=comment.size() %>)</span></h4>

				<ul>
					<%
					for (int i = 0; i < comment.size(); i++) {
					%>
					<li>
						<div class="avatar"><img src="<%=comment.get(i).getCImage() %>" alt="" /></div>
						<div class="comment-content"><div class="arrow-comment"></div>
							<div class="comment-by"><%=comment.get(i).getUserName() %><span class="date"><%=comment.get(i).getCTime() %></span>
								<!--<a href="#" class="reply"><i class="fa fa-reply"></i> 回复</a>-->
							</div>
							<p><%=comment.get(i).getCContent() %></p>
						</div>

						

					</li>
					<%} %>
				 </ul>

			</section>
			<div class="clearfix"></div>


			<!-- Add Comment -->
			<div id="add-review" class="add-review-box">

				<!-- Add Review -->
				<h3 class="listing-desc-headline margin-bottom-35">添加评论</h3>
	
				<!-- Review Comment -->
				<form id="add-comment" class="add-comment" action="showctrl?action=newcomment&UserId=<%=user.getUserId() %>&AId=<%=articledetail.getAId() %>" method="post" name="newComment">
					<fieldset>
						<div>
							<label>用户名:</label>
							<input type="text" title="username" name="userName" class="search-field" placeholder="输入您的用户名"/>
						</div>
						<div>
							<label>评论:</label>
							<textarea cols="40" rows="3"  title="ccontent" name="cContent" class="search-field" placeholder="输入评论内容"></textarea>
						</div>

					</fieldset>

					<button class="button" type="submit">提交评论</button>
					<div class="clearfix"></div>
				</form>

			</div>
			<!-- Add Review Box / End -->

	</div>
	<!-- Content / End -->



	<!-- Widgets -->
	
	</div>
	<!-- Sidebar / End -->


</div>
</div>



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
				<h4>Helpful Links</h4>
				<ul class="footer-links">
					<li><a href="#">登录</a></li>
					<li><a href="#">注册</a></li>
					<li><a href="#">我的账户</a></li>
					<li><a href="#">修改密码</a></li>
					<li><a href="#">我的订单</a></li>
					<li><a href="#">隐私政策</a></li>
				</ul>

				<ul class="footer-links">
					<li><a href="#">FAQ</a></li>
					<li><a href="#">我们的合作伙伴</a></li>
					<li><a href="#">工作方式</a></li>
					<li><a href="#">联系我们</a></li>
				</ul>
				<div class="clearfix"></div>
			</div>		

			<div class="col-md-3  col-sm-12">
				<h4>Contact Us</h4>
				<div class="text-widget">
					<span>北京市海淀区中国地质大学（北京）</span> <br>
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
				<div class="copyrights">© 中国地质大学（北京） 软件工程专业</div>
			</div>
		</div>

	</div>

</div>
<!-- Footer / End -->


<!-- Back To Top Button -->
<div id="backtotop" class=""><a href="http://127.0.0.1:8020/11/pages-blog-post.html?__hbt=1618282851421#"></a></div>


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