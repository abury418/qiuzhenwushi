package com.javaee.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaee.bean.AdminUser;
import com.javaee.bean.Article;
import com.javaee.bean.Cart;
import com.javaee.bean.Dining;
import com.javaee.bean.Dish;
import com.javaee.bean.News;
import com.javaee.bean.PageModel;
import com.javaee.bean.Stone;
import com.javaee.bean.User;
import com.javaee.bean.UserInfo;
import com.javaee.biz.ArticleServImpl;
import com.javaee.biz.DiningServImpl;
import com.javaee.biz.DishServImpl;
import com.javaee.biz.IArticleServ;
import com.javaee.biz.IDiningServ;
import com.javaee.biz.IDishServ;
import com.javaee.biz.INewsServ;
import com.javaee.biz.IStoneServ;
import com.javaee.biz.IUserServ;
import com.javaee.biz.NewsServImpl;
import com.javaee.biz.StoneServImpl;
import com.javaee.biz.UserServImpl;
import com.javaee.util.DAOFactory;

@WebServlet("/admmanage")
public class AdminManage extends baseControl {

	/*
	 * 管理员登录验证
	 */
	private void AdmLoginCtrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int admid = Integer.parseInt(request.getParameter("admId"));
		String admpass = request.getParameter("admPass");
		// 用户身份验证
		AdminUser admin = new AdminUser();
		admin.setAdmId(admid);
		admin.setAdmPassword(admpass);
		UserServImpl userserv = (UserServImpl) DAOFactory.newInstance("IUserServ");
		RequestDispatcher rd = request.getRequestDispatcher("/adminIndex.jsp");
		if (userserv.validateAdminUser(admin)) {// 验证通过
			//获取管理员的其他信息，保存在session中
			admin = userserv.findAdminInfo(admid);
			request.getSession().setAttribute("adminuser",admin);
			rd.forward(request, response);
		} else {// 验证失败
			response.sendRedirect("admLogin.jsp");
		}
	}
	
	/*
	 * 岩矿管理
	 */
	private void MineralsCtrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		RequestDispatcher rd = request.getRequestDispatcher("/admMinerals.jsp");
		IStoneServ stoneserv = (IStoneServ) DAOFactory.newInstance("IStoneServ");
		ArrayList<Stone> stonelist = stoneserv.findStonePageList(1, 5);
		request.setAttribute("stonelist", stonelist);
		logger.debug(stonelist);
		int totalRecords = stoneserv.getTotalRecords();
		PageModel<Stone> pageModel = new PageModel<Stone>(totalRecords,1,5,stonelist);
		request.setAttribute("pageModel", pageModel);
		rd.forward(request, response);
	}
	
	/*
	 * 更新岩矿信息
	 */
	private void UpdateMinerals(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//获取当前被更改的岩矿的编号
		int sid = Integer.parseInt(request.getParameter("SId"));
		//获取更新后的相关信息
		String sname = request.getParameter("sname"+sid);
		logger.debug(sname);
		String suse = request.getParameter("suse"+sid);
		String scomponent = request.getParameter("scomponent");
		String sappearance = request.getParameter("sappearance"+sid);
		Stone stone = new Stone();
		stone.setSId(sid);
		stone.setSName(sname);
		stone.setSUse(suse);
		stone.setSComponent(scomponent);
		stone.setSAppearance(sappearance);
		IStoneServ stoneserv = (IStoneServ) DAOFactory.newInstance("IStoneServ");
		stoneserv.updateStone(stone);
		ArrayList<Stone> stonelist = stoneserv.findStonePageList(1, 5);
		request.setAttribute("stonelist", stonelist);
		logger.debug(stonelist);
		RequestDispatcher rd = request.getRequestDispatcher("/admMinerals.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 删除岩矿
	 */
	private void DeleteMinerals(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取当前被删除的岩矿的编号
		int sid = Integer.parseInt(request.getParameter("SId"));
		Stone stone = new Stone();
		stone.setSId(sid);
		IStoneServ stoneserv = (IStoneServ) DAOFactory.newInstance("IStoneServ");
		stoneserv.deleteStone(stone);
		ArrayList<Stone> stonelist = stoneserv.findStonePageList(1, 5);
		request.setAttribute("stonelist", stonelist);
		logger.debug(stonelist);
		RequestDispatcher rd = request.getRequestDispatcher("/admMinerals.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 录入岩矿
	 */
	private void NewStone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sname = request.getParameter("sName");
		String ename = request.getParameter("eName");
		int category=1;
		String c = request.getParameter("cateGory");
		if(c=="矿物") category=1;
		if(c=="岩石") category=2;
		if(c=="矿石") category=3;
		if(c=="化石") category=4;
		if(c=="矿床") category=5;
		String lei = request.getParameter("Lei");
		String component = request.getParameter("sComponent");
		String density = request.getParameter("sDensity");
		String hardness = request.getParameter("sHardness");
		String other = request.getParameter("Other");
		int click=0;
		String appearance = request.getParameter("sAppearance");
		String eappearance = request.getParameter("eAppearance");
		String use = request.getParameter("sUse");
		//图片
		String img = request.getParameter("stoneImg");
		img=img.replaceAll("1.jpg", "");
		String jiegou = request.getParameter("sJieGou");
		String gouzao = request.getParameter("sGouZao");
		String color = request.getParameter("sColor");
		String guangze = request.getParameter("sGuangZe");
		String tiaohen = request.getParameter("sTiaoHen");
		
		Stone stone = new Stone();
		stone.setSName(sname);
		stone.setSEName(ename);
		stone.setSCategory(category);
		stone.setSLei(lei);
		stone.setSComponent(component);
		stone.setSDensity(density);
		stone.setSHardness(hardness);
		stone.setSOther(other);
		stone.setSClick(click);
		stone.setSAppearance(appearance);
		stone.setSEAppearance(eappearance);
		stone.setSUse(use);
		stone.setSImage(img);
		stone.setSJiegou(jiegou);
		stone.setSGouzao(gouzao);
		stone.setSColor(color);
		stone.setSGuangze(guangze);
		stone.setSTiaohen(tiaohen);
		
		StoneServImpl stoneserv = (StoneServImpl) DAOFactory.newInstance("IStoneServ");
		stoneserv.insertStone(stone);
		RequestDispatcher rd = request.getRequestDispatcher("admNewMineral.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 岩矿页面实现分页
	 */
	private void PageListMineral(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("pageNo"));
		IStoneServ stoneserv = (IStoneServ) DAOFactory.newInstance("IStoneServ");
		ArrayList<Stone> stonelist = stoneserv.findStonePageList(pageNo, 5);
		logger.debug(stonelist);
		int totalRecords = stoneserv.getTotalRecords();
		PageModel<Stone> pageModel = new PageModel<Stone>(totalRecords,pageNo,5,stonelist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admMinerals.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 管理文章
	 */
	private void ArticlesCtrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		RequestDispatcher rd = request.getRequestDispatcher("/admArticles.jsp");
		IArticleServ articleserv = (IArticleServ) DAOFactory.newInstance("IArticleServ");
		ArrayList<Article> articlelist = articleserv.findArticlePageList(1, 5);
		request.setAttribute("articlelist", articlelist);
		logger.debug(articlelist);
		int totalRecords = articleserv.getTotalRecords();
		PageModel<Article> pageModel = new PageModel<Article>(totalRecords,1,5,articlelist);
		request.setAttribute("pageModel", pageModel);
		rd.forward(request, response);
	}
	
	/*
	 * 更新文章信息
	 */
	private void UpdateArticles(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//获取当前被更改的文章的编号
		int aid = Integer.parseInt(request.getParameter("AId"));
		//获取更新后的相关信息
		String atitle = request.getParameter("atitle"+aid);
		String akeyword = request.getParameter("akeyword"+aid);
		Article article = new Article();
		article.setAId(aid);
		article.setATitle(atitle);
		article.setAKeyWord(akeyword);
		
		IArticleServ articleserv = (IArticleServ) DAOFactory.newInstance("IArticleServ");
		articleserv.updateArticle(article);
		ArrayList<Article> articlelist = articleserv.findArticlePageList(1, 5);
		request.setAttribute("articlelist", articlelist);
		logger.debug(articlelist);
		int totalRecords = articleserv.getTotalRecords();
		PageModel<Article> pageModel = new PageModel<Article>(totalRecords,1,5,articlelist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admArticles.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 删除文章
	 */
	private void DeleteArticles(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取当前被删除的文章的编号
		int aid = Integer.parseInt(request.getParameter("AId"));
		Article article = new Article();
		article.setAId(aid);
		IArticleServ articleserv = (IArticleServ) DAOFactory.newInstance("IArticleServ");
		articleserv.deleteArticle(article);
		ArrayList<Article> articlelist = articleserv.findArticlePageList(1, 5);
		request.setAttribute("articlelist", articlelist);
		logger.debug(articlelist);
		int totalRecords = articleserv.getTotalRecords();
		PageModel<Article> pageModel = new PageModel<Article>(totalRecords,1,5,articlelist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admArticles.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 录入文章
	 */
	private void NewArticle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String atitle = request.getParameter("aTitle");
		String acontent = request.getParameter("aContent");
		String mcontent = request.getParameter("mContent");
		String akeyword = request.getParameter("keyWord");
		String aimg = "images/articles/" + request.getParameter("aImg");
		
		Article article = new Article();
		article.setATitle(atitle);
		article.setAContent(acontent);
		article.setAMContent(mcontent);
		article.setAKeyWord(akeyword);
		article.setAImage(aimg);
		
		ArticleServImpl articleserv = (ArticleServImpl) DAOFactory.newInstance("IArticleServ");
		articleserv.insertArticle(article);
		RequestDispatcher rd = request.getRequestDispatcher("/admNewArticle.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 文章页面实现分页
	 */
	private void PageListArticle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("pageNo"));
		IArticleServ articleserv = (IArticleServ) DAOFactory.newInstance("IArticleServ");
		ArrayList<Article> articlelist = articleserv.findArticlePageList(pageNo, 5);
		logger.debug(articlelist);
		int totalRecords = articleserv.getTotalRecords();
		PageModel<Article> pageModel = new PageModel<Article>(totalRecords,pageNo,5,articlelist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admArticles.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 管理新闻
	 */
	private void NewsCtrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		RequestDispatcher rd = request.getRequestDispatcher("/admNews.jsp");
		INewsServ newsserv = (INewsServ) DAOFactory.newInstance("INewsServ");
		ArrayList<News> newslist = newsserv.findNewsPageList(1, 5);
		request.setAttribute("newslist", newslist);
		logger.debug(newslist);
		int totalRecords = newsserv.getTotalRecords();
		PageModel<News> pageModel = new PageModel<News>(totalRecords,1,5,newslist);
		request.setAttribute("pageModel", pageModel);
		rd.forward(request, response);
	}
	
	/*
	 * 更新新闻信息
	 */
	private void UpdateNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//获取当前被更改的新闻的编号
		int nid = Integer.parseInt(request.getParameter("NId"));
		//获取更新后的相关信息
		String ntitle = request.getParameter("ntitle"+nid);
		String authorname = request.getParameter("authorname"+nid);
		String authormail = request.getParameter("authormail"+nid);
		
		News news = new News();
		news.setNId(nid);
		news.setNTitle(ntitle);
		news.setNAuthorName(authorname);
		news.setNAuthorMail(authormail);
		
		INewsServ newsserv = (INewsServ) DAOFactory.newInstance("INewsServ");
		newsserv.updateNews(news);
		ArrayList<News> newslist = newsserv.findNewsPageList(1, 5);
		request.setAttribute("newslist", newslist);
		logger.debug(newslist);
		int totalRecords = newsserv.getTotalRecords();
		PageModel<News> pageModel = new PageModel<News>(totalRecords,1,5,newslist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admNews.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 删除新闻
	 */
	private void DeleteNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取当前被删除的新闻的编号
		int nid = Integer.parseInt(request.getParameter("NId"));
		News news = new News();
		news.setNId(nid);
		INewsServ newsserv = (INewsServ) DAOFactory.newInstance("INewsServ");
		newsserv.deleteNews(news);
		ArrayList<News> newslist = newsserv.findNewsPageList(1, 5);
		request.setAttribute("newslist", newslist);
		logger.debug(newslist);
		int totalRecords = newsserv.getTotalRecords();
		PageModel<News> pageModel = new PageModel<News>(totalRecords,1,5,newslist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admNews.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 录入新闻
	 */
	private void NewNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ntitle = request.getParameter("nTitle");
		String ncontent = request.getParameter("nContent");
		String nmcontent = request.getParameter("nmContent");
		String authorname = request.getParameter("authorName");
		String authormail = request.getParameter("authorMail");
		String authorbrief = request.getParameter("authorBrief");
		String authorimg = "images/news/" + request.getParameter("authorImg");
		String nimg = "images/news/" + request.getParameter("nImg");
		
		News news = new News();
		news.setNTitle(ntitle);
		news.setNContent(ncontent);
		news.setNMContent(nmcontent);
		news.setNAuthorName(authorname);
		news.setNAuthorMail(authormail);
		news.setNAuthorBrief(authorbrief);
		news.setNAuthorImg(authorimg);
		news.setNImage(nimg);
		
		NewsServImpl newsserv = (NewsServImpl) DAOFactory.newInstance("INewsServ");
		newsserv.insertNews(news);
		RequestDispatcher rd = request.getRequestDispatcher("/admNewNews.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 新闻页面实现分页
	 */
	private void PageListNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("pageNo"));
		INewsServ newsserv = (INewsServ) DAOFactory.newInstance("INewsServ");
		ArrayList<News> newslist = newsserv.findNewsPageList(pageNo, 5);
		logger.debug(newslist);
		int totalRecords = newsserv.getTotalRecords();
		PageModel<News> pageModel = new PageModel<News>(totalRecords,pageNo,5,newslist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admNews.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 管理商品
	 */
	private void ProductsCtrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		RequestDispatcher rd = request.getRequestDispatcher("/admProducts.jsp");
		IDishServ dishserv = (IDishServ) DAOFactory.newInstance("IDishServ");
		ArrayList<Dish> dishlist = dishserv.findDishPageList(1, 5);
		request.setAttribute("dishlist", dishlist);
		logger.debug(dishlist);
		int totalRecords = dishserv.getTotalRecords();
		PageModel<Dish> pageModel = new PageModel<Dish>(totalRecords,1,5,dishlist);
		request.setAttribute("pageModel", pageModel);
		rd.forward(request, response);
	}
	
	/*
	 * 更新商品信息
	 */
	private void UpdateProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//获取当前被更改的商品的编号
		int dishid = Integer.parseInt(request.getParameter("DishId"));
		//获取更新后的相关信息
		String name = request.getParameter("dishname"+dishid);
		Float price = Float.parseFloat(request.getParameter("dishprice"+dishid));
		int stock = Integer.parseInt(request.getParameter("dishstock"+dishid));
		Float marks = Float.parseFloat(request.getParameter("dishmarks"+dishid));
		
		Dish dish = new Dish();
		dish.setDishId(dishid);
		dish.setDishName(name);
		dish.setDishPrice(price);
		dish.setDishStock(stock);
		dish.setDishMarks(marks);
		
		IDishServ dishserv = (IDishServ) DAOFactory.newInstance("IDishServ");
		dishserv.updateDish(dish);
		ArrayList<Dish> dishlist = dishserv.findDishPageList(1, 5);
		request.setAttribute("dishlist", dishlist);
		logger.debug(dishlist);
		int totalRecords = dishserv.getTotalRecords();
		PageModel<Dish> pageModel = new PageModel<Dish>(totalRecords,1,5,dishlist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admProducts.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 删除商品
	 */
	private void DeleteProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取当前被删除的新闻的编号
		int dishid = Integer.parseInt(request.getParameter("DishId"));
		Dish dish = new Dish();
		dish.setDishId(dishid);
		IDishServ dishserv = (IDishServ) DAOFactory.newInstance("IDishServ");
		dishserv.deleteDish(dish);
		ArrayList<Dish> dishlist = dishserv.findDishPageList(1, 5);
		request.setAttribute("dishlist", dishlist);
		logger.debug(dishlist);
		int totalRecords = dishserv.getTotalRecords();
		PageModel<Dish> pageModel = new PageModel<Dish>(totalRecords,1,5,dishlist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admProducts.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 录入商品
	 */
	private void NewProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dishname = request.getParameter("dishName");
		String category = request.getParameter("dishCategory");
		String dishpic=null;
		switch(category) {
		case "标本":
			dishpic="images/products/biaoben" + request.getParameter("pImg");
		case "工艺品":
			dishpic="images/products/gongyipin" + request.getParameter("pImg");
		case "地质用品":
			dishpic="images/products/dizhi" + request.getParameter("pImg");
		case "其它":
			dishpic="images/products/other" + request.getParameter("pImg");
		}
		float dishprice = Float.parseFloat(request.getParameter("dishPrice"));
		int dishsale = 0;
		float dishmarks = 5;
		int dishstock = Integer.parseInt(request.getParameter("dishStock"));
		String dishdetails = request.getParameter("dishDetails");
		int diningid = Integer.parseInt(request.getParameter("diningId"));;
		
		Dish dish = new Dish();
		dish.setDishName(dishname);
		dish.setDishPic(dishpic);
		dish.setDishPrice(dishprice);
		dish.setDishSale(dishsale);
		dish.setDishMarks(dishmarks);
		dish.setDishStock(dishstock);
		dish.setDishDetails(dishdetails);
		dish.setDiningId(diningid);
		
		DishServImpl dishserv = (DishServImpl) DAOFactory.newInstance("IDishServ");
		dishserv.insertDish(dish);
		RequestDispatcher rd = request.getRequestDispatcher("/admNewProduct.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 商品页面实现分页
	 */
	private void PageListProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("pageNo"));
		IDishServ dishserv = (IDishServ) DAOFactory.newInstance("IDishServ");
		ArrayList<Dish> dishlist = dishserv.findDishPageList(pageNo, 5);
		logger.debug(dishlist);
		int totalRecords = dishserv.getTotalRecords();
		PageModel<Dish> pageModel = new PageModel<Dish>(totalRecords,pageNo,5,dishlist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admProducts.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 用户管理
	 */
	private void UserCtrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		RequestDispatcher rd = request.getRequestDispatcher("/admUsers.jsp");
		IUserServ userserv = (IUserServ) DAOFactory.newInstance("IUserServ");
		ArrayList<User> userlist = userserv.findUsersPageList(1, 5);
		request.setAttribute("userlist", userlist);
		logger.debug(userlist);
		int totalRecords = userserv.getTotalRecords();
		PageModel<User> pageModel = new PageModel<User>(totalRecords,1,5,userlist);
		request.setAttribute("pageModel", pageModel);	
		rd.forward(request, response);
	}
	
	/*
	 * 更新用户信息
	 */
	private void UpdateUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//获取当前被更改的用户的编号
		int userid = Integer.parseInt(request.getParameter("UserId"));
		//获取更新后的相关信息
		String username = request.getParameter("username"+userid);
		String userphone = request.getParameter("userphone"+userid);
		String usermail = request.getParameter("usermail"+userid);
		User user = new User();
		user.setUserId(userid);
		user.setUserName(username);
		user.setUserPhone(userphone);
		user.setUserMail(usermail);
		IUserServ userserv = (IUserServ) DAOFactory.newInstance("IUserServ");
		userserv.updateUser(user);
		ArrayList<User> userlist = userserv.findUsersPageList(1, 5);
		request.setAttribute("userlist", userlist);
		logger.debug(userlist);
		RequestDispatcher rd = request.getRequestDispatcher("/admUsers.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 删除用户
	 */
	private void DeleteUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取当前被更改的餐厅的编号
		int userid = Integer.parseInt(request.getParameter("UserId"));
		User user = new User();
		user.setUserId(userid);
		IUserServ userserv = (IUserServ) DAOFactory.newInstance("IUserServ");
		userserv.deleteUser(user);
		ArrayList<User> userlist = userserv.findUsersPageList(1, 5);
		request.setAttribute("userlist", userlist);
		logger.debug(userlist);
		RequestDispatcher rd = request.getRequestDispatcher("/admUsers.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 录入新用户
	 */
	private void NewUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("userName");
		String userphone = request.getParameter("userPhone");
		String usermail = request.getParameter("userMail");
		String userbrief = request.getParameter("userBrief");
		String userimage = "images/users/" + request.getParameter("userImage");
		String userpwd = username+usermail;
		//用户信息
		User user = new User();
		user.setUserName(username);
		user.setUserPhone(userphone);
		user.setUserMail(usermail);
		user.setUserBrief(userbrief);
		user.setUserImage(userimage);
		user.setUserPassword(userpwd);
		
		UserServImpl userserv = (UserServImpl) DAOFactory.newInstance("IUserServ");
		userserv.insertUser(user);
		RequestDispatcher rd = request.getRequestDispatcher("admNewUser.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 显示用户页面实现分页
	 */
	private void PageListUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("pageNo"));
		IUserServ userserv = (IUserServ) DAOFactory.newInstance("IUserServ");
		ArrayList<User> userlist = userserv.findUsersPageList(pageNo, 5);
		logger.debug(userlist);
		int totalRecords = userserv.getTotalRecords();
		PageModel<User> pageModel = new PageModel<User>(totalRecords,pageNo,5,userlist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admUsers.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 管理员修改个人信息
	 */
	private void UpdateAdminInfos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//获取当前被更改的管理员
	    AdminUser admin = (AdminUser)request.getSession().getAttribute("adminuser");
		int admid = admin.getAdmId();
		//获取更新后的相关信息
		String admname = request.getParameter("admName");
		String admphone = request.getParameter("admPhone");
		String admmail = request.getParameter("admMail");
		admin.setAdmName(admname);
		admin.setAdmPhone(admphone);
		admin.setAdmMail(admmail);
		IUserServ userserv = (IUserServ) DAOFactory.newInstance("IUserServ");
		userserv.updateAdmin(admin);
		request.getSession().setAttribute("adminuser", admin);
		logger.debug(admin);
		RequestDispatcher rd = request.getRequestDispatcher("/admSelf.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 管理员修改账号密码
	 */
	private void UpdateAdminPass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//获取当前被更改的管理员
	    AdminUser admin = (AdminUser)request.getSession().getAttribute("adminuser");
		int admid = admin.getAdmId();
		//获取更新后的相关信息
		String admpass = request.getParameter("admNewPass");
		admin.setAdmPassword(admpass);
		IUserServ userserv = (IUserServ) DAOFactory.newInstance("IUserServ");
		userserv.updateAdminPass(admin);
		request.getSession().setAttribute("adminuser", admin);
		logger.debug(admin);
		RequestDispatcher rd = request.getRequestDispatcher("/admSelf.jsp");
		rd.forward(request, response);
	}

	/*
	 * 退出后台管理系统
	 */
	private void Quit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//摧毁所有session
		request.getSession().invalidate();
		//跳转至登录界面
		response.sendRedirect("admLogin.jsp");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
	    resp.setCharacterEncoding("utf-8");
		String action = req.getParameter("action");
		switch(action) {
		case "adloginctrl"://管理员登录
			AdmLoginCtrl(req,resp);break;
		case "man_minerals"://岩矿管理
			MineralsCtrl(req,resp);break;
		case "updateminerals"://修改岩矿信息
			UpdateMinerals(req,resp);break;
		case "deleteminerals"://删除岩矿
			DeleteMinerals(req,resp);break;
		case "newmineral"://录入岩矿
			NewStone(req,resp);break;
		case "pagelistmineral"://岩矿界面分页
			PageListMineral(req,resp);break;
		case "man_articles"://文章管理
			ArticlesCtrl(req,resp);break;
		case "updatearticles"://修改文章信息
			UpdateArticles(req,resp);break;
		case "deletearticles"://删除文章
			DeleteArticles(req,resp);break;
		case "newarticle"://录入文章
			NewArticle(req,resp);break;
		case "pagelistarticle"://文章界面分页
			PageListArticle(req,resp);break;
		case "man_news"://新闻管理
			NewsCtrl(req,resp);break;
		case "updatenews"://修改新闻信息
			UpdateNews(req,resp);break;
		case "deletenews"://删除新闻
			DeleteNews(req,resp);break;
		case "newnews"://录入新闻
			NewNews(req,resp);break;
		case "pagelistnews"://新闻界面分页
			PageListNews(req,resp);break;
		case "man_products"://商品管理
			ProductsCtrl(req,resp);break;
		case "updateproducts"://修改商品信息
			UpdateProducts(req,resp);break;
		case "deleteproducts"://删除商品
			DeleteProducts(req,resp);break;
		case "newproduct"://录入商品
			NewProduct(req,resp);break;
		case "pagelistproduct"://商品界面分页
			PageListProduct(req,resp);break;
		case "man_users"://用户管理
			UserCtrl(req,resp);break;
		case "updateusers"://修改用户信息
			UpdateUsers(req,resp);break;
		case "deleteusers"://删除用户
			DeleteUsers(req,resp);break;
		case "newuser"://录入用户
			NewUser(req,resp);break;
		case "pagelistuser":
			PageListUser(req,resp);break;
		case "updateadmininfo":
			UpdateAdminInfos(req,resp);break;
		case "updateadminpass":
			UpdateAdminPass(req,resp);break;
		case "quit":
			Quit(req,resp);break;
		
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
	    resp.setCharacterEncoding("utf-8");
		doGet(req, resp);
	}

}
