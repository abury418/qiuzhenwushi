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
	 * ����Ա��¼��֤
	 */
	private void AdmLoginCtrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int admid = Integer.parseInt(request.getParameter("admId"));
		String admpass = request.getParameter("admPass");
		// �û������֤
		AdminUser admin = new AdminUser();
		admin.setAdmId(admid);
		admin.setAdmPassword(admpass);
		UserServImpl userserv = (UserServImpl) DAOFactory.newInstance("IUserServ");
		RequestDispatcher rd = request.getRequestDispatcher("/adminIndex.jsp");
		if (userserv.validateAdminUser(admin)) {// ��֤ͨ��
			//��ȡ����Ա��������Ϣ��������session��
			admin = userserv.findAdminInfo(admid);
			request.getSession().setAttribute("adminuser",admin);
			rd.forward(request, response);
		} else {// ��֤ʧ��
			response.sendRedirect("admLogin.jsp");
		}
	}
	
	/*
	 * �ҿ����
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
	 * �����ҿ���Ϣ
	 */
	private void UpdateMinerals(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//��ȡ��ǰ�����ĵ��ҿ�ı��
		int sid = Integer.parseInt(request.getParameter("SId"));
		//��ȡ���º�������Ϣ
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
	 * ɾ���ҿ�
	 */
	private void DeleteMinerals(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//��ȡ��ǰ��ɾ�����ҿ�ı��
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
	 * ¼���ҿ�
	 */
	private void NewStone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sname = request.getParameter("sName");
		String ename = request.getParameter("eName");
		int category=1;
		String c = request.getParameter("cateGory");
		if(c=="����") category=1;
		if(c=="��ʯ") category=2;
		if(c=="��ʯ") category=3;
		if(c=="��ʯ") category=4;
		if(c=="��") category=5;
		String lei = request.getParameter("Lei");
		String component = request.getParameter("sComponent");
		String density = request.getParameter("sDensity");
		String hardness = request.getParameter("sHardness");
		String other = request.getParameter("Other");
		int click=0;
		String appearance = request.getParameter("sAppearance");
		String eappearance = request.getParameter("eAppearance");
		String use = request.getParameter("sUse");
		//ͼƬ
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
	 * �ҿ�ҳ��ʵ�ַ�ҳ
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
	 * ��������
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
	 * ����������Ϣ
	 */
	private void UpdateArticles(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//��ȡ��ǰ�����ĵ����µı��
		int aid = Integer.parseInt(request.getParameter("AId"));
		//��ȡ���º�������Ϣ
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
	 * ɾ������
	 */
	private void DeleteArticles(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//��ȡ��ǰ��ɾ�������µı��
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
	 * ¼������
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
	 * ����ҳ��ʵ�ַ�ҳ
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
	 * ��������
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
	 * ����������Ϣ
	 */
	private void UpdateNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//��ȡ��ǰ�����ĵ����ŵı��
		int nid = Integer.parseInt(request.getParameter("NId"));
		//��ȡ���º�������Ϣ
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
	 * ɾ������
	 */
	private void DeleteNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//��ȡ��ǰ��ɾ�������ŵı��
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
	 * ¼������
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
	 * ����ҳ��ʵ�ַ�ҳ
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
	 * ������Ʒ
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
	 * ������Ʒ��Ϣ
	 */
	private void UpdateProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//��ȡ��ǰ�����ĵ���Ʒ�ı��
		int dishid = Integer.parseInt(request.getParameter("DishId"));
		//��ȡ���º�������Ϣ
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
	 * ɾ����Ʒ
	 */
	private void DeleteProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//��ȡ��ǰ��ɾ�������ŵı��
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
	 * ¼����Ʒ
	 */
	private void NewProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dishname = request.getParameter("dishName");
		String category = request.getParameter("dishCategory");
		String dishpic=null;
		switch(category) {
		case "�걾":
			dishpic="images/products/biaoben" + request.getParameter("pImg");
		case "����Ʒ":
			dishpic="images/products/gongyipin" + request.getParameter("pImg");
		case "������Ʒ":
			dishpic="images/products/dizhi" + request.getParameter("pImg");
		case "����":
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
	 * ��Ʒҳ��ʵ�ַ�ҳ
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
	 * �û�����
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
	 * �����û���Ϣ
	 */
	private void UpdateUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//��ȡ��ǰ�����ĵ��û��ı��
		int userid = Integer.parseInt(request.getParameter("UserId"));
		//��ȡ���º�������Ϣ
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
	 * ɾ���û�
	 */
	private void DeleteUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//��ȡ��ǰ�����ĵĲ����ı��
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
	 * ¼�����û�
	 */
	private void NewUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("userName");
		String userphone = request.getParameter("userPhone");
		String usermail = request.getParameter("userMail");
		String userbrief = request.getParameter("userBrief");
		String userimage = "images/users/" + request.getParameter("userImage");
		String userpwd = username+usermail;
		//�û���Ϣ
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
	 * ��ʾ�û�ҳ��ʵ�ַ�ҳ
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
	 * ����Ա�޸ĸ�����Ϣ
	 */
	private void UpdateAdminInfos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//��ȡ��ǰ�����ĵĹ���Ա
	    AdminUser admin = (AdminUser)request.getSession().getAttribute("adminuser");
		int admid = admin.getAdmId();
		//��ȡ���º�������Ϣ
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
	 * ����Ա�޸��˺�����
	 */
	private void UpdateAdminPass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//��ȡ��ǰ�����ĵĹ���Ա
	    AdminUser admin = (AdminUser)request.getSession().getAttribute("adminuser");
		int admid = admin.getAdmId();
		//��ȡ���º�������Ϣ
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
	 * �˳���̨����ϵͳ
	 */
	private void Quit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�ݻ�����session
		request.getSession().invalidate();
		//��ת����¼����
		response.sendRedirect("admLogin.jsp");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
	    resp.setCharacterEncoding("utf-8");
		String action = req.getParameter("action");
		switch(action) {
		case "adloginctrl"://����Ա��¼
			AdmLoginCtrl(req,resp);break;
		case "man_minerals"://�ҿ����
			MineralsCtrl(req,resp);break;
		case "updateminerals"://�޸��ҿ���Ϣ
			UpdateMinerals(req,resp);break;
		case "deleteminerals"://ɾ���ҿ�
			DeleteMinerals(req,resp);break;
		case "newmineral"://¼���ҿ�
			NewStone(req,resp);break;
		case "pagelistmineral"://�ҿ�����ҳ
			PageListMineral(req,resp);break;
		case "man_articles"://���¹���
			ArticlesCtrl(req,resp);break;
		case "updatearticles"://�޸�������Ϣ
			UpdateArticles(req,resp);break;
		case "deletearticles"://ɾ������
			DeleteArticles(req,resp);break;
		case "newarticle"://¼������
			NewArticle(req,resp);break;
		case "pagelistarticle"://���½����ҳ
			PageListArticle(req,resp);break;
		case "man_news"://���Ź���
			NewsCtrl(req,resp);break;
		case "updatenews"://�޸�������Ϣ
			UpdateNews(req,resp);break;
		case "deletenews"://ɾ������
			DeleteNews(req,resp);break;
		case "newnews"://¼������
			NewNews(req,resp);break;
		case "pagelistnews"://���Ž����ҳ
			PageListNews(req,resp);break;
		case "man_products"://��Ʒ����
			ProductsCtrl(req,resp);break;
		case "updateproducts"://�޸���Ʒ��Ϣ
			UpdateProducts(req,resp);break;
		case "deleteproducts"://ɾ����Ʒ
			DeleteProducts(req,resp);break;
		case "newproduct"://¼����Ʒ
			NewProduct(req,resp);break;
		case "pagelistproduct"://��Ʒ�����ҳ
			PageListProduct(req,resp);break;
		case "man_users"://�û�����
			UserCtrl(req,resp);break;
		case "updateusers"://�޸��û���Ϣ
			UpdateUsers(req,resp);break;
		case "deleteusers"://ɾ���û�
			DeleteUsers(req,resp);break;
		case "newuser"://¼���û�
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
