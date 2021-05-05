<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.dao.IDishDAO,java.util.ArrayList,java.util.*,com.javaee.util.DAOFactory,com.javaee.bean.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312" http-equiv=Content-Type content="text/html">
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
<title>求珍小铺——查看商品</title>
</head>

<body class="productsgrid-page">
	<header class="header style7">
    <div class="top-bar">
        <div class="container">
            <div class="top-bar-left">
                <div class="header-message">
                   	 欢迎来到求珍小铺
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
                        <form class="form-search form-search-width-category">
                            <div class="form-content">
                                <div class="category">
                                    <select title="cate" data-placeholder="All Categories" class="chosen-select"
                                            tabindex="1">
                                        <option value="biaoben">标本</option>
										<option value="dizhi">地质用品</option>
										<option value="gongyipin">工艺品</option>
										<option value="other">其它</option>
                                    </select>
                                </div>
                                <div class="inner">
                                    <input type="text" class="input" name="s" value="" placeholder="搜索">
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
	
	<div class="main-content main-content-product no-sidebar">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin">
								<a href="index.jsp">主页</a>
							</li>
							<li class="trail-item trail-end active">
								商品列表
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="content-area shop-grid-content full-width col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="site-main">
						<h3 class="custom_blog_title">
							商品列表
						</h3>
						
						<ul class="row list-products auto-clear equal-container product-grid">
						<%

									 request.setCharacterEncoding("utf-8"); 
								     response.setCharacterEncoding("utf-8"); 
								     PageModel<Dish> pageModel= (PageModel<Dish>)request.getAttribute("pageModel");
								     ArrayList<Dish> dish = pageModel.getList();
									for (int i = 0; i < dish.size(); i++) {
									
							%>
							<li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
							
								<div class="product-inner equal-element">
									<div class="product-top">
										<div class="flash">
											<span class="onnew">
												<span class="text">
													热销
												</span>
											</span>
										</div>
									</div>
									<div class="product-thumb">
										<div class="thumb-inner">
											<a href="./showctrl?action=todetails&DishId=<%=dish.get(i).getDishId()%>">
												<img src="<%=dish.get(i).getDishPic()%>" alt="img" >
											</a>
											<div class="thumb-group">
											
												<a href="./showctrl?action=todetails&DishId=<%=dish.get(i).getDishId()%>" class="button quick-wiew-button">查看详情</a>
											</div>
										</div>
									</div>
									<div class="product-info">
										<h5 class="product-name product_title">
										<a href="./showctrl?action=todetails&DishId=<%=dish.get(i).getDishId()%>"><%=dish.get(i).getDishName()%></a>
										</h5>
										<div class="group-info">
											<div class="stars-rating">
												<div class="star-rating">
													<span class="star-4"></span>
												</div>
												
											</div>
											<div  >
													月销：<%=dish.get(i).getDishSale()%>
												</div>
												<div class="price">
												<ins>
													￥<%=dish.get(i).getDishPrice()%>
												</ins>
											</div>
										</div>
									</div>
								</div>
							</li>
							<%
								}
							%>
							
						</ul>
						<div class="pagination clearfix style2">
							<div class="nav-link">
								<a href="#" class="page-numbers"><i class="icon fa fa-angle-left" aria-hidden="true"></i></a>
								<a href="#" class="page-numbers current">1</a>
								<a href="#" class="page-numbers">2</a>
								<a href="#" class="page-numbers">3</a>
								<a href="#" class="page-numbers"><i class="icon fa fa-angle-right" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
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
	<a href="#" class="backtotop">
		<i class="pe-7s-angle-up"></i>
	</a>

	<script src="assets/js/jquery-1.12.4.min.js"></script>
	<script src="assets/js/jquery.plugin-countdown.min.js"></script>
	<script src="assets/js/jquery-countdown.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/magnific-popup.min.js"></script>
	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/jquery.scrollbar.min.js"></script>
	<script src="assets/js/jquery-ui.min.js"></script>
	<script src="assets/js/mobile-menu.js"></script>
	<script src="assets/js/chosen.min.js"></script>
	<script src="assets/js/slick.js"></script>
	<script src="assets/js/jquery.elevateZoom.min.js"></script>
	<script src="assets/js/jquery.actual.min.js"></script>
	<script src="assets/js/fancybox/source/jquery.fancybox.js"></script>
	<script src="assets/js/lightbox.min.js"></script>
	<script src="assets/js/owl.thumbs.min.js"></script>
	<script src="assets/js/jquery.scrollbar.min.js"></script>
	<script src='https://ditu.google.cn/maps/api/js?key=AIzaSyC3nDHy1dARR-Pa_2jjPCjvsOR4bcILYsM'></script>
	<script src="assets/js/frontend-plugin.js"></script>

</body>
</html>