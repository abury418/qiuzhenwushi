<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<title>欢迎来到西餐吧~</title>
</head>
<body class="home">
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
                        <a href="#" class="active language-toggle" data-nozari="nozari-dropdown">
									<span>
										你好！ 张三
									</span>
                        </a>
                        <ul class="nozari-submenu">
                            <li class="switcher-option">
                                <a href="#">
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
                        <a href="index.html">
                            <img src="assets/images/logo.jpg" alt="img">
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
                                        <option value="United States">五道口</option>
										<option value="United Kingdom">六道口</option>
										<option value="Afghanistan">大钟寺</option>
										<option value="Aland Islands">知春路</option>
										<option value="Albania">西直门</option>
										<option value="Algeria">上地</option>
                                    </select>
                                </div>
                                <div class="inner">
                                    <input type="text" class="input" name="s" value="" placeholder="选择地址   搜索美食~">
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
                                <a href="dining-list.jsp" class="nozari-menu-item-title" title="Shop">特色餐厅</a>
                            </li>
                            <li class="menu-item  menu-item-has-children item-megamenu">
                                <a href="#" class="nozari-menu-item-title" title="Pages">风味餐饮</a>
                                <span class="toggle-submenu"></span>
                                <div class="submenu mega-menu menu-page">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
                                            <div class="nozari-custommenu default">
                                                <h2 class="widgettitle">Shop Pages</h2>
                                                <ul class="menu">
                                                    <li class="menu-item">
                                                        <a href="shoppingcart.html">Shopping Cart</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="checkout.html">Checkout</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="contact.html">Contact us</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="404page.html">404</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="login.html">Login/Register</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
                                            <div class="nozari-custommenu default">
                                                <h2 class="widgettitle">Product</h2>
                                                <ul class="menu">
                                                    <li class="menu-item">
                                                        <a href="productdetails-fullwidth.html">Product Fullwidth</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="productdetails-leftsidebar.html">Product left
                                                            sidebar</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="productdetails-rightsidebar.html">Product right
                                                            sidebar</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="menu-item  menu-item-has-children">
                                <a href="inblog_right-siderbar.html" class="nozari-menu-item-title"
                                   title="Blogs">购物车</a>
                                <span class="toggle-submenu"></span>
                                <ul class="submenu">
                                    <li class="menu-item menu-item-has-children">
                                        <a href="#" class="nozari-menu-item-title" title="Blog Style">Blog Style</a>
                                        <span class="toggle-submenu"></span>
                                        <ul class="submenu">
                                            <li class="menu-item">
                                                <a href="bloggrid.html">Grid</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="bloglist.html">List</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="bloglist-leftsidebar.html">List Sidebar</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="menu-item menu-item-has-children">
                                        <a href="#" class="nozari-menu-item-title" title="Post Layout">Post Layout</a>
                                        <span class="toggle-submenu"></span>
                                        <ul class="submenu">
                                            <li class="menu-item">
                                                <a href="inblog_left-siderbar.html">Left Sidebar</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="inblog_right-siderbar.html">Right Sidebar</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item">
                                <a href="about.html" class="nozari-menu-item-title" title="About">我的订单</a>
                            </li>
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
                <a href="#">
                    <img src="assets/images/logo.png" alt="img">
                </a>
            </div>
        </div>
        <div class="item item mobile-search-box has-sub">
            <a href="#">
						<span class="icon">
							<i class="fa fa-search" aria-hidden="true"></i>
						</span>
            </a>
            <div class="block-sub">
                <a href="#" class="close">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </a>
                <div class="header-searchform-box">
                    <form class="header-searchform">
                        <div class="searchform-wrap">
                            <input type="text" class="search-input" placeholder="Enter keywords to search...">
                            <input type="submit" class="submit button" value="Search">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="item mobile-settings-box has-sub">
            <a href="#">
						<span class="icon">
							<i class="fa fa-cog" aria-hidden="true"></i>
						</span>
            </a>
            <div class="block-sub">
                <a href="#" class="close">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </a>
                <div class="block-sub-item">
                    <h5 class="block-item-title">Currency</h5>
                    <form class="currency-form nozari-language">
                        <ul class="nozari-language-wrap">
                            <li class="active">
                                <a href="#">
											<span>
												English (USD)
											</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
											<span>
												French (EUR)
											</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
											<span>
												Japanese (JPY)
											</span>
                                </a>
                            </li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>
        <div class="item menu-bar">
            <a class=" mobile-navigation  menu-toggle" href="#">
                <span></span>
                <span></span>
                <span></span>
            </a>
        </div>
    </div>
</div>
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
                                               	 菜品新鲜 服务到位!
                                            </h5>
                                            <h3 class="title-big">
                                                Shirred linen minimal dress
                                            </h3>
                                            <div class="price">
                                                New Price:
                                                <span class="number-price">
														$270.00
													</span>
                                            </div>
                                            <a href="#" class="button btn-browse">Browse</a>
                                            <a href="#" class="button btn-shop-the-look bgroud-style">Shop now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item style8">
                                    <div class="slider-inner equal-element">
                                        <div class="slider-infor">
                                            <h5 class="title-small">
                                                Black Friday Sale!
                                            </h5>
                                            <h3 class="title-big">
                                                long oversized brushed scarf
                                            </h3>
                                            <div class="price">
                                                Save Price:
                                                <span class="number-price">
														$170.00
													</span>
                                            </div>
                                            <a href="#" class="button btn-shop-product">Shop now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item style9">
                                    <div class="slider-inner equal-element">
                                        <div class="slider-infor">
                                            <h5 class="title-small">
                                                Nozari Best Collection
                                            </h5>
                                            <h3 class="title-big">
                                                The inspiration behind our store
                                            </h3>
                                            <a href="#" class="button btn-chekout">Shop now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 banner-wrapp">
                        <div class="banner">
                            <div class="item-banner style7">
                                <div class="inner">
                                    <div class="banner-content">
                                        <h3 class="title">T-Shirts Collection</h3>
                                        <div class="description">
                                            Adipiscing elit curabitur senectus sem
                                        </div>
                                        <a href="#" class="button btn-lets-do-it">Shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="banner">
                            <div class="item-banner style8">
                                <div class="inner">
                                    <div class="banner-content">
                                        <h3 class="title">Men Winnter Best Seller</h3>
                                        <div class="description">
                                            Cras pulvinar lorem ipsum dolor conse
                                        </div>
                                        <span class="price">$379.00</span>
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
                                        Free Delivery
                                    </h4>
                                    <div class="text">
                                        On order over $90.00
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
                                        Money Guarantee
                                    </h4>
                                    <div class="text">
                                        30 Days money back!
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
                                        Online Support 24/7
                                    </h4>
                                    <div class="text">
                                        We’re Always here!
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="nozari-product produc-featured rows-space-65">
            <div class="container">
                <h3 class="custommenu-title-blog">
                    Deal of the day
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
                                            new
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#">
                                        <img src="assets/images/product-item-17.jpg" alt="img">
                                    </a>
                                    <div class="thumb-group">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">Add to Wishlist</a>
                                            </div>
                                        </div>
                                        <a href="#" class="button quick-wiew-button">Quick View</a>
                                        <div class="loop-form-add-to-cart">
                                            <button class="single_add_to_cart_button button">Add to cart</button>
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
                                    <a href="#">Long Sleeve Midi</a>
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
                                            $65
                                        </del>
                                        <ins>
                                            $45
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
													new
												</span>
											</span>
                                </div>
                            </div>
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#">
                                        <img src="assets/images/product-item-21.jpg" alt="img">
                                    </a>
                                    <div class="thumb-group">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">Add to Wishlist</a>
                                            </div>
                                        </div>
                                        <a href="#" class="button quick-wiew-button">Quick View</a>
                                        <div class="loop-form-add-to-cart">
                                            <button class="single_add_to_cart_button button">Add to cart</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-count-down">
                                    <div class="nozari-countdown" data-y="2020" data-m="9" data-w="2" data-d="30"
                                         data-h="20" data-i="60" data-s="60"></div>
                                </div>
                            </div>
                            <div class="product-info">
                                <h5 class="product-name product_title">
                                    <a href="#">Long Sleeve Midi</a>
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
                                            $65
                                        </del>
                                        <ins>
                                            $45
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
													new
												</span>
											</span>
                                </div>
                            </div>
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#">
                                        <img src="assets/images/product-item-20.jpg" alt="img">
                                    </a>
                                    <div class="thumb-group">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">Add to Wishlist</a>
                                            </div>
                                        </div>
                                        <a href="#" class="button quick-wiew-button">Quick View</a>
                                        <div class="loop-form-add-to-cart">
                                            <button class="single_add_to_cart_button button">Add to cart</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-count-down">
                                    <div class="nozari-countdown" data-y="2020" data-m="12" data-w="1" data-d="24"
                                         data-h="20" data-i="50" data-s="60"></div>
                                </div>
                            </div>
                            <div class="product-info">
                                <h5 class="product-name product_title">
                                    <a href="#">Long Sleeve Midi</a>
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
                                            $65
                                        </del>
                                        <ins>
                                            $45
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
													new
												</span>
											</span>
                                </div>
                            </div>
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#">
                                        <img src="assets/images/product-item-22.jpg" alt="img">
                                    </a>
                                    <div class="thumb-group">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">Add to Wishlist</a>
                                            </div>
                                        </div>
                                        <a href="#" class="button quick-wiew-button">Quick View</a>
                                        <div class="loop-form-add-to-cart">
                                            <button class="single_add_to_cart_button button">Add to cart</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-count-down">
                                    <div class="nozari-countdown" data-y="2020" data-m="7" data-w="3" data-d="20"
                                         data-h="10" data-i="10" data-s="20"></div>
                                </div>
                            </div>
                            <div class="product-info">
                                <h5 class="product-name product_title">
                                    <a href="#">Long Sleeve Midi</a>
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
                                            $65
                                        </del>
                                        <ins>
                                            $45
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
													new
												</span>
											</span>
                                </div>
                            </div>
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#">
                                        <img src="assets/images/product-item-19.jpg" alt="img">
                                    </a>
                                    <div class="thumb-group">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">Add to Wishlist</a>
                                            </div>
                                        </div>
                                        <a href="#" class="button quick-wiew-button">Quick View</a>
                                        <div class="loop-form-add-to-cart">
                                            <button class="single_add_to_cart_button button">Add to cart</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-count-down">
                                    <div class="nozari-countdown" data-y="2020" data-m="9" data-w="2" data-d="30"
                                         data-h="20" data-i="60" data-s="60"></div>
                                </div>
                            </div>
                            <div class="product-info">
                                <h5 class="product-name product_title">
                                    <a href="#">Long Sleeve Midi</a>
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
                                            $65
                                        </del>
                                        <ins>
                                            $45
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
													new
												</span>
											</span>
                                </div>
                            </div>
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#">
                                        <img src="assets/images/product-item-18.jpg" alt="img">
                                    </a>
                                    <div class="thumb-group">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">Add to Wishlist</a>
                                            </div>
                                        </div>
                                        <a href="#" class="button quick-wiew-button">Quick View</a>
                                        <div class="loop-form-add-to-cart">
                                            <button class="single_add_to_cart_button button">Add to cart</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-count-down">
                                    <div class="nozari-countdown" data-y="2020" data-m="9" data-w="2" data-d="30"
                                         data-h="20" data-i="60" data-s="60"></div>
                                </div>
                            </div>
                            <div class="product-info">
                                <h5 class="product-name product_title">
                                    <a href="#">Long Sleeve Midi</a>
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
                                            $65
                                        </del>
                                        <ins>
                                            $45
                                        </ins>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner-wrapp">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="banner">
                            <div class="item-banner style4">
                                <div class="inner">
                                    <div class="banner-content">
                                        <h4 class="nozari-subtitle">Clothes Essential!</h4>
                                        <h3 class="title">Square neck top</h3>
                                        <div class="description">
                                            Proin interdum magna primis id consequat dictum
                                        </div>
                                        <a href="#" class="button btn-shop-now">Shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="banner">
                            <div class="item-banner style5">
                                <div class="inner">
                                    <div class="banner-content">
                                        <h3 class="title">Smock dress<br/>Collection</h3>
                                        <span class="code">
												Use code:
												<span>
													NOZARI
												</span>
												Get 25% Off for all Accessories items!
											</span>
                                        <a href="#" class="button btn-shop-now">Shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner-wrapp rows-space-65">
            <div class="container">
                <div class="banner">
                    <div class="item-banner style17">
                        <div class="inner">
                            <div class="banner-content">
                                <h3 class="title">long sleeve midi dress </h3>
                                <div class="description">
                                    You have no clothes & Are you <br/>ready to grow? come & shop with us!
                                </div>
                                <div class="banner-price">
                                    Price from:
                                    <span class="number-price">$45.00</span>
                                </div>
                                <a href="#" class="button btn-shop-now">Shop now</a>
                                <a href="#" class="button btn-view-collection">View more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="nozari-tabs  default rows-space-40">
            <div class="container">
                <div class="tab-head">
                    <ul class="tab-link">
                        <li class="active">
                            <a data-toggle="tab" aria-expanded="true" href="#bestseller">Bestseller</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" aria-expanded="true" href="#new_arrivals">New Arrivals </a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" aria-expanded="true" href="#top-rated">Top Rated</a>
                        </li>
                    </ul>
                </div>
                <div class="tab-container">
                    <div id="bestseller" class="tab-panel active">
                        <div class="nozari-product">
                            <ul class="row list-products auto-clear equal-container product-grid">
                                <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-1.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-2.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-3.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-4.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-5.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-6.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-7.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-8.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="new_arrivals" class="tab-panel">
                        <div class="nozari-product">
                            <ul class="row list-products auto-clear equal-container product-grid">
                                <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-9.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-10.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-11.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-13.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-14.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-15.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-16.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-2.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="top-rated" class="tab-panel">
                        <div class="nozari-product">
                            <ul class="row list-products auto-clear equal-container product-grid">
                                <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-10.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-12.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-8.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-4.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-9.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-13.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-16.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                    <div class="product-inner equal-element">
                                        <div class="product-top">
                                            <div class="flash">
													<span class="onnew">
														<span class="text">
															new
														</span>
													</span>
                                            </div>
                                        </div>
                                        <div class="product-thumb">
                                            <div class="thumb-inner">
                                                <a href="#">
                                                    <img src="assets/images/product-item-8.jpg" alt="img">
                                                </a>
                                                <div class="thumb-group">
                                                    <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button">
                                                            <a href="#">Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="button quick-wiew-button">Quick View</a>
                                                    <div class="loop-form-add-to-cart">
                                                        <button class="single_add_to_cart_button button">Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h5 class="product-name product_title">
                                                <a href="#">Long Sleeve Midi</a>
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
                                                        $65
                                                    </del>
                                                    <ins>
                                                        $45
                                                    </ins>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="instagram-wrapp">
    <div>
        <h3 class="custommenu-title-blog">
            <i class="flaticon-instagram" aria-hidden="true"></i>
            Instagram Feed
        </h3>
        <div class="nozari-instagram">
            <div class="instagram owl-slick equal-container"
                 data-slick='{"autoplay":false, "autoplaySpeed":1000, "arrows":false, "dots":false, "infinite":true, "speed":800, "rows":1}'
                 data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":5}},{"breakpoint":"1200","settings":{"slidesToShow":4}},{"breakpoint":"992","settings":{"slidesToShow":3}},{"breakpoint":"768","settings":{"slidesToShow":2}},{"breakpoint":"481","settings":{"slidesToShow":2}}]'>
                <div class="item-instagram">
                    <a href="#">
                        <img src="assets/images/item-instagram-1.jpg" alt="img">
                    </a>
                    <span class="text">
                        <i class="icon flaticon-instagram" aria-hidden="true"></i>
			        </span>
                </div>
                <div class="item-instagram">
                    <a href="#">
                        <img src="assets/images/item-instagram-2.jpg" alt="img">
                    </a>
                    <span class="text">
                        <i class="icon flaticon-instagram" aria-hidden="true"></i>
			        </span>
                </div>
                <div class="item-instagram">
                    <a href="#">
                        <img src="assets/images/item-instagram-3.jpg" alt="img">
                    </a>
                    <span class="text">
                        <i class="icon flaticon-instagram" aria-hidden="true"></i>
			        </span>
                </div>
                <div class="item-instagram">
                    <a href="#">
                        <img src="assets/images/item-instagram-4.jpg" alt="img">
                    </a>
                    <span class="text">
                        <i class="icon flaticon-instagram" aria-hidden="true"></i>
			        </span>
                </div>
                <div class="item-instagram">
                    <a href="#">
                        <img src="assets/images/item-instagram-5.jpg" alt="img">
                    </a>
                    <span class="text">
                        <i class="icon flaticon-instagram" aria-hidden="true"></i>
			        </span>
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
                            <a href="index.html"><img src="assets/images/logo-light.png" alt="img"></a>
                        </div>
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="#"><span class="flaticon-placeholder"></span>45 Grand Central Terminal New
                                    York,NY 1017 United State USA</a>
                            </li>
                            <li class="menu-item">
                                <a href="#"><span class="fa fa-phone"></span>(+123) 456 789 - (+123) 666 888</a>
                            </li>
                            <li class="menu-item">
                                <a href="#"><span class="fa fa-envelope-o"></span>Contact@yourcompany.com</a>
                            </li>
                            <li class="menu-item">
                                <a href="#"><span class="flaticon-clock"></span>Mon-Sat 9:00pm - 5:00pm Sun : Closed</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
                    <div class="nozari-custommenu default">
                        <h2 class="widgettitle">Quick Menu</h2>
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="#">New arrivals</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Life style</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Trousers</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Bags</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Shoes</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
                    <div class="nozari-custommenu default">
                        <h2 class="widgettitle">Information</h2>
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="#">FAQs</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Track Order</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Delivery</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Contact Us</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Return</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4">
                    <div class="nozari-newsletter style1">
                        <div class="newsletter-head">
                            <h3 class="title">Newsletter</h3>
                        </div>
                        <div class="newsletter-form-wrap">
                            <div class="list">
                                Get notified of new products, limited releases, and more.
                            </div>
                            <input type="email" class="input-text email email-newsletter"
                                   placeholder="Your email letter">
                            <button class="button btn-submit submit-newsletter">SUBSCRIBE</button>
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
                            Copyright © 2019
                            <a href="#">Nozari</a>
                            . All rights reserved
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="nozari-payment">
                            <img src="assets/images/payments.png" alt="img">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="footer-device-mobile">
    <div class="wapper">
        <div class="footer-device-mobile-item device-home">
            <a href="index.html">
					<span class="icon">
						<i class="fa fa-home" aria-hidden="true"></i>
					</span>
                Home
            </a>
        </div>
        <div class="footer-device-mobile-item device-home device-wishlist">
            <a href="#">
					<span class="icon">
						<i class="fa fa-heart" aria-hidden="true"></i>
					</span>
                Wishlist
            </a>
        </div>
        <div class="footer-device-mobile-item device-home device-cart">
            <a href="#">
					<span class="icon">
						<i class="fa fa-shopping-basket" aria-hidden="true"></i>
						<span class="count-icon">
							0
						</span>
					</span>
                <span class="text">Cart</span>
            </a>
        </div>
        <div class="footer-device-mobile-item device-home device-user">
            <a href="login.html">
					<span class="icon">
						<i class="fa fa-user" aria-hidden="true"></i>
					</span>
                Account
            </a>
        </div>
    </div>
</div>
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
<script src="assets/js/frontend-plugin.js"></script></body>
</html>