<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.User"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312" http-equiv=Content-Type content="text/html">
<link rel="shortcut icon" type="image/x-icon" href="assets/images/logo.jpg"/>
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

<title>求珍小铺</title>
</head>
<body class="home">
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
                                <a href="showctrl?action=todinings" class="nozari-menu-item-title" title="Shop">全部商品</a>
                                
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

<div>
    <div class="fullwidth-template">
        <div class="home-slider-banner">
            <div class="container">
                <div class="row10">
                    <div class="col-lg-8 silider-wrapp">
                        <div class="home-slider">
                            <div class="slider-owl owl-slick equal-container nav-center"
                                 data-slick='{"autoplay":true, "autoplaySpeed":9000, "arrows":false, "dots":true, "infinite":true, "speed":1000, "rows":1}'
                                 data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":1}}]'>
                                <div class="slider-item style7">
                                    <div class="slider-inner equal-element">
                                        <div class="slider-infor">
                                            <h5 class="title-small">
                                               	推荐
                                            </h5>
                                            <h3 class="title-big" style="color:#fff">
                                                恐龙标本化石模型
                                            </h3>
                                            <div class="price">
                                                折扣价：
                                                <span class="number-price">
														￥20.00
													</span>
                                            </div>
                                            <a href="#" class="button btn-browse">浏览</a>
                                            <a href="#" class="button btn-shop-the-look bgroud-style">现在购买</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item style8">
                                    <div class="slider-inner equal-element">
                                        <div class="slider-infor">
                                            <h5 class="title-small">
                                                 折扣 
                                            </h5>
                                            <h3 class="title-big" style="color:#fff">
                                              鲨鱼牙标本套盒
                                            </h3>
                                            <div class="price">
                                                促销价:
                                                <span class="number-price">
														￥33.00
													</span>
                                            </div>
                                            <a href="#" class="button btn-shop-product">现在购买</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item style9">
                                    <div class="slider-inner equal-element">
                                        <div class="slider-infor">
                                            <h5 class="title-small">
                                               推荐
                                            </h5>
                                            <h3 class="title-big" style="color:#fff">
                                            史前化石冰箱贴
                                            </h3>
                                            <div class="price">
                                                促销价:
                                                <span class="number-price">
														￥33.00
													</span>
                                            </div>
                                            <a href="#" class="button btn-chekout">现在购买</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                   <!--  --> <div class="col-lg-4 banner-wrapp">
                        <div class="banner">
                            <div class="item-banner style7">
                                <div class="inner">
                                    <div class="banner-content">
                                        <h3 class="title">蓝色蕾丝玛瑙</h3>
                                        <div class="description">
                                            标本精选
                                        </div>
                                        <a href="#" class="button btn-lets-do-it">现在购买</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="banner">
                            <div class="item-banner style8">
                                <div class="inner">
                                    <div class="banner-content">
                                        <h3 class="title">编织草帽遮阳防晒</h3>
                                        <div class="description" >
                                            出野外神器
                                        </div>
                                        <span class="price">￥20.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="nozari-iconbox-wrapp rows-space-40">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 nozari-iconbox-wrapp-small">
                        <div class="nozari-iconbox default">
                            <div class="iconbox-inner">
                                <div class="icon">
                                    <span class="flaticon-rocket-ship"></span>
                                </div>
                                <div class="content">
                                    <h4 class="title">
                                        急速配送
                                    </h4>
                                    <div class="text">
                                        半小时内送达！
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 nozari-iconbox-wrapp-small">
                        <div class="nozari-iconbox default">
                            <div class="iconbox-inner">
                                <div class="icon">
                                    <span class="flaticon-return"></span>
                                </div>
                                <div class="content">
                                    <h4 class="title">
                                       价格实惠
                                    </h4>
                                    <div class="text">
                                        质量保证
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 nozari-iconbox-wrapp-small last-item">
                        <div class="nozari-iconbox default">
                            <div class="iconbox-inner">
                                <div class="icon">
                                    <span class="flaticon-padlock"></span>
                                </div>
                                <div class="content">
                                    <h4 class="title">
                                        24小时服务
                                    </h4>
                                    <div class="text">
                                        我们一直在这里！
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
      
    </div>
</div>

	<div >
	  
		<div >
			<div class="newsletter-wrapp">
			    <div class="nozari-newsletter style3">
			        <div class="container">
			            <div class="newsletter-head">
			                <h3 class="title">优惠促销</h3>
			                <div class="subtitle" style="color:#fff;">
			                    折扣<br/>
			                      更多选择，更低价格
			                </div>
			            </div>
						<br>
			       
						<a href="product grid.html" id="view" class="button btn-shop-the-look bgroud-style" style="width: 200px;">现在去买</a>
			        </div>
			    </div>
			</div>
			<!-- 图片改 -->
			<div class="prada-left">
				<div class="prada-left1"> 
					<div class="prada-left-child">
						<p style="line-height: 23px; color: #000;font-weight:700;">恐龙头骨摆件</p> 
						<p style="line-height: 23px; color: #000;font-weight: 700; ">￥30</p>
					</div>
				</div>
				<div class="prada-left2">
				</div>
				<div class="prada-left3">
					<div class="prada-left-child">
						<p style="line-height: 23px; color: #000;font-weight:700;">史前化石冰箱贴</p> 
						<p style="line-height: 23px; color: #000;font-weight: 700; ">￥188</p>
					</div>
				</div>
				<div class="prada-left4">
					<div class="wrapper-text-left">
				        <h1><a href="product grid.html"  style="text-decoration: none;font-size: 1.6em; ">合成萤石</a></h1>
				        <p><a href="product grid.html" style="background-color: rgb(255,255,255);font-size: 1.4em;text-decoration: underline; color: #000000; ">点击选购</a><br /></p>
					</div>
				</div>
				
			</div>
			
		</div>
	<br/><br/><br/><br/><br/>
	<div class="nozari-product produc-featured rows-space-65">
            <div class="container">
                <h3 class="custommenu-title-blog">
                    标本大赏
                </h3>
                <div class="owl-products owl-slick equal-container nav-center"
                     data-slick='{"autoplay":false, "autoplaySpeed":1000, "arrows":false, "dots":true, "infinite":false, "speed":800, "rows":1}'
                     data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":4}},{"breakpoint":"1200","settings":{"slidesToShow":3}},{"breakpoint":"992","settings":{"slidesToShow":2}},{"breakpoint":"480","settings":{"slidesToShow":1}}]'>
                    <div class="product-item style-5">
                        <div class="product-inner equal-element">
                            <div class="product-top">
                                <div class="flash">
                                    <span class="onnew">
                                        <span class="text">
                                            新品折扣
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#">
                                        <img src="images/products/biaoben/簇状石英.jpg" alt="img">
                                    </a>
                                    <div class="thumb-group">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">加入购物车</a>
                                            </div>
                                        </div>
                                        <a href="#" class="button quick-wiew-button">浏览</a>
                                        <div class="loop-form-add-to-cart">
                                            <button class="single_add_to_cart_button button">加入购物车</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-count-down">
                                    <div class="nozari-countdown" data-y="2020" data-m="10" data-w="4" data-d="10"
                                         data-h="20" data-i="20" data-s="60"></div>
                                </div>
                            </div>
                            <div class="product-info">
                                <h5 class="product-name product_title">
                                    <a href="#">簇状石英</a>
                                </h5>
                                <div class="group-info">
                                    <div class="stars-rating">
                                        <div class="star-rating">
                                            <span class="star-5"></span>
                                        </div>
                                        <div class="count-star">
                                            (5)
                                        </div>
                                    </div>
                                    <div class="price">
                                        <del>
                                            ￥65
                                        </del>
                                        <ins>
                                            ￥45
                                        </ins>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style-5">
                        <div class="product-inner equal-element">
                            <div class="product-top">
                                <div class="flash">
                                    <span class="onnew">
                                        <span class="text">
                                            新品折扣
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#">
                                        <img src="images/products/biaoben/合成萤石.jpg" alt="img">
                                    </a>
                                    <div class="thumb-group">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">加入购物车</a>
                                            </div>
                                        </div>
                                        <a href="#" class="button quick-wiew-button">浏览</a>
                                        <div class="loop-form-add-to-cart">
                                            <button class="single_add_to_cart_button button">加入购物车</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-count-down">
                                    <div class="nozari-countdown" data-y="2020" data-m="10" data-w="4" data-d="10"
                                         data-h="20" data-i="20" data-s="60"></div>
                                </div>
                            </div>
                            <div class="product-info">
                                <h5 class="product-name product_title">
                                    <a href="#">合成萤石</a>
                                </h5>
                                <div class="group-info">
                                    <div class="stars-rating">
                                        <div class="star-rating">
                                            <span class="star-3"></span>
                                        </div>
                                        <div class="count-star">
                                            (3)
                                        </div>
                                    </div>
                                    <div class="price">
                                        <del>
                                            ￥89
                                        </del>
                                        <ins>
                                            ￥77.9
                                        </ins>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style-5">
                        <div class="product-inner equal-element">
                            <div class="product-top">
                                <div class="flash">
                                    <span class="onnew">
                                        <span class="text">
                                            新品折扣
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#">
                                        <img src="images/products/biaoben/黄铁矿树脂立方体矿石标本.jpg" alt="img">
                                    </a>
                                    <div class="thumb-group">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">加入购物车</a>
                                            </div>
                                        </div>
                                        <a href="#" class="button quick-wiew-button">浏览</a>
                                        <div class="loop-form-add-to-cart">
                                            <button class="single_add_to_cart_button button">加入购物车</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-count-down">
                                    <div class="nozari-countdown" data-y="2020" data-m="10" data-w="4" data-d="10"
                                         data-h="20" data-i="20" data-s="60"></div>
                                </div>
                            </div>
                            <div class="product-info">
                                <h5 class="product-name product_title">
                                    <a href="#">黄铁矿树脂立方体矿石标本</a>
                                </h5>
                                <div class="group-info">
                                    <div class="stars-rating">
                                        <div class="star-rating">
                                            <span class="star-4"></span>
                                        </div>
                                        <div class="count-star">
                                            (4)
                                        </div>
                                    </div>
                                    <div class="price">
                                        <del>
                                            ￥69
                                        </del>
                                        <ins>
                                            ￥49
                                        </ins>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style-5">
                        <div class="product-inner equal-element">
                            <div class="product-top">
                                <div class="flash">
                                    <span class="onnew">
                                        <span class="text">
                                            新品折扣
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#">
                                        <img src="images/products/biaoben/蓝色蕾丝玛瑙.jpg" alt="img">
                                    </a>
                                    <div class="thumb-group">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">加入购物车</a>
                                            </div>
                                        </div>
                                        <a href="#" class="button quick-wiew-button">浏览</a>
                                        <div class="loop-form-add-to-cart">
                                            <button class="single_add_to_cart_button button">加入购物车</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-count-down">
                                    <div class="nozari-countdown" data-y="2020" data-m="10" data-w="4" data-d="10"
                                         data-h="20" data-i="20" data-s="60"></div>
                                </div>
                            </div>
                            <div class="product-info">
                                <h5 class="product-name product_title">
                                    <a href="#">蓝色蕾丝玛瑙</a>
                                </h5>
                                <div class="group-info">
                                    <div class="stars-rating">
                                        <div class="star-rating">
                                            <span class="star-5"></span>
                                        </div>
                                        <div class="count-star">
                                            (5)
                                        </div>
                                    </div>
                                    <div class="price">
                                        <del>
                                            ￥135
                                        </del>
                                        <ins>
                                            ￥112
                                        </ins>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style-5">
                        <div class="product-inner equal-element">
                            <div class="product-top">
                                <div class="flash">
                                    <span class="onnew">
                                        <span class="text">
                                            新品折扣
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#">
                                        <img src="images/products/biaoben/文石树脂立方体矿石标本.jpg" alt="img">
                                    </a>
                                    <div class="thumb-group">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">加入购物车</a>
                                            </div>
                                        </div>
                                        <a href="#" class="button quick-wiew-button">浏览</a>
                                        <div class="loop-form-add-to-cart">
                                            <button class="single_add_to_cart_button button">加入购物车</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-count-down">
                                    <div class="nozari-countdown" data-y="2020" data-m="10" data-w="4" data-d="10"
                                         data-h="20" data-i="20" data-s="60"></div>
                                </div>
                            </div>
                            <div class="product-info">
                                <h5 class="product-name product_title">
                                    <a href="#">文石树脂立方体矿石标本</a>
                                </h5>
                                <div class="group-info">
                                    <div class="stars-rating">
                                        <div class="star-rating">
                                            <span class="star-4"></span>
                                        </div>
                                        <div class="count-star">
                                            (4)
                                        </div>
                                    </div>
                                    <div class="price">
                                        <del>
                                            ￥69
                                        </del>
                                        <ins>
                                            ￥49.9
                                        </ins>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="nozari-blog-wraap default" style="clear: both;">
            <div class="container">
                <h3 class="custommenu-title-blog">
                    更多单品
                </h3>
                <div class="nozari-blog default">
                    <div class="owl-slick equal-container nav-center"
                         data-slick='{"autoplay":false, "autoplaySpeed":1000, "arrows":false, "dots":true, "infinite":true, "speed":800, "rows":1}'
                         data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":3}},
						 {"breakpoint":"1200","settings":{"slidesToShow":3}},{"breakpoint":"992","settings":{"slidesToShow":2}},{"breakpoint":"768","settings":{"slidesToShow":2}},{"breakpoint":"481","settings":{"slidesToShow":1}}]'>
                        <div class="nozari-blog-item equal-element layout1">
                            <div class="post-thumb">
                                <a href="product grid.html">
                                    <img src="images/products/dizhi/Acecamp折叠式定向越野指南针.jpg" alt="img">
                                </a>
                            </div>
                            <div class="blog-info">
                                <div class="blog-meta">
                                    <div class="post-date">
                                        Acecamp折叠式定向越野指南针
                                    </div>
                                    <span class="view">
                        					<i class="icon fa fa-eye" aria-hidden="true"></i>
                        					631
                        				</span>
                                    <span class="comment">
                        					<i class="icon fa fa-commenting" aria-hidden="true"></i>
                        					84
                        				</span>
                                </div>
                               
                                <div class="main-info-post">
                                    <a class="readmore" href="#">More</a>
                                </div>
                            </div>
                        </div>
						<div class="nozari-blog-item equal-element layout1">
                            <div class="post-thumb">
                                <a href="product grid.html">
                                    <img src="images/products/dizhi/经纬仪簿.jpg" alt="img">
                                </a>
                                
                                
                            </div>
                            <div class="blog-info">
                                <div class="blog-meta">
                                    <div class="post-date">
                                      经纬仪簿
                                    </div>
                                    <span class="view">
											<i class="icon fa fa-eye" aria-hidden="true"></i>
											631
										</span>
                                    <span class="comment">
											<i class="icon fa fa-commenting" aria-hidden="true"></i>
											84
										</span>
                                </div>
                              
                                <div class="main-info-post">
                                    <a class="readmore" href="#">More</a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="nozari-blog-item equal-element layout1">
                            <div class="post-thumb">
                                <div class="video-nozari-blog">
                                    <figure>
                                        <img src="images/products/gongyipin/生物化石原石天然标本摆件.jpg" alt="img" width="370"
                                             height="280">
                                    </figure>
                                    
                                </div>
                               
                            </div>
                            <div class="blog-info">
                                <div class="blog-meta">
                                    <div class="post-date">
                                     生物化石原石天然标本摆件
                                    </div>
                                    <span class="view">
											<i class="icon fa fa-eye" aria-hidden="true"></i>
											631
										</span>
                                    <span class="comment">
											<i class="icon fa fa-commenting" aria-hidden="true"></i>
											84
										</span>
                                </div>
                             
                                <div class="main-info-post">
                                    <a class="readmore" href="#">More</a>
                                </div>
                            </div>
                        </div>
                        <div class="nozari-blog-item equal-element layout1">
                            <div class="post-thumb">
                                <a href="product grid.html">
                                    <img src="images/products/other/地大专属纪念章.jpg" alt="img">
                                </a>
                                
                                
                            </div>
                            <div class="blog-info">
                                <div class="blog-meta">
                                    <div class="post-date">
                                        地大专属纪念章
                                    </div>
                                    <span class="view">
											<i class="icon fa fa-eye" aria-hidden="true"></i>
											631
										</span>
                                    <span class="comment">
											<i class="icon fa fa-commenting" aria-hidden="true"></i>
											84
										</span>
                                </div>
                              
                                <div class="main-info-post">
                                    <a class="readmore" href="#">More</a>
                                </div>
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
<script src="assets/js/frontend-plugin.js"></script></body>
</html>