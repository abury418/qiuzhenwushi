<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.javaee.dao.IDishDAO,java.util.ArrayList,java.util.*,com.javaee.util.DAOFactory,com.javaee.bean.*"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	User user = (User)session.getAttribute("loginuser");
%>
<body>
dish
	<%
	    String diningid = request.getParameter("DiningId");
		IDishDAO dishdao = (IDishDAO) DAOFactory.newInstance("IDishDAO");
		String sql = "select * from dish where DiningId="+diningid;
		Dish dish = new Dish();
		ArrayList dishlist = dishdao.findDish(dish); 
	%> 
	<%-- <%
		ArrayList<Map<Dish,Integer>> dishlist = (ArrayList<Map<Dish,Integer>>)request.getAttribute("dishlist");
		ArrayList<Menu> menulist = (ArrayList<Menu>)request.getAttribute("menulist");
	%>

	<div >
		<div >
			<%
		if(menulist!=null&&dishlist!=null){
			for(Menu m:menulist){
		%>
			<div >
				<li >
					<h4><%=m.getMenuName() %></h4> <%
				for(Map<Dish,Integer> map:dishlist){
					 Set<Map.Entry<Dish,Integer>> allSet = null ;
					 allSet = map.entrySet() ; 
				     Iterator<Map.Entry<Dish,Integer>> iter = null ; 
				        iter = allSet.iterator() ; 
					if(map.containsValue(m.getMenuId())){
						 while(iter.hasNext()){ 
					            Map.Entry<Dish,Integer> me = iter.next() ; 
					            Dish dish=new Dish();
					            dish=me.getKey();
				%> <a herf="#"> <img src="<%=dish.getDishPic() %>"
						id="details"
						onclick="javascript:fun('<%=dish.getDishName() %>','<%=dish.getDishId() %>','<%=dish.getDishSale() %>','<%=dish.getDishId() %>','<%=dish.getDishPic() %>','<%=dish.getDishDetails() %>')"
						height="90dp" width="125dp" /></a>
					<p><%=dish.getDishName() %></p> <%
					} 
			      }
			    }
				%>
				</li>

				<li >
					<div >
						<h4>价格</h4>

						<%
				for(Map<Dish,Integer> map:dishlist){
					 Set<Map.Entry<Dish,Integer>> allSet = null ;
					 allSet = map.entrySet() ; 
				     Iterator<Map.Entry<Dish,Integer>> iter = null ; 
				        iter = allSet.iterator() ; 
					if(map.containsValue(m.getMenuId())){
						 while(iter.hasNext()){ 
					            Map.Entry<Dish,Integer> me = iter.next() ; 
					            Dish dish=new Dish();
					            dish=me.getKey();
				%>

						<div class="pre-top">
							<div class="pr-left">
								<div class="item_add">
									<span class="item_price"><h6 id="price"><%=dish.getDishPrice() %></h6>元/份</br>
									</br>
									<br></span> 
									

								</div> 
							</div>
							<div class="pr-right">
								<div class="item_add">
									<span class="add"><a href="#">添加到购物车</a></span>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>

						<%
					} 
			      }
			    }
				%>


					</div>
				</li>
				<div class="clearfix"></div>
			</div>

			<%
			}
		}else{
			out.print("空");
		}
		%>


			<br />
		</div>
	</div> --%>
</body>
</html>