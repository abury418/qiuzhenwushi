<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>恐龙专题</title>
<link rel="stylesheet" href="css/dinosaurcolumn.css">
</head>
<body>
<!-- partial:index.partial.html -->
<header data-header class="page-header">
	<nav>
		<ul class="nav__list">
			<li class="nav__item">
				<a href="/"></a>
			</li>
			<li class="nav__item">
				<a href="/">认识恐龙</a>
			</li>
			<li class="nav__item nav__item--cta">
				<a href="index_1.jsp">返回首页</a>
			</li>
		</ul>
	</nav>
</header>

<main>
	<section class="section hero">
		<div class="hero__bg">
			<img
				class="hero__img"
				src=images/popular-location-03.jpg
				alt="Rainforest view with sunset"
			/>
		</div>
		<div
			class="hero__content"
			data-content
		>
			<div class="hero__text">
				<img class="hero__footprint" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/85648/footprint_01a.svg" alt="Dinosaur footprint">
				<h1 class="hero__title">恐龙<br />专题</h1>
				<p class="hero__intro">科学家们根据恐龙骨骼的化石，通过恐龙骨盆结构的对比。将恐龙分成了两大类：蜥臀目恐龙和鸟臀目恐龙。</p>
				<p class="hero__intro" style="margin-top:0">又根据恐龙牙齿的化石，对恐龙是食肉和食草的也进行了区分。</p>
				<p class="hero__intro" style="margin-top:0">有些恐龙的骨骼化石不完整，只有一些皮肤、粪便，恐龙蛋等化石。</p>
				<p class="hero__intro" style="margin-top:0">最终恐龙的分类共计2目7亚目57科350余属800余种！</p>
			</div>
		</div>
	</section>

	<section class="section gentle-giants">
		<header class="section__header">
			<h3 class="section__title">探索</h3>
			<span><img src="https://www.smashbros.com/wiiu-3ds/images/character/lizardon/main.png" style="width:40%;height:40%"/></span>
		</header>
		<div
			class="section__content section__content--gentle-giants"
			data-content
		>
			<img class="section__img" src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/85648/trex.svg' alt='Parasaurolophus'>
			<h2 class="section__main-title section__main-title--left">
				蜥臀目恐龙
			</h2>
			<div class="section__intro gentle-giants__intro">
				<p style="font-size:24px">
					蜥臀目包括两个亚目，即兽脚亚目与蜥脚亚目，其中兽脚亚目包含了所有的肉食性恐龙，而蜥脚亚目则是体型庞大的草食性动物演化分支。
				</p>
				<p><a href="./showctrl?action=todinosaurs">>查看蜥臀类恐龙百科></a></p>
			</div>
		</div>
	</section>

	

	<section class="section aerial-adventure" style="margin-top:350px">
		<header class="section__header">
			<h3 class="section__title">发现</h3>
			<span><img src="https://www.smashbros.com/wiiu-3ds/images/character/lizardon/main.png" style="width:40%;height:40%"/></span>
		</header>
		<div
			class="section__content"
			data-content
		>
			<img class="section__img" src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/85648/parasaurolophus.svg' alt='Pterodactyl'>
			<h2 class="section__main-title section__main-title--left">鸟臀目恐龙</h2>
			<div class="section__intro aerial-adventure__intro">
				<p style="font-size:24px">
					鸟臀目分为5大类：鸟脚类、剑龙类、甲龙类，角龙类和肿头龙类。
				</p>
				<p><a href="./showctrl?action=todinosaurs2">>查看鸟臀类恐龙百科></a></p>
			</div>
		</div>
	</section>
</main>
<!-- partial -->
  <script  src="scripts/dinosaurcolumn.js"></script>
</body>
</html>