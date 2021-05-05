<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.dao.IStoneDAO,java.util.ArrayList,java.util.*,com.javaee.util.DAOFactory,com.javaee.bean.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="gb2312">
<title>恐龙百科</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-color.css" id="colors">
</head>
<body class="transparent-header">
<!-- Wrapper -->
<div id="wrapper">

<!-- Header Container
================================================== -->
<header id="header-container" class="fullwidth">

	<!-- Header -->
	<div id="header">
		<div class="container">
			
			<!-- Left Side Content -->
			<div class="left-side">
				
				<!-- Logo -->
				<div id="logo">
					<a href="index.html"><img src="images/logo2.png" data-sticky-logo="images/logo.png" alt=""></a>
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

						<li style="width:100px"><a class="current" href="#">返回</a>
							<ul>
								<li><a href="index_1.jsp">返回网站首页</a></li>
								<li><a href="dinosaurColumn.jsp">返回恐龙专题</a></li>
							</ul>
						</li>

						<li style="width:150px"><a href="#">切换类别</a>
							<ul>
								<li><a href="dashboard.html">查看蜥臀类恐龙</a></li>
								<li><a href="dashboard-messages.html">查看鸟臀类恐龙</a></li>
							</ul>
						</li>

					</ul>
				</nav>
				<div class="clearfix"></div>
				<!-- Main Navigation / End -->
				
			</div>
			<!-- Left Side Content / End -->
		</div>
	</div>
	<!-- Header / End -->

</header>
<div class="clearfix"></div>
<!-- Header Container / End -->


<!-- Banner
================================================== -->
<div class="main-search-container full-height alt-search-box centered" data-background-image="images/dinosaur/case.jpg">
	<div class="main-search-inner">

		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<div class="main-search-input">

						<div class="main-search-input-headline">
							<h2>你知道吗？</h2>
							<h4>你知道世界上最大的恐龙是什么恐龙吗？</h4>
						</div>

						<div class="main-search-input-item search-input-icon">
							<p style="color:#8B4726;font-weight:600">答案就是地震龙！</p>
						</div>

						<div class="main-search-input-item">
							<p style="color:#8B4726;font-weight:600;font-size:20px">地震龙（Seismosaurus）意为“使大地震动的蜥蜴”，是较大的植食性恐龙之一，为梁龙科的一个异名。地震龙曾被认为体长超过50米，体重超过150吨。地震龙属于植食性恐龙，生存在1亿4500万-1亿5600万年前的侏罗纪晚期，是有史以来陆地上最长的动物之一，地震龙脖子虽长，但由于颈骨数量少且韧，因此地震龙的脖子并不能像蛇颈龙一般自由弯曲。</p>
						</div>

					</div>
				</div>
			</div>
			
		</div>

	</div>
</div>


<!-- Content
================================================== -->
<%
request.setCharacterEncoding("utf-8"); 
response.setCharacterEncoding("utf-8");
ArrayList<Dinosaur> dlist1= (ArrayList<Dinosaur>)request.getAttribute("dlist1");
ArrayList<Dinosaur> dlist2= (ArrayList<Dinosaur>)request.getAttribute("dlist2");
%>
<!-- Most Visited Places -->
<section class="fullwidth border-top margin-top-65 padding-top-75 padding-bottom-70" data-background-color="#fff" id="d1">

	<div class="container">
		<div class="row">

			<div class="col-md-12">
				<h3 class="headline centered margin-bottom-45">
					<strong class="headline-with-separator">蜥臀目恐龙——蜥脚亚目恐龙</strong>
					<span>蜥脚亚目是蜥臀目的一个亚目，蜥脚亚目的恐龙基本都是食草恐龙，比如像梁龙、马门溪龙这些四足大型的食草恐龙，它们主要生活在侏罗纪和白垩纪。</span>
				</h3>
			</div>
		</div>
	</div>
	
	<!-- Carousel / Start -->
	<div class="simple-fw-slick-carousel dots-nav">
		<%
			for(int i=0;i<dlist1.size();i++){
		%>
		<!-- Listing Item -->
		<div class="fw-carousel-item" style="height:400px">
			<a href="listings-single-page.html" class="listing-item-container compact">
				<div class="listing-item" style="height:100%">
					<img src="<%=dlist1.get(i).getDIImg() %>" alt="">

					<div class="listing-badge now-open"><%=dlist1.get(i).getDIAge() %></div>

					<div class="listing-item-content">
						<div class="numerical-rating" data-rating=""><%=dlist1.get(i).getDIEat() %></div>
						<h3><%=dlist1.get(i).getDIName() %></h3>
						<span><%=dlist1.get(i).getDIBrief() %></span>
					</div>
					<span class="like-icon"></span>
				</div>
			</a>
		</div>
		<!-- Listing Item / End -->
		<%} %>
	</div>
	<!-- Carousel / End -->
</section>
<!-- Fullwidth Section / End -->

<!-- Most Visited Places -->
<section class="fullwidth border-top margin-top-65 padding-top-75 padding-bottom-70" data-background-color="#fff" id="d2">

	<div class="container">
		<div class="row">

			<div class="col-md-12">
				<h3 class="headline centered margin-bottom-45">
					<strong class="headline-with-separator">蜥臀目恐龙——兽脚亚目恐龙</strong>
					<span>兽脚亚目目是蜥臀目的一个亚目，兽脚亚目的恐龙基本都是食肉恐龙，比如像霸王龙、迅猛龙这些两足的食肉恐龙，它们主要生活年代从三叠纪一直到白垩纪。</span>
				</h3>
			</div>
		</div>
	</div>

	<!-- Carousel / Start -->
	<div class="simple-fw-slick-carousel dots-nav">
		<%
			for(int i=0;i<dlist2.size();i++){
		%>
		<!-- Listing Item -->
		<div class="fw-carousel-item" style="height:400px">
			<a href="listings-single-page.html" class="listing-item-container compact">
				<div class="listing-item" style="height:100%">
					<img src="<%=dlist2.get(i).getDIImg() %>" alt="">

					<div class="listing-badge now-open"><%=dlist2.get(i).getDIAge() %></div>

					<div class="listing-item-content">
						<div class="numerical-rating" data-rating=""><%=dlist2.get(i).getDIEat() %></div>
						<h3><%=dlist2.get(i).getDIName() %></h3>
						<span><%=dlist2.get(i).getDIBrief() %></span>
					</div>
					<span class="like-icon"></span>
				</div>
			</a>
		</div>
		<!-- Listing Item / End -->
		<%} %>
	</div>
	<!-- Carousel / End -->
</section>
<!-- Fullwidth Section / End -->

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


<!-- Typed Script -->
<script type="text/javascript" src="scripts/typed.js"></script>
<script>
var typed = new Typed('.typed-words', {
strings: ["Attractions"," Restaurants"," Hotels"],
	typeSpeed: 80,
	backSpeed: 80,
	backDelay: 4000,
	startDelay: 1000,
	loop: true,
	showCursor: true
});
</script>


<!-- Date Range Picker - docs: http://www.daterangepicker.com/ -->
<script src="scripts/moment.min.js"></script>
<script src="scripts/daterangepicker.js"></script>

<script>
$(function() {

    var start = moment().subtract(0, 'days');
    var end = moment().add(2, 'days');

    function cb(start, end) {
        $('#booking-date-search').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
    }
    cb(start, end);
    $('#booking-date-search').daterangepicker({
    	"opens": "right",
	    "autoUpdateInput": true,
	    "alwaysShowCalendars": true,
        startDate: start,
        endDate: end
    }, cb);

    cb(start, end);

});

// Calendar animation and visual settings
$('#booking-date-search').on('show.daterangepicker', function(ev, picker) {
	$('.daterangepicker').addClass('calendar-visible calendar-animated bordered-style');
	$('.daterangepicker').removeClass('calendar-hidden');
});
$('#booking-date-search').on('hide.daterangepicker', function(ev, picker) {
	$('.daterangepicker').removeClass('calendar-visible');
	$('.daterangepicker').addClass('calendar-hidden');
});

$(window).on('load', function() {
    $('#booking-date-search').val('');
});
</script>



</body>
</html>