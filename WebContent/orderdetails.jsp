<%@ page language="java" contentType="text/html; charset=utf-8"
	import="com.javaee.bean.User,com.javaee.bean.Order,java.util.ArrayList,java.util.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>订单详情</title>
<link rel="stylesheet" href="css/invoice.css">
</head>
<body>
<!-- Print Button -->
<a href="javascript:window.print()" class="print-button">打印订单发票</a>

<!-- Invoice -->
<div id="invoice">
<%
	request.setCharacterEncoding("utf-8"); 
	response.setCharacterEncoding("utf-8"); 
	Order orderdetails = (Order)request.getAttribute("orderdetails");
%>
	<!-- Header -->
	<div class="row">
		<div class="col-md-6">
			<div id="logo"><img src="images/logo.png" alt=""></div>
		</div>

		<div class="col-md-6">	

			<p id="details">
				<strong>订单编号:</strong> <%=orderdetails.getOrderId() %> <br>
				<strong>订单日期:</strong> <%=orderdetails.getOrderTime() %> <br>
				自签发之日起7天内到期
			</p>
		</div>
	</div>


	<!-- Client & Supplier -->
	<div class="row">
		<div class="col-md-12">
			<h2>发票</h2>
		</div>

		<div class="col-md-6">	
			<strong class="margin-bottom-5">商家</strong>
			<p>
				<%=orderdetails.getDiningName() %> <br>
			</p>
		</div>

		<div class="col-md-6">	
			<strong class="margin-bottom-5">买家</strong>
			<p>
				<%=orderdetails.getUserId() %> <br>
				<%=orderdetails.getUserName() %> <br>
			<%=orderdetails.getPhoneNumber() %>,<%=orderdetails.getAddress() %> <br>
			</p>
		</div>
	</div>


	<!-- Invoice -->
	<div class="row">
		<div class="col-md-12">
			<table class="margin-top-20">
				<tr>
					<th>商品</th>
					<th>数目</th>
					<th>增值税</th>
					<th>总价</th>
				</tr>

				<tr>
					<td><%=orderdetails.getDishName() %></td> 
					<td><%=orderdetails.getDishNum() %></td>
					<td>$0.00</td>
					<td>$<%=orderdetails.getSumPrice() %></td>
				</tr>
			</table>
		</div>
		
		<div class="col-md-4 col-md-offset-8">	
			<table id="totals">
				<tr>
					<th>应付总价</th> 
					<th><span>$<%=orderdetails.getSumPrice() %></span></th>
				</tr>
			</table>
		</div>
	</div>


	<!-- Footer -->
	<div class="row">
		<div class="col-md-12">
			<ul id="footer">
				<li><span>求珍悟石</span></li>
				<li>office@example.com</li>
				<li>(123) 123-456</li>
			</ul>
		</div>
	</div>
		
</div>
</body>
</html>