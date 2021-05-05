<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.ArrayList,java.util.*,com.javaee.bean.User,com.javaee.bean.UserInfo"
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
<title>个人空间</title>
</head>
<body>
	
		<header class="header style7">
    <div class="top-bar">
        <div class="container">
            <div class="top-bar-left">
                <div class="header-message">
                   	 欢迎来到我们的西餐厅，请尽情享受美味吧！
                </div>
            </div>
            <div class="top-bar-right">
                <div class="header-language">
                    <div class="nozari-language nozari-dropdown">
								<a href="#" class="active language-toggle"
									data-nozari="nozari-dropdown"> 
									<%
				                        	User user = new User();
											UserInfo userinfo = new UserInfo();
				                        	if(request.getSession().getAttribute("user")==null){
				                        		user.setUserName("未登录！");
				                        	}
				                        	else{
				                        		user=(User)request.getSession().getAttribute("user");
				                        		userinfo=(UserInfo)request.getSession().getAttribute("userinfo");
				                        %>
				                        <span>你好！</span>
										<%
				                        	}
										%>
										<span><%=user.getUserName()%></span>
								</a>
								<ul class="nozari-submenu">
									<li class="switcher-option"><a href="mySpace.jsp"> <span>
												个人空间 </span>
									</a></li>
									<li class="switcher-option"><a href="#"> <span>
												退出登录 </span>
									</a></li>
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
                            <img src="assets/images/logo.jpg" alt="img">
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
                        <span class="text">享受美好食光</span>
                    </div>
                </div>
                <div class="header-nav">
                    <div class="container-wapper">
                        <ul class="nozari-clone-mobile-menu nozari-nav main-menu " id="menu-main-menu">
                            <li class="menu-item">
                                <a href="index.jsp" class="nozari-menu-item-title" title="Home">首页</a>
                            </li>
                            <li class="menu-item">
                                <a href="loginctrl?action=todinings" class="nozari-menu-item-title" title="Shop">特色餐厅</a>
                                
                            </li>
                            <li class="menu-item ">
                                <a href="#" class="nozari-menu-item-title" title="Pages">风味餐饮</a>
                              
                               
                            </li>
                            <li class="menu-item  ">
                              
                                    <a href="loginctrl?action=tomycart" class="nozari-menu-item-title" title="About">购物车</a>
                            
                            
                            </li>
                            <li class="menu-item">
                            <!-- gotomycart -->
  =
                          
                              
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
	
	
	<!-- Content
	================================================== -->
	<div class="dashboard-content" style="width:100%;margin-left:0">


		<div class="row">

			<!-- Profile -->
			<div class="col-lg-6 col-md-12">
				<div class="dashboard-list-box margin-top-0">
					<h4 class="gray">个人空间</h4>
					<div class="dashboard-list-box-static">
						<form action="" method="post" name="mySpace"> 
						<!-- Avatar -->
						<div class="edit-profile-photo" style="margin-left:150px">
							<img src="images/userpic.jpg" alt="">
							<div class="change-photo-btn">
							</div>
						</div>
	
						<!-- Details -->
						<div class="my-profile">

							<label>我的姓名</label>
							<input title="myname" name="myName" value=<%=userinfo.getUserName() %> type="text">

							<label>我的电话</label>
							<input title="myphone" name="myPhone" value=<%=userinfo.getUserPhone() %> type="text">

							<label>我的邮箱</label>
							<input title="mymail" name="myMail" value=<%=userinfo.getUserMail() %> type="text">

							<label>我的地址</label>
							<input title="myaddress" name="myAddress" value=<%=userinfo.getUserAddress() %> cols="30" rows="10" type="text">

						</div>
	
						<button onclick="checkaction(1);" class="button margin-top-15">保存更改</button>
					
					</div>
				</div>
			</div>

			<!-- Change Password -->
			<div class="col-lg-6 col-md-12">
				<div class="dashboard-list-box margin-top-0">
					<h4 class="gray">修改账号密码</h4>
					<div class="dashboard-list-box-static">

						<!-- Change Password -->
						<div class="my-profile">
							<label class="margin-top-0">当前密码</label>
							<input title="mypass" name="myPass" value=<%=user.getUserPassword() %> type="password">

							<label>新密码</label>
							<input title="mynewpass" name="myNewPass" type="password">

							<label>确认新密码</label>
							<input title="myagainpass" name="myAgainPass" type="password">

							<button onclick="checkaction(0);" class="button margin-top-15">更改密码</button>
						</div>

					</div>
				</div>
			</div>
			
			<script>
				function checkaction(v){
					if(v==1){
						document.mySpace.action="loginctrl?action=updateuserinfo";
					}
					else{
						document.mySpace.action="loginctrl?action=updateuserpass";
					}
				}
			</script>
			
			</form>
		</div>

	</div>
	
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