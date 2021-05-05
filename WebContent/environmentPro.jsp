<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<meta name="description" content="Midnight.js is a jQuery plugin that lets you subtly change your headers to make them match the content as you scroll." />
  <meta name="keywords" content="js, jquery, scroll, plugin, animation" />
  <meta name="robots" content="INDEX, FOLLOW" />
  <meta name="author" content="Aerolab" />

  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui" />

  <!-- Facebook Stuff -->
  <meta property="og:type" content="website" />
  <meta property="og:site_name" content="Midnight.js" />
  <meta property="og:title" content="Midnight.js - Switch fixed headers on the fly" />
  <meta property="og:description" content="Midnight.js is a jQuery plugin that lets you subtly change your headers to make them match the content as you scroll." />
  <meta property="og:image" content="http://aerolab.github.io/midnight.js/assets/images/midnight-facebook.png" />
  <meta property="og:url" content="http://aerolab.github.io/midnight.js" />
  <meta property="fb:app_id" content="344819049029949" />

  <!-- Twitter Stuff -->
  <meta property="twitter:card" content="summary" />
  <meta property="twitter:site" content="@aerolab" />
  <meta property="twitter:title" content="Midnight.js - Switch fixed headers on the fly" />
  <meta property="twitter:description" content="Midnight.js is a jQuery plugin that lets you subtly change your headers to make them match the content as you scroll." />
  <meta property="twitter:image" content="http://aerolab.github.io/midnight.js/assets/images/midnight-twitter.png" />
  <meta property="twitter:url" content="http://aerolab.github.io/midnight.js" />

  <link rel="icon" href="assets/images/favicon.ico" type="image/icon" />
  <link rel="shortcut icon" href="assets/images/favicon.ico" type="image/x-icon" />

  <meta name="X-UA-Compatible" content="IE=edge" />
  <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
  <meta name="apple-mobile-web-app-capable" content="yes" />

  <link href="http://fonts.googleapis.com/css?family=Lato:400,300italic,400bold" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="assets/css/normalize.css" />
  <link rel="stylesheet" href="assets/css/animate.css" />
  <link rel="stylesheet" href="assets/css/styles.css" />

  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-21195039-3', 'aerolab.github.io');
    ga('require', 'displayfeatures');
    ga('require', 'linkid', 'linkid.js');
    ga('send', 'pageview');
  </script>
<title>地球疗愈</title>
</head>
<body>
<!-- Our super awesome changing header! -->
  <nav class="fixed">
    <div class="midnightHeader default">
      <div class="logo-holder">
        <a class="logo"><span class="screenreader"></span></a>
      </div>
    </div>
  </nav>


  <div class="top-links" data-midnight="white">
    <a href="index_1.jsp" style="font-size:20px;margin-top:7px;color:white;text-decoration:none;float:right;font-weight:600">返回首页</a>
  </div>


  <div class="first-background" data-midnight="white">
     
  </div>


  <header data-midnight="black">

    <div class="container">

      <h1 class="wow fadeInUp">地球疗愈</h1>
      <p class="wow fadeInUp">我们一起，治愈地球的伤口…</p>

      <div class="scroll-prompt wow fadeInUp"></div>

      <figure id="space-island">
        <img class="wow fadeInUp" src="assets/css/images/space-island.jpg" />
      </figure>
      
    </div>

  </header>


  <section class="step step-one" data-midnight="blue" >

    <div class="container">
      <div class="instructions wow fadeInLeft">
        <h2>曾经…</h2>
        <p>从草履虫到万事万物，从鸿蒙之初开始，地球母亲经过漫长的进化，才抵达了今日的繁荣</p>
        <p>但人类的活动却让她伤痕累累… .</p>
      </div>

      <!--<pre class="line-numbers wow fadeInRight">-->
			      	<!--<img src="assets/css/images/environmental-protection.jpg" style="position: absolute;" width="400px" />-->
      <!--</pre>-->
    </div>

  </section>


  <section class="step step-two" data-midnight="light">

    <div class="container">
      <div class="line-numbers wow fadeInRight">
        <h2>全球变暖</h2>
        <p>随着气候变化加剧，北极熊的生存环境遭到极大破坏，这一物种或将于2100年灭绝。
        	北极熊依靠北冰洋上的海冰觅食，而随着气候变暖导致海冰融化，北极熊被迫前往海岸地区寻找食物、哺育幼崽，这或将导致北极熊的数量大幅下降。
        	</p>
        <p>如果气候变化仍然以目前的进程发展，地球上多达1/6的物种将消失不见。</p>
      </div>

    </div>

  </section>


  <section class="step step-three" data-midnight="dark">

    <div class="container">
      <div class="instructions wow fadeInLeft">
        <h2>矿产枯竭</h2>
        <p>人类对矿产等不可再生资源的肆意开采，使得地球多种资源面临枯竭</p>
        <p>赖以生存的资源日渐稀少，人类又该何去何从？</p>
      </div>

    </div>

  </section>



  <section class="step step-four" data-midnight="lighter">

    <div class="container">
      <div class="instructions wow fadeInLeft">
        <h2><b>垃圾污染</b></h2>
        <p style="color: white;"><b>全世界的垃圾生产量在不断增长着，每年产生的垃圾约达100亿吨，相当于全世界粮食产量的6倍，钢产量的14倍。</b></p>
      </div>

      
    </div>

  </section>


  <section class="step step-five full-height" data-midnight="white">

    <div class="container">

      <div class="instructions wow fadeInLeft">
        <h2>大气污染</h2>
        <p>空气污染在全球范围内造成了巨大的人员伤亡，使呼吸道疾病患者难以呼吸，很多年轻人和老年人不得不前往医院，
        	有些人失去了学习和工作的机会，甚至因此而早逝。在报告中，我们看到了世界某些地区的实际进展，但人类仍然面临着严重的挑战，亟待消除这种可以避免的痛苦。</p>
        
      	
      </div>


      <!--<pre class="line-numbers wow fadeInRight"><code class="language-markup">&lt;nav class="fixed"&gt;
  &lt;!-- Your standard header --&gt;
  &lt;div class="midnightHeader default"&gt;
    &lt;a class="logo"&gt;Logo&lt;/a&gt;
  &lt;/div&gt;

  &lt;!-- A header with butterflies --&gt;
  &lt;div class="midnightHeader butterflies"&gt;
    &lt;a class="logo"&gt;Logo&lt;/a&gt;
    &lt;span class="a-butterfly"&gt;&lt;/span&gt;
    &lt;span class="another-butterfly"&gt;&lt;/span&gt;
  &lt;/div&gt;
&lt;/nav&gt;</code></pre>-->

    </div>

  </section>



  <footer class="footer" data-midnight="full">


    <div class="illustration-city">

      <div class="container">
      	<h1 style="color: white;"><b>地球的疗愈，需要你的一份力量！</b></h1>
        <div class="buttons wow fadeIn">
          <a class="button" download>了解更多</a>
          <!--<a class="button" href="https://github.com/Aerolab/midnight.js" target="_blank"><i class="icon-github"></i> Fork on GitHub</a>-->
        </div>
      </div>

      

    </div>

  </footer>


  <script src="assets/js/jquery-1.11.1.min.js"></script>
  <script src="assets/js/sscr.min.js"></script>
  <script src="assets/js/prism.js"></script>
  <script src="assets/js/wow.min.js"></script>
  <script src="assets/js/viewport-units-buggyfill.js"></script>
  <script src="midnight.jquery.min.js"></script>
  <script>



    $(document).ready(function(){
      // vh fix for iOS7 (Not that it works well on that anyway)
      viewportUnitsBuggyfill.init();

      $(window).resize(function(){
        viewportUnitsBuggyfill.refresh();
      });

      // Start Midnight!
      $('nav.fixed').midnight();

      // Start wow.js
      new WOW().init();

      // The island disappears when the logo moves on top of it
      var $island = $('#space-island');
      var islandTop = $island.offset().top;
      var windowHeight = $(window).height();

      $(window).resize(function(){
        islandTop = $island.offset().top;
        windowHeight = $(window).height();
      });

      $(document).scroll(function(){
        var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
        var minScrollTop = islandTop - windowHeight * 0.4;
        var maxScrollTop = islandTop;

        // Opacity goes from 1.0 at the bottom 2/3 of the screen to 0.4 at the top
        if( scrollTop <= islandTop*2 ) {
          var targetOpacity = 1.0;
          var minOpacity = 0.4;

          if( scrollTop > minScrollTop && scrollTop < maxScrollTop ) {
            targetOpacity = ((maxScrollTop - scrollTop) / (maxScrollTop - minScrollTop)) * (1.0 - minOpacity) + minOpacity;
          }
          else if( scrollTop > maxScrollTop ) {
            targetOpacity = minOpacity;
          }
          else if( scrollTop < minScrollTop ) {
            targetOpacity = 1.0;
          }

          $island.css('opacity', targetOpacity);
        }

      });

      $('.scroll-prompt').click(function(event){
        event.preventDefault();
        $('html, body').animate({
          scrollTop: $("section.step-one").offset().top - $('nav').height() * 0.5
        }, 1000, 'swing');
      });

      $(window).trigger('resize');

    });
  </script>

</body>
</html>