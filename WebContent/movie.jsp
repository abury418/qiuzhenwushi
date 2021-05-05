<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>电影推荐</title>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/all.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Montserrat&amp;display=swap"rel="stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="css/movie.css">
</head>
<body>

<div class="promotion-carousel">
  <div class="promotions">
    <div>
      <div class="promotion" id="section1">
        <div class="shade"></div>
        <div class="promo-detail cycle-overlay">
          <div class="promo-text">
            <span class="dash"></span>
            <span class="promo-flag">2021-5-4<br></span>
            <span class="promo-flag">电影速递</span>
            <a href="#" class="copy">
              <div class="headline">恐龙专题</div>
              <p class="body long">恐龙对我们而言，是古老而神秘的动物。那么你是不是对恐龙很好奇呢？ 
              </br>
              去恐龙时代冒险 <span style="color:red">>|</span>
              </p>
            </a>
            <div class="buttons">
              <a class="button sho-play-link" href="index_1.jsp"></span>返回首页</a>
          </div>
        </div>
      </div>
    </div>
</div>
</div>
</div>


<!-- partial:index.partial.html -->
<div class="app">
	<div class="app__bg">
		<div class="app__bg__image current--image">
			<img src="images/movies/m1.jpg" alt="" />
		</div>
		<div class="app__bg__image next--image">
			<img src="images/movies/m2.jpg" alt="" />
		</div>
		<div class="app__bg__image previous--image">
			<img src="images/movies/m3.jpg" alt="" />
		</div>
	</div>
	
	
	<div class="cardList">
		<button class="cardList__btn btn btn--left">
			<div class="icon">
				<svg>
					<use xlink:href="#arrow-left"></use>
				</svg>
			</div>
		</button>

		<div class="cards__wrapper">
			<div class="card current--card">
				<div class="card__image">
					<img src="images/movies/m1.jpg" alt="" />
				</div>
			</div>

			<div class="card next--card">
				<div class="card__image">
					<img src="images/movies/m2.jpg" alt="" />
				</div>
			</div>

			<div class="card previous--card">
				<div class="card__image">
					<img src="images/movies/m3.jpg" alt="" />
				</div>
			</div>
			
		</div>

		<button class="cardList__btn btn btn--right">
			<div class="icon">
				<svg>
					<use xlink:href="#arrow-right"></use>
				</svg>
			</div>
		</button>
	</div>

	<div class="infoList">
		<div class="info__wrapper">
			<div class="info current--info">
				<h1 class="text name">侏罗纪公园</h1>
				<h4 class="text location">Jurassic Park</h4>
				<p class="text description">影片主要讲述了哈蒙德博士召集大批科学家利用凝结在</br>琥珀中的史前蚊子体内的恐龙血液提取出恐龙的遗传基</br>因，将已绝迹6500万年的史前庞然大物复生，使整个</br>努布拉岛成为恐龙的乐园，即“侏罗纪公园”。但在哈蒙</br>德带孙子孙女首次游览时，恐龙发威了。</p>
			</div>

			<div class="info next--info">
				<h1 class="text name">史前公园</h1>
				<h4 class="text location">Prehistoric Park </h4>
				<p class="text description">该纪录片主要讲述的是灭绝的物种重新活过来的故事。</p>
			</div>

			<div class="info previous--info">
				<h1 class="text name">驯龙高手</h1>
				<h4 class="text location">How to Train Your Dragon </h4>
				<p class="text description" style="width:100px">故事讲述一个住在博克岛的维京少年希卡普，他必须通</br>过驯龙测验，才能正式成为维京勇士。驯龙测验即将到</br>来，希卡普必须把握这唯一的机会，向族人和他爸爸证</br>明他存在的价值。但是，当希卡普遇见一只受伤的龙，</br>并且和这只龙成为朋友之后，希卡普的世界将从此彻底</br>改变。</p>
			</div>
			
		</div>
	</div>


	
</div>


<svg class="icons" style="display: none;">
	<symbol id="arrow-left" xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'>
		<polyline points='328 112 184 256 328 400'
					 style='fill:none;stroke:#fff;stroke-linecap:round;stroke-linejoin:round;stroke-width:48px' />
	</symbol>
	<symbol id="arrow-right" xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'>
		<polyline points='184 112 328 256 184 400'
					 style='fill:none;stroke:#fff;stroke-linecap:round;stroke-linejoin:round;stroke-width:48px' />
	</symbol>
</svg>


<div class="loading__wrapper">
	<div class="loader--text">电影在路上，稍等片刻...</div>
	<div class="loader">
		<span></span>
	</div>
</div>

<!-- partial -->
<script src='https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/3.3.3/gsap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script  src="scripts/movie.js"></script>
</body>
</html>