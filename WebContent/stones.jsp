<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.dao.IStoneDAO,java.util.ArrayList,java.util.*,com.javaee.util.DAOFactory,com.javaee.bean.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>岩矿之书</title>

<!-- CSS
================================================== -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-color.css" id="colors">

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


<!-- Titlebar================================================== -->
<div id="titlebar" class="gradient">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

			<%
				 request.setCharacterEncoding("utf-8"); 
				 response.setCharacterEncoding("utf-8"); 
				 PageModel<Stone> pageModel= (PageModel<Stone>)request.getAttribute("pageModel");
				 ArrayList<Stone> stone = pageModel.getList();
				 int category = stone.get(0).getSCategory();
				 String cg = "";
				 String ct = "";
				 int cgsize=5;
				 String cgs[]={" "};
				 if(category==1){
					 cg="矿物";
					 ct="矿物是具有一定化学组成的天然化合物，它具有稳定的相界面和结晶习性。";
					 cgsize=5;
					 cgs = new String[]{"自然元素","硫化物及类似化合物","含氧盐矿物","氧化物和氢氧化物","卤化物"};
				 }
				 else if(category==2){
					 cg="岩石";
					 ct="";
					 cgsize=3;
					 cgs = new String[]{"火成岩","沉积岩","变质岩"};
				 } 
				 else if(category==3){
					 cg="矿石";
					 ct="";
					 cgsize=8;
					 cgs = new String[]{"含氧盐","黑色金属","有色金属","贵金属","稀有、稀土、分散元素金属","冶金辅助原料","化学工业用原料","建材及其它非金属"};
				 } 
				 else if(category==4){
					 cg="化石";
					 ct="";
					 cgsize=3;
					 cgs = new String[]{"古无脊椎动物","古植物","遗迹化石"};
				 }
				 else if(category==5){
					 cg="矿床";
					 ct="";
					 cgsize=5;
					 cgs = new String[]{"自然元素","硫化物","含氧盐矿物","氧化物和氢氧化物","卤化物"};
				 }
			%>
			
				<h2><%=cg%></h2>
				<span><%=ct%></span>

				<!-- Breadcrumbs -->
				<nav id="breadcrumbs">
					<ul>
						<li><a href="#">首页</a></li>
						<li><%=cg%></li>
					</ul>
				</nav>

			</div>
		</div>
	</div>
</div>


<!-- Content================================================== -->
<div class="container">
	<div class="row">
		
		<!-- Search -->
		<div class="col-md-12">
		<form action="./showctrl?action=tostones&SCategory=1" method="post" name="searchText">
			<div class="main-search-input gray-style margin-top-0 margin-bottom-10">

				<div class="main-search-input-item">
					<input type="text" placeholder="想找什么?" value=""/>
				</div>
				
				
				<div class="main-search-input-item">
					<select data-placeholder="All Categories" class="chosen-select" name="selectedLei" id=leiname>
						<option selected>所有分类</option>	
						<%
						for(int j=0;j<cgsize;j++){
							
						%>
						<option value="<%=cgs[j] %>"><%=cgs[j] %></option>
						
						<%
						} %>
					</select>
				</div>
				
				<button class="button" type="submit" >检索</button>
				
			</div>
			</form>
		</div>
		<!-- Search Section / End -->

<br/><br/><br/><br/><br/>
		<div class="col-md-12">

			<div class="row">
			<%
				for (int i = 0; i < stone.size(); i++) {
				String imgurl="images/stones/"+stone.get(i).getSName()+"1.jpg";
	
			%>
			
			<div class="col-lg-4 col-md-6">
				<!-- Listing Item -->
				
					<a href="./showctrl?action=tostonedetails&UserId=<%=user.getUserId() %>&SId=<%=stone.get(i).getSId()%>" class="listing-item-container compact">
						<div class="listing-item">
							<img src="<%=imgurl%>" alt="">

							<div class="listing-badge now-open"><%=stone.get(i).getSLei()%></div>

							<div class="listing-item-content">
								<div class="numerical-rating" data-rating="<%=stone.get(i).getSClick()%>"></div>
								<h3><%=stone.get(i).getSName()%><i class="verified-icon"></i></h3>
								<span><%=stone.get(i).getSEName()%></span>
							</div>
							<!--<span class="like-icon"></span>-->
						</div>
					</a>
				<!-- Listing Item / End -->
            </div>
				
				<%} %>

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