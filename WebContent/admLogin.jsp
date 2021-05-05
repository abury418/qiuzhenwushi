<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="gb2312">
<title>求珍悟石--管理员登录页面</title>
<!-- Custom Theme files -->
<link href="css/adstyle.css" rel="stylesheet" type="text/css" media="all"/>
<link href='http://fonts.useso.com/css?family=Roboto:500,900italic,900,400italic,100,700italic,300,700,500italic,100italic,300italic,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<!--Google Fonts-->
</head>
<body>
<div class="login">
	<h2>求珍悟石----后台中心</h2>
	<div class="login-top">
		<h1>登录表单</h1>
		<form action="admmanage?action=adloginctrl" method="post" name="loginForm" onSubmit="return checkLoginInfo()">
			<input name="admId" type="text" value="用户帐号" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户帐号';}">
			<input name="admPass" type="password" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}">
	    
	    <div class="forgot">
	    	<a href="#">忘记密码</a>
	    	<input name="Submit" type="submit" value="登录" >
	    </div>
	    </form>
	</div>
	<div class="login-bottom">
		<h3>新用户 &nbsp;<a href="#">注册</a>&nbsp 这里</h3>
	</div>
</div>	
<div class="copyright">
	
</div>

<script src="http://www.mycodes.net/js/tongji.js"></script>
<script src="http://www.mycodes.net/js/youxia.js" type="text/javascript"></script>

</body>
</html>