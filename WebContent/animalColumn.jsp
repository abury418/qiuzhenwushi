<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.javaee.dao.IStoneDAO,java.util.ArrayList,java.util.*,com.javaee.util.DAOFactory,com.javaee.bean.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<meta name="description" content="The online portfolio of web apps, programs, and games created by designer Jim Kulakowski.">
		<meta name="keywords" content="HTML,CSS,XML,JavaScript,JQuery,web programming,app development,syracuse web development,syracuse,ny,web development,web design,user interface design,ui design,user experience design,ux design">
		<meta name="author" content="Jim Kulakowski">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile friendly -->
    <link rel="shortcut icon" type="image/png" href="http://jimkulakowski.com/web-portfolio/favicon.ico"/>

		<!-- Import Font Awesome -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

		<!-- Import Google Font -->
		<link href='https://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'><link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel="stylesheet" href="css/animalcolumn.css">
<title>史前漫记</title>
</head>
<body>
<!-- partial:index.partial.html -->
<!-- Jumbotron Feature -->
<div class="jumbotron">
  <div class="container">
    <img src="images/1.jpg" alt="Image of mac laptop on a desk" class="parallax-img">
    <h1>史前生物科普</h1>
    <hr class="style-seven" />
    <h4>史前生物也称古生物，指生存在地球历史的地质年代中、而现已大部分绝灭的生物。</br>包括古植物（芦木、鳞木等）、古无脊椎动物（货币虫、三叶虫、菊石等）、古脊椎动物（恐龙、始祖鸟、猛犸等）。
</br>古生物死后，除极少数（如冻土中的猛犸，琥珀中的昆虫）由于特殊条件，仍保存原有的组织结构外，绝大多数经过钙化、碳化、硅化，或其他矿化的填充和交替石化作用，形成仅具原来硬体部分的形状、结构、印模等的化石。</h4>
    
  </div>
</div>

<!------------------------------------
		--     Begin Main Page Content      --
		------------------------------------->
<div class="container-fluid">

  <!-- Fixed Navbar -->
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">

      <div class="container">

        <!-- Mobile menu button -->
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>

        <!-- Site Branding -->
        <div class="navbar-header">
          <a class="navbar-brand" href="index_1.jsp">
            <img src="images/logo.png" alt="求珍悟石" class="site-logo">
            <p>求珍悟石</p>
          </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li><a href="#portfolio">古植物</a></li>
            <li><a href="#about">古无脊椎动物</a></li>
            <li><a href="#skills">古脊椎动物</a></li>
            <li><a href="index_1.jsp">返回首页</a></li>
          </ul>
        </div>
        <!-- END .navbar-collapse -->
      </div>
      <!-- END .container -->
    </div>
    <!-- END .container-fluid -->
  </nav>

	<%
    	 request.setCharacterEncoding("utf-8"); 
		 response.setCharacterEncoding("utf-8"); 
         ArrayList<Animal> alist1= (ArrayList<Animal>)request.getAttribute("alist1");
         ArrayList<Animal> alist2= (ArrayList<Animal>)request.getAttribute("alist2");
         ArrayList<Animal> alist3= (ArrayList<Animal>)request.getAttribute("alist3");
      %>
  <!---------------------------
			--  Portfolio Image Links  --
			---------------------------->
  <section id="portfolio">

    <div class="container">

      <h1>古植物</h1>
      <hr class="style-seven" />

      <!-- Row #1 -->
      <div class="row">
      <%
      	for(int i=0;i<alist1.size();i++){
      		
      %>
        <div class="col-md-4 soft-transition">
          <!-- loadModal(title, thumb, body, launchLink) 
								-- from custom-modal-functions.js -->
          <a href="#" data-toggle="modal" data-target="#modal" onclick="loadModal('<%=alist1.get(i).getANName() %>', '<%=alist1.get(i).getANImg() %>', '<%=alist1.get(i).getANBrief() %><br /><br /><%=alist1.get(i).getANState() %><br /><br /><%=alist1.get(i).getANFrom() %>', '#')">
            <div class="project-overlay teall-bg"></div>
            <img src="<%=alist1.get(i).getANImg() %>" alt="cube art thumbnail" class="project-thumb">
            <h3><%=alist1.get(i).getANName() %></h3>
          </a>
        </div>
        <%} %>
      </div>
        <!--------------------------
						--         Modal          --
						--------------------------->
        <!-- Cube Art -->
        <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h2 class="modal-title" id="myModalLabel"></h2>
              </div>
              <div class="modal-thumb">
                <img src="" alt="">
              </div>
              <div class="modal-body"></div>
              <div class="modal-footer">
                
              </div>
            </div>
          </div>
        </div>

      </div>
      <!-- END .container -->
</section>

  <section id="about">

    <div class="container">

      <h1>古无脊椎动物</h1>
      <hr class="style-seven" />

      <!-- Row #1 -->
      <div class="row">
      <%
      	for(int j=0;j<alist2.size();j++){
      		
      %>
        <div class="col-md-4 soft-transition">
          <!-- loadModal(title, thumb, body, launchLink) 
								-- from custom-modal-functions.js -->
          <a href="#" data-toggle="modal" data-target="#modal" onclick="loadModal('<%=alist2.get(j).getANName() %>', '<%=alist2.get(j).getANImg() %>', '<%=alist2.get(j).getANBrief() %><br /><br /><%=alist2.get(j).getANState() %><br /><br /><%=alist2.get(j).getANFrom() %>', '#')">
            <div class="project-overlay teall-bg"></div>
            <img src="<%=alist2.get(j).getANImg() %>" alt="cube art thumbnail" class="project-thumb">
            <h3><%=alist2.get(j).getANName() %></h3>
          </a>
        </div>
        <%} %>
      </div>
      
        <!--------------------------
						--         Modal          --
						--------------------------->
        <!-- Cube Art -->
        <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h2 class="modal-title" id="myModalLabel"></h2>
              </div>
              <div class="modal-thumb">
                <img src="" alt="">
              </div>
              <div class="modal-body"></div>
              <div class="modal-footer">
                
              </div>
            </div>
          </div>
        </div>

      </div>
      <!-- END .container -->

  </section>
  
  <section id="skills">

    <div class="container">

      <h1>古脊椎动物</h1>
      <hr class="style-seven" />

      <!-- Row #1 -->
      <div class="row">
        <%
      	for(int k=0;k<alist3.size();k++){
      		
      %>
        <div class="col-md-4 soft-transition">
          <a href="#" data-toggle="modal" data-target="#modal" onclick="loadModal('<%=alist3.get(k).getANName() %>', '<%=alist3.get(k).getANImg() %>', '<%=alist3.get(k).getANBrief() %><br /><br /><%=alist3.get(k).getANState() %><br /><br /><%=alist3.get(k).getANFrom() %>', '#')">
            <div class="project-overlay teall-bg"></div>
            <img src="<%=alist3.get(k).getANImg() %>" alt="cube art thumbnail" class="project-thumb">
            <h3><%=alist3.get(k).getANName() %></h3>
          </a>
        </div>
        <%} %>
      </div>

        <!--------------------------
						--         Modal          --
						--------------------------->
        <!-- Cube Art -->
        <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h2 class="modal-title" id="myModalLabel"></h2>
              </div>
              <div class="modal-thumb">
                <img src="" alt="">
              </div>
              <div class="modal-body"></div>
              <div class="modal-footer">
                
              </div>
            </div>
          </div>
        </div>

      </div>
      <!-- END .container -->

  </section>

</div>

<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js'></script>
  <script  src="scripts/animalcolumn.js"></script>

</body>
</html>