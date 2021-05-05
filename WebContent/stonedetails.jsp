<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.dao.IStoneDAO,java.util.ArrayList,java.util.*,com.javaee.util.DAOFactory,com.javaee.bean.*"
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
<title>岩石详情</title>
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

				<%
						Stone stonedetail = (Stone)request.getAttribute("stonedetails");
						String img1 = "images/stones/"+stonedetail.getSName()+"1.jpg";	
						String img2 = "images/stones/"+stonedetail.getSName()+"2.jpg";	
						String img3 = "images/stones/"+stonedetail.getSName()+"3.jpg";	
						String img4 = "images/stones/"+stonedetail.getSName()+"4.jpg";	
						int category = stonedetail.getSCategory();
						 String cg = "";
						 if(category==1){
							 cg="矿物";
						 }
						 else if(category==2){
							 cg="岩石";
						 } 
						 else if(category==3){
							 cg="矿石";
						 } 
						 else if(category==4){
							 cg="化石";
						 }
						 else if(category==5){
							 cg="矿床";
						 }
				%>

<!-- Slider
================================================== -->
<div class="listing-slider mfp-gallery-container margin-bottom-0">
	<a href="images/single-listing-01.jpg" data-background-image="<%=img1%>" class="item mfp-gallery" title="Title 1"></a>
	<a href="images/single-listing-02.jpg" data-background-image="<%=img2%>" class="item mfp-gallery" title="Title 3"></a>
	<a href="images/single-listing-03.jpg" data-background-image="<%=img3%>" class="item mfp-gallery" title="Title 2"></a>
	
</div>

 
<!-- Content
================================================== -->
<div class="container">
	<div class="row sticky-wrapper">
		<div class="col-lg-8 col-md-8 padding-right-30">

			<!-- Titlebar -->
			<div id="titlebar" class="listing-titlebar">
				<div class="listing-titlebar-title">
					<h2><%=stonedetail.getSName() %> <span class="listing-tag"><%=cg%>/<%=stonedetail.getSLei() %></span></h2>
					<span>
						<a href="#listing-location" class="listing-address">
							<i class="fa fa-map-marker"></i>
							<%=stonedetail.getSEName() %>
						</a>
					</span>
					<div class="star-rating" data-rating="5">
						<div class="rating-counter"><a href="#listing-reviews">(<%=stonedetail.getSClick() %> 浏览)</a></div>
					</div>
				</div>
			</div>

			<!-- Listing Nav -->
			<div id="listing-nav" class="listing-nav-container">
				<ul class="listing-nav">
					<li><a href="#listing-overview" class="active">外观</a></li>
					<li><a href="#listing-pricing-list">性质</a></li>
					<li><a href="#listing-location">用途</a></li>
					<li><a href="#listing-reviews">笔记</a>
					<li><a href="#add-review">添加笔记</a></li>
				</ul>
			</div>
			
			<!-- Overview -->
			<div id="listing-overview" class="listing-section">

				<!-- Description -->

				<p>
				<%=stonedetail.getSAppearance() %>
				</p>

				<p>
				<%=stonedetail.getSEAppearance() %>
				</p>
				
				
				<!-- Listing Contacts -->
				<div class="listing-links-container">
					<div class="clearfix"></div>

					<ul class="listing-links">
						<li><a href="#" target="_blank" class="listing-links-fb"><i class="fa fa-facebook-square"></i> Facebook</a></li>
						<li><a href="#" target="_blank" class="listing-links-yt"><i class="fa fa-youtube-play"></i> YouTube</a></li>
						<li><a href="#" target="_blank" class="listing-links-ig"><i class="fa fa-instagram"></i> Instagram</a></li>
						<li><a href="#" target="_blank" class="listing-links-tt"><i class="fa fa-twitter"></i> Twitter</a></li>
					</ul>
					<div class="clearfix"></div>

				</div>
				<div class="clearfix"></div>


				<!-- Amenities -->
				
			</div>


			<!-- Food Menu -->
			
			<div id="listing-pricing-list" class="listing-section">
				<h3 class="listing-desc-headline margin-top-70 margin-bottom-30">性质速记</h3>
				<ul class="listing-features checkboxes margin-top-0">
					<li>结构：<%=stonedetail.getSJiegou() %></li>
					<li>构造：<%=stonedetail.getSGouzao() %></li>
					<li>成分：<%=stonedetail.getSComponent() %></li>
					<li>颜色：<%=stonedetail.getSColor() %></li>
					<li>密度：<%=stonedetail.getSDensity() %></li>
					<li>硬度：<%=stonedetail.getSHardness() %></li>
					<li>光泽：<%=stonedetail.getSGuangze() %></li>
					<li>条痕：<%=stonedetail.getSTiaohen() %></li>
				</ul>
				
			</div>
			<!-- Food Menu / End -->

		
			<!-- Location -->
			<div id="listing-location" class="listing-section">
				<h3 class="listing-desc-headline margin-top-60 margin-bottom-30">用途</h3>

				<div class="show-more">
					<div class="pricing-list-container">
						
						<!-- Food List -->
						<h4>用途</h4>
						<ul>
							<li>
								<h5><%=stonedetail.getSUse() %></h5>
								<!--<p></p>-->
							</li>
							
						</ul>

						<!-- Food List -->
						<h4>其他</h4>
						<ul>
							<li>
								<span>
								<%
								    String other = "";
									if(stonedetail.getSOther()==null)
										other="无其他内容";
									else
										other=stonedetail.getSOther();
								%>
								<%=other %>
								
								</span>
							</li>
							
						</ul>

					</div>
				</div>
				<a href="#" class="show-more-button" data-more-title="展开" data-less-title=收起"><i class="fa fa-angle-down"></i></a>

			</div>
			<%
						request.setCharacterEncoding("utf-8"); 
				    	response.setCharacterEncoding("utf-8"); 
				     	PageModel<Comment> pageModel= (PageModel<Comment>)request.getAttribute("pageModel");
				     	ArrayList<Comment> comment = pageModel.getList();
						
					%>	
				
			<!-- Reviews -->
			<div id="listing-reviews" class="listing-section">
				<h3 class="listing-desc-headline margin-top-75 margin-bottom-20">笔记 <span><%=comment.size() %></span></h3>


				<div class="clearfix"></div>

				<!-- Reviews -->
				<section class="comments listing-reviews">
					<ul>
					<%
					for (int i = 0; i < comment.size(); i++) {
					%>
						<li>
							<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt="" /></div>
							<div class="comment-content"><div class="arrow-comment"></div>
								<div class="comment-by"><%=comment.get(i).getUserName()%> <i class="tip" data-tip-content="Person who left this review actually was a customer"></i> <span class="date"><%=comment.get(i).getCTime()%></span>
									<!--<div class="star-rating" data-rating="5"></div>-->
								</div>
								<p><%=comment.get(i).getCContent()%></p>
								
								<div class="review-images mfp-gallery-container">
									<a href="images/review-image-01.jpg" class="mfp-gallery"><img src="images/review-image-01.jpg" alt=""></a>
								</div>
								<a href="#" class="rate-review"><i class="sl sl-icon-like"></i> 有用 <span>12</span></a>
							</div>
						</li>
						<%} %>
					 </ul>
				</section>

				<!-- Pagination -->
				<div class="clearfix"></div>
				<div class="row">
					<div class="col-md-12">
						<!-- Pagination -->
						<div class="pagination-container margin-top-30">
							<nav class="pagination">
								<ul>
									<li><a href="#" class="current-page">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#"><i class="sl sl-icon-arrow-right"></i></a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<!-- Pagination / End -->
			</div>


			<!-- Add Review Box -->
			<div id="add-review" class="add-review-box">

				<!-- Add Review -->
				<h3 class="listing-desc-headline margin-bottom-10">添加笔记</h3>
				<p class="comment-notes">与地质爱好者分享你的发现吧！</p>

				

				<!-- Review Comment -->
				<form id="add-comment" class="add-comment" action="showctrl?action=newcomment&UserId=<%=user.getUserId() %>&SId=<%=stonedetail.getSId() %>&SName=<%=stonedetail.getSName() %>" method="post" name="newComment">
					<fieldset>

						<!-- Subratings Container -->
				<div class="sub-ratings-container">


					<!-- Uplaod Photos -->
	                <div class="uploadButton margin-top-15">
	                    <input class="uploadButton-input" type="file"  name="attachments[]" accept="image/*, application/pdf" id="upload" multiple/>
	                    <label class="uploadButton-button ripple-effect" for="upload">添加图片</label>
	                    <span class="uploadButton-file-name"></span>
	                </div>
	                <!-- Uplaod Photos / End -->

				</div>
				<!-- Subratings Container / End -->
						
						<div class="row">
							<div class="col-md-6">
								<label>名字:</label>
								<input type="text" title="username" name="userName" class="search-field" placeholder="输入您的用户名"/>
							</div>
						</div>

						<div>
							<label>笔记:</label>
							<textarea cols="40" rows="3" title="ccontent" name="cContent" class="search-field" placeholder="输入笔记内容"></textarea>
						</div>

					</fieldset>

					<button class="button" type="submit">提交笔记</button>
					<div class="clearfix"></div>
				</form>

			</div>
			<!-- Add Review Box / End -->


		</div>


		<!-- Sidebar
		================================================== -->
		<div class="col-lg-4 col-md-4 margin-top-75 sticky">

				
			<!-- Verified Badge -->
			<div class="verified-badge with-tip" data-tip-content="Listing has been verified and belongs the business owner or manager.">
				<i class="sl sl-icon-check"></i> 其他功能
			</div>

			<!-- Book Now -->
			<div id="booking-widget-anchor" class="boxed-widget booking-widget margin-top-35">
				<h3><i class="fa fa-calendar-check-o "></i> 收藏</h3>
				
				<!-- Book Now -->
				<a href="./showctrl?action=addcollect&SId=<%=stonedetail.getSId() %>&UserId=<%=user.getUserId() %>" class="button book-now fullwidth margin-top-5">添加收藏</a>
			</div>
			<!-- Book Now / End -->


			<!-- Coupon Widget -->
			<div class="coupon-widget" style="background-image: url(http://localhost/listeo_html/images/single-listing-01.jpg);">
				<a href="#" class="coupon-top">
					<span class="coupon-link-icon"></span>
					<h3>求珍小铺，限时七折！</h3>
					<div class="coupon-valid-untill">截止日期 2021/4/19</div>
					<div class="coupon-how-to-use"><strong>怎么用？</strong> 点我了解</div>
				</a>
				<div class="coupon-bottom">
					<div class="coupon-scissors-icon"></div>
					<div class="coupon-code">七折券</div>
				</div>
			</div>

		
			<!-- Opening Hours -->
			<div class="boxed-widget opening-hours margin-top-35">
				<div class="listing-badge now-open">展厅推荐</div>
				<h3><i class="sl sl-icon-clock"></i> Opening</h3>
				<ul>
					<li>中国地质大学（北京）博物馆</li>
					<li>中国地质博物馆</li>
					<li>房山世界地质公园博物馆</li>
					<li>延庆地质博物馆 </li>
					<li>北京大学地质博物馆 </li>
				</ul>
			</div>
			<!-- Opening Hours / End -->


			<!-- Contact -->
			<div class="boxed-widget margin-top-35">
				<div class="hosted-by-title">
					<h4><span>有疑问？</span> <a href="pages-user-profile.html">遇到问题了</a></h4>
					<a href="pages-user-profile.html" class="hosted-by-avatar"><img src="images/dashboard-avatar.jpg" alt=""></a>
				</div>
				<ul class="listing-details-sidebar">
					<li><i class="sl sl-icon-phone"></i> (123) 123-456</li>
					<!-- <li><i class="sl sl-icon-globe"></i> <a href="#">http://example.com</a></li> -->
					<li><i class="fa fa-envelope-o"></i> <a href="#">qiuzhenwushi@cugb.com</a></li>
				</ul>

				<ul class="listing-details-sidebar social-profiles">
					<li><a href="#" class="facebook-profile"><i class="fa fa-facebook-square"></i> Facebook</a></li>
					<li><a href="#" class="twitter-profile"><i class="fa fa-twitter"></i> Twitter</a></li>
					<!-- <li><a href="#" class="gplus-profile"><i class="fa fa-google-plus"></i> Google Plus</a></li> -->
				</ul>

				<a href="#small-dialog" class="send-message-to-owner button popup-with-zoom-anim"><i class="sl sl-icon-envelope-open"></i> 联系我们吧</a>
			</div>
			<!-- Contact / End-->
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

<!-- Maps -->
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
<script type="text/javascript" src="scripts/infobox.min.js"></script>
<script type="text/javascript" src="scripts/markerclusterer.js"></script>
<script type="text/javascript" src="scripts/maps.js"></script>	

<!-- Booking Widget - Quantity Buttons -->
<script src="scripts/quantityButtons.js"></script>

<!-- Date Range Picker - docs: http://www.daterangepicker.com/ -->
<script src="scripts/moment.min.js"></script>
<script src="scripts/daterangepicker.js"></script>
<script>
// Calendar Init
$(function() {
	$('#date-picker').daterangepicker({
		"opens": "left",
		singleDatePicker: true,

		// Disabling Date Ranges
		isInvalidDate: function(date) {
		// Disabling Date Range
		var disabled_start = moment('09/02/2018', 'MM/DD/YYYY');
		var disabled_end = moment('09/06/2018', 'MM/DD/YYYY');
		return date.isAfter(disabled_start) && date.isBefore(disabled_end);

		// Disabling Single Day
		// if (date.format('MM/DD/YYYY') == '08/08/2018') {
		//     return true; 
		// }
		}
	});
});

// Calendar animation
$('#date-picker').on('showCalendar.daterangepicker', function(ev, picker) {
	$('.daterangepicker').addClass('calendar-animated');
});
$('#date-picker').on('show.daterangepicker', function(ev, picker) {
	$('.daterangepicker').addClass('calendar-visible');
	$('.daterangepicker').removeClass('calendar-hidden');
});
$('#date-picker').on('hide.daterangepicker', function(ev, picker) {
	$('.daterangepicker').removeClass('calendar-visible');
	$('.daterangepicker').addClass('calendar-hidden');
});
</script>


<!-- Replacing dropdown placeholder with selected time slot -->
<script>
$(".time-slot").each(function() {
	var timeSlot = $(this);
	$(this).find('input').on('change',function() {
		var timeSlotVal = timeSlot.find('strong').text();

		$('.panel-dropdown.time-slots-dropdown a').html(timeSlotVal);
		$('.panel-dropdown').removeClass('active');
	});
});
</script>


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