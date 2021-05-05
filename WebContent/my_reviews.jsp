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
<title>我的评论</title>
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
				<li><a href="my_wallet.jsp"><i class="sl sl-icon-wallet"></i> 我的钱包</a></li>
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
					<h2>我的评论&笔记</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">主页</a></li>
							<li><a href="#">个人中心</a></li>
							<li>评论&笔记</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<div class="row">
			<%
				 request.setCharacterEncoding("utf-8"); 
				 response.setCharacterEncoding("utf-8"); 
				 PageModel<Comment> pageModel= (PageModel<Comment>)request.getAttribute("pageModelTime");
				 ArrayList<Comment> stonecomment = pageModel.getList();//按时间降序排列的序列
				 PageModel<Comment> pageModellike= (PageModel<Comment>)request.getAttribute("pageModelLike");
				 ArrayList<Comment> stonecomment2 = pageModellike.getList();//按点赞数降序排列的序列
				 PageModel<Comment> pageModel2= (PageModel<Comment>)request.getAttribute("pageModel2");
				 ArrayList<Comment> articlecomment = pageModel2.getList();
			%>
			<!-- Listings -->
			<div class="col-lg-6 col-md-12">

				<div class="dashboard-list-box margin-top-0">

					<!-- Sort by -->
					<div class="sort-by">
						<div class="sort-by-select">
							<select data-placeholder="按上传时间降序" class="chosen-select-no-single" onchange="show_s_comments(this.value)" id="status">
								<option value="按上传时间降序">按上传时间降序</option>	
								<option value="按点赞量降序">按点赞量降序</option>
								
							</select>
						</div>
					</div>

					<h4>我上传的笔记(<%=stonecomment.size() %>)</h4> 

					<ul>
					<script>
						function show_s_comments(v){
							if(v=="按上传时间降序"){
								sortbytime.style.display="block";
								sortbylike.style.display="none";
							}
							if(v=="按点赞量降序"){
								sortbylike.style.display="block";
								sortbytime.style.display="none";
							}
						}
					</script>
					<div id="sortbytime">
					<%
						for (int i = 0; i < stonecomment.size(); i++) {
	
					%>
						<li>
							<div class="comments listing-reviews">
								<ul>
									<li>
										<div class="avatar"><img src="<%=user.getUserImage() %>" alt="" /></div>
										<div class="comment-content"><div class="arrow-comment"></div>
											<div class="comment-by"><%=stonecomment.get(i).getUserName() %><div class="comment-by-listing">关于 <a href="#"><%=stonecomment.get(i).getSName() %></a></div>说： <span class="date"><%=stonecomment.get(i).getCTime() %></span>
												<!--<div class="star-rating" data-rating="5"></div>-->
											</div>
											<p><%=stonecomment.get(i).getCContent() %></p>
											
											<div class="review-images mfp-gallery-container">
												<a href="images/review-image-01.jpg" class="mfp-gallery"><img src="<%=stonecomment.get(i).getCImage() %>" alt=""></a>
											</div>
											<a href="./showctrl?action=tostonedetails&UserId=<%=user.getUserId() %>&SId=<%=stonecomment.get(i).getSId()%>" class="rate-review"><i class="sl sl-icon-action-undo"></i> 转到</a>
										</div>
									</li>
								</ul>
							</div>
						</li>
						<%} %>
						</div>
						
						<div id="sortbylike" style="display:none">
					<%
						for (int i = 0; i < stonecomment2.size(); i++) {
	
					%>
						<li>
							<div class="comments listing-reviews">
								<ul>
									<li>
										<div class="avatar"><img src="<%=user.getUserImage() %>" alt="" /></div>
										<div class="comment-content"><div class="arrow-comment"></div>
											<div class="comment-by"><%=stonecomment2.get(i).getUserName() %><div class="comment-by-listing">关于 <a href="#"><%=stonecomment2.get(i).getSName() %></a></div>说： <span class="date"><%=stonecomment2.get(i).getCTime() %></span>
												<!--<div class="star-rating" data-rating="5"></div>-->
											</div>
											<p><%=stonecomment2.get(i).getCContent() %></p>
											
											<div class="review-images mfp-gallery-container">
												<a href="images/review-image-01.jpg" class="mfp-gallery"><img src="<%=stonecomment2.get(i).getCImage() %>" alt=""></a>
											</div>
											<a href="./showctrl?action=tostonedetails&UserId=<%=user.getUserId() %>&SId=<%=stonecomment2.get(i).getSId()%>" class="rate-review"><i class="sl sl-icon-action-undo"></i> 转到</a>
										</div>
									</li>
								</ul>
							</div>
						</li>
						<%} %>
						</div>
					</ul>
				</div>

				<!-- Pagination -->
				<div class="clearfix"></div>
				<div class="pagination-container margin-top-30 margin-bottom-0">
					<nav class="pagination">
						<ul>
							<li><a href="#" class="current-page">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#"><i class="sl sl-icon-arrow-right"></i></a></li>
						</ul>
					</nav>
				</div>
				<!-- Pagination / End -->

			</div>

			<!-- Listings -->
			<div class="col-lg-6 col-md-12">
				<div class="dashboard-list-box margin-top-0">
					<h4>我发布的评论(<%=articlecomment.size() %>)</h4>
					<ul>
					<% for (int j = 0; j < articlecomment.size(); j++) { %>
						<li>
							<div class="comments listing-reviews">
								<ul>
									<li>
										<div class="avatar"><img src="<%=user.getUserImage() %>" alt="" /> </div>
										<div class="comment-content"><div class="arrow-comment"></div>
											<div class="comment-by"><%=articlecomment.get(j).getUserName() %>评论   <div class="comment-by-listing own-comment"><a href="#"><%=articlecomment.get(j).getATitle() %></a></div> <span class="date"><%=articlecomment.get(j).getCTime() %></span>
												
											</div>
											<p><%=articlecomment.get(j).getCContent() %></p>
											<a href="#" class="rate-review popup-with-zoom-anim" onclick="shownewcon()"><i class="sl sl-icon-note"></i> 修改评论</a>
										</div><!-- #small-dialog -->
										
									<!-- Reply to review popup -->
									
							<form action="/showctrl?action=updatecomment&CId=<%=articlecomment.get(j).getCId() %>" method="post" id="newconform">
									<div id="small-dialog" class="zoom-anim-dialog mfp-hide">
									<div class="small-dialog-header">
										<h3>评论内容</h3>
									</div>
								<div class="message-reply margin-top-0">
									<input name="newcomment" type="text">
									<input class="button" type="submit" value="修改评论">
								</div>
								</div>
								</form>
								
								
								<script>
						function shownewcon(){
							if(newconform.style.display="block"){
								newconform.style.display="none";
							}
							else{
								newconform.style.display="block";
							}
						}
					</script>
							
									</li>
								</ul>
							</div>
							
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