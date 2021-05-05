<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.bean.*,com.javaee.biz.*,java.util.ArrayList"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>购物车</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
          rel="stylesheet">
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
	<script src="assets/js/jquery-1.12.4.min.js"></script>
</head>
<body class="inblog-page">
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
<div class="site-content">
    <main class="site-main  main-container no-sidebar">
        <div class="container">
            <div class="breadcrumb-trail breadcrumbs">
                <ul class="trail-items breadcrumb">
                    <li class="trail-item trail-begin">
                        <a href="index.jsp">
								<span>
									主页
								</span>
                        </a>
                    </li>
                    <li class="trail-item trail-end active">
							<span>
								购物车
							</span>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="main-content-cart main-content col-sm-12">
                    <h3 class="custom_blog_title">
                        购物车
                    </h3>
                    <div class="page-main-content">
                        <div class="shoppingcart-content">
                            <form action="shoppingcart.html" class="cart-form">
                                <table class="shop_table">
                                    <thead>
                                    <tr>
                                        <th class="product-remove"></th>
                                        <th class="product-thumbnail"></th>
                                        <th class="product-name"></th>
                                        <th class="product-price"></th>
                                        <th class="product-quantity"></th>
                                        <th class="product-subtotal"></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                    ArrayList<CartItem> arr = (ArrayList<CartItem>) request.getAttribute("itemlist");
                                    float sumPri=0;
    								for (int i = 0; i < arr.size(); i++) {
			                        		//System.out.println(Integer.toString(arr.size()));
										sumPri+=arr.get(i).getSumPrice();
			                        %>
                                    
                                    <tr class="cart_item">
                                        <td class="product-remove">
                                            <input type="hidden" value="<%=arr.get(i).getDishId() %>" class="ids">
                                            <a href="#" class="remove" onclick="del(<%=arr.get(i).getDishId() %>,this.parentNode.parentNode)"></a>
                                        </td>
                                        
                                        
                                        
                                        <td class="">
                                      	 	<label class="form-checkbox" Style="margin-left:25px;">
												<input type="checkbox" class="input-checkbox" onclick="checkClick(this.parentNode.parentNode.parentNode)" Style="margin-left:25px;">
												<span>
													记住账号
												</span>
											</label>			
										</td>
											
											
											
                                        <td class="product-thumbnail">
                                            <a href="#" >
                                                <img src="<%=arr.get(i).getDishPic()%>" alt="img"
                                                     class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image">
                                            </a>
                                        </td>
                                        <td class="product-name" data-title="Product">
                                            <a href="#" class="title"><%=arr.get(i).getDishName()%></a>
                                            <span class="attributes-select attributes-color"><%=arr.get(i).getDishDetails()%></span>
                                  
                                        </td>
                                        <td class="product-quantity" data-title="Quantity">
                                            <div class="quantity">
                                                <div class="control">
                                                    <a class="btn-number qtyminus quantity-minus" href="#" id="jian" onclick="min(<%=arr.get(i).getDishId() %>)">-</a>
                                                    <input type="text" data-step="1" data-min="0" value="<%=arr.get(i).getDishNum()%>" 
                                                    title="Qty" class="input-qty qty" size="4" id="Qty<%=arr.get(i).getDishId() %>">
                                                    <a href="#" class="btn-number qtyplus quantity-plus" id="jia" onclick="max(<%=arr.get(i).getDishId() %>)">+</a>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="product-price" data-title="Price">
													<span class="woocommerce-Price-amount amount">
														<span class="woocommerce-Price-currencySymbol">
															￥
														</span>
														<input type="text" class="priceinput" disabled style="display:inline;width:134px; border:0px; background:rgb(255,255,255)" id="priceinput<%=arr.get(i).getDishId() %>" readonly="readonly" value="<%=arr.get(i).getSumPrice()%>">
														
													</span>
                                        </td>
                                    </tr>
                          
                                  <%
			                        	}
			                        %>
                                  
                                 <script>
                                 
                                 function checkClick(obj){
                                	 var checkprice=0;
                                	 $(".input-checkbox").each(function(){
                                		 if($(this).is(":checked")){
                                			 checkprice+=Number($(this.parentNode.parentNode.parentNode.children[5].children[0].children[1]).val());
                                		 }
                                	 })
                                	 $("#totalPrice").val(checkprice); 
                                 }
                                 //减点击事件
								function min(id){
                                	 //因为设置了动态id
                                	 //根据动态id 获取总数
									var sumNum=Number($("#Qty"+id+"").val());
                                	 //总价
									var sumPrice=$("#priceinput"+id+"").val();
                                	 //计算单价
									var price=sumPrice/sumNum;
                                	 //赋值
									$("#priceinput"+id+"").val(price*(sumNum-1));
                                	 //计算订单总价
									allPrice();
                                	 //提交数据到后台
									$.ajax({
										type:"post",
										data:{
											action:"update",
											DishId:id,
											DishNum:sumNum-1,
											UserId:<%=user.getUserId() %>
										},
										url:"updatecart"
									})
								}
								function max(id){
									var sumNum=Number($("#Qty"+id+"").val());
									var sumPrice=$("#priceinput"+id+"").val();
									var price=sumPrice/sumNum;
									$("#priceinput"+id+"").val(price*(sumNum+1));
									allPrice();
									$.ajax({
										type:"post",
										data:{
											action:"update",
											DishId:id,
											DishNum:sumNum+1,
											UserId:<%=user.getUserId() %>
										},
										url:"updatecart"
									})
								}
								
							    function allPrice(){
							    	var allPrice=0;
							    	//通过foreach每行的总价进行计算总和
							    	$(".priceinput").each(function(){
							    		allPrice+=Number($(this).val());
							    	})
							    	//赋值
							    	$("#totalPrice").val(allPrice);
							    }
							    
							    //删除点击事件（id:当前要删除的id，rowIndex要删除的dom对象）  dom对象是什么自行百度
							    function del(id,rowIndex){
							    	//执行删除
							    	rowIndex.parentNode.removeChild(rowIndex);
							    	//计算总金额，并赋值
							    	allPrice();
							    	//同下
							    	$.ajax({
							    		type:"post",
							    		data:{
							    			action:"delete",
							    			DishId:id,
							    			UserId:<%=user.getUserId() %>
							    		},
							    		url:"updatecart"
							    	})
							    }
								 </script>
                                    <tr>
                                        <td class="actions">
                          
                                            <div class="order-total">
														<span class="title">
															总价格:
														</span>
                                                <span class="total-price">
															￥<input id="totalPrice" disabled style="width:134px; border:0px; background:rgb(255,255,255);" value="0">
														</span>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </form>
                            <form method="post" name="orderForm"  action="makeorder?action=mkorder&UserId=<%=user.getUserId()%>">
	                            <div class="control-cart">
	                                <a href="index.jsp" class="button btn-continue-shopping">
	                                    继续购物
	                                </a>
	                              <input type="submit" class="button btn-cart-to-checkout" onclick="subOrder()" value="提交订单" name="mkorderinput" > 
	                            </div>
                            </form>

                            <script>
                               
                                function subOrder(){
                                	 var ids=[];
                                	//通过foreach循环class为input-checkbox的复选框
                                	$(".input-checkbox").each(function(){
                                		//判断是否为选中状态
                               		 if($(this).is(":checked")){
                               			 //如果为选中状态，把选中状态的当前行的id放到ids数组 
                               			 ids.push($(this.parentNode.parentNode.parentNode.children[0].children[0]).val());
                               			// ids.push()
                               		 }
                               	 });
                                	//打印数组，方便查看，后续可删除
                                	console.log(ids);
                                	console.log(<%=user.getUserId()%>);
                                	//ajax提交数据到后台
                                	$.ajax({
                                		type:"get",//提交方式
                                		//携带的参数
                                		data:{
                                			action:"mkorder",
                                			ids:ids.toString(),//这里传到后台的是一个id集合
                                			UserId:<%=user.getUserId() %>
                                		},
                                		url:"makeorder",
                                		success: function (result) {
                                			 window.location.href="checkout.jsp";
                               			}
                                	})
                                }
                                
 

                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
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
<script src="assets/js/shop-cart.js"></script>
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