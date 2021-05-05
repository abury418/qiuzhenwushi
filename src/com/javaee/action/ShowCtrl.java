package com.javaee.action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaee.bean.Animal;
import com.javaee.bean.Article;
import com.javaee.bean.Collects;
import com.javaee.bean.Comment;
import com.javaee.bean.Dining;
import com.javaee.bean.Dinosaur;
import com.javaee.bean.Dish;
import com.javaee.bean.EarthGrow;
import com.javaee.bean.News;
import com.javaee.bean.Order;
import com.javaee.bean.PageModel;
import com.javaee.bean.Stone;
import com.javaee.biz.ArticleServImpl;
import com.javaee.biz.CollectServImpl;
import com.javaee.biz.CommentServImpl;
import com.javaee.biz.DiningServImpl;
import com.javaee.biz.DishServImpl;
import com.javaee.biz.IArticleServ;
import com.javaee.biz.IDiningServ;
import com.javaee.biz.IDishServ;
import com.javaee.biz.INewsServ;
import com.javaee.biz.IOrderServ;
import com.javaee.biz.IStoneServ;
import com.javaee.biz.NewsServImpl;
import com.javaee.biz.OrderServImpl;
import com.javaee.biz.StoneServImpl;
import com.javaee.util.DAOFactory;

@WebServlet("/showctrl")
public class ShowCtrl extends baseControl {

	private void todetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int dishid = Integer.parseInt(request.getParameter("DishId"));
		DishServImpl disherv = (DishServImpl) DAOFactory.newInstance("IDishServ");
		Dish dishdetail = disherv.findDishDetails(dishid);
		
		request.setAttribute("dishdetail", dishdetail);
		
		int dinid=dishdetail.getDiningId();
		DiningServImpl diningserv = (DiningServImpl) DAOFactory.newInstance("IDiningServ");
		ArrayList<Dining> dinName=diningserv.getName(dinid);
		
		request.setAttribute("dinName", dinName.get(0).getDiningName());
		
		
		logger.debug(dishdetail);
		logger.debug(dinName);
		RequestDispatcher rd = request.getRequestDispatcher("dishdetails.jsp");
		rd.forward(request, response);
	}
	
	private void todish(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		//获取传过来的餐厅id
		int diningid = Integer.parseInt(request.getParameter("DiningId"));
		Dish dish = new Dish();
		dish.setDiningId(diningid);
		DiningServImpl diningserv = (DiningServImpl) DAOFactory.newInstance("IDiningServ");
		RequestDispatcher rd = request.getRequestDispatcher("dishs.jsp");
		if(diningserv.validateDining(dish)) {
			IDishServ dishserv = (IDishServ) DAOFactory.newInstance("IDishServ");
			ArrayList<Dish> dishlist = dishserv.findDishPageList(1, 27);
			int sz=dishlist.size();
			for (int i=0;i<sz;i++) {
				
				if(dishlist.get(i).getDiningId()!=diningid) {
					dishlist.remove(i);
					i--;
					sz--;
				}	
			}
			request.setAttribute("dishlist", dishlist);
			
			logger.debug(dishlist.size());
			int totalRecords = dishserv.getTotalRecords();
			PageModel<Dish> pageModel = new PageModel<Dish>(totalRecords,1,27,dishlist);
			request.setAttribute("pageModel", pageModel);
			// 跳转到dishs.jsp页面
			rd.forward(request, response);
		}
		else {
			response.sendRedirect("pages-404.html");
		}
	}
	/*
	 * 通过名称查询岩石
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	private void searchByLei(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取传过来的岩石名
		
		IStoneServ stoneserv = (IStoneServ) DAOFactory.newInstance("IStoneServ");
		ArrayList<Stone> stonelist = stoneserv.findStonesByLei("自然元素");
		
		request.setAttribute("pageModel", stonelist);
		

		RequestDispatcher rd = request.getRequestDispatcher("/stones.jsp");
		rd.forward(request, response);
	}
	
	private void tocheckout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/checkout.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 跳转到岩石页面
	 */
	private void toStones(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//获取传过来的分类名
		int category = Integer.parseInt(request.getParameter("SCategory"));
		Stone stone = new Stone();
		stone.setSCategory(category);//设置分类
		RequestDispatcher rd = request.getRequestDispatcher("stones.jsp");
		//按分类显示对应岩石列表
		IStoneServ stoneserv = (IStoneServ) DAOFactory.newInstance("IStoneServ");
		ArrayList<Stone> stonelist = stoneserv.findStonePageList(1, 27);
		int sz=stonelist.size();
		for (int i=0;i<sz;i++) {
			
			if(stonelist.get(i).getSCategory()!=category) {
				stonelist.remove(i);
				i--;
				sz--;
			}	
		}
		request.setAttribute("stonelist", stonelist);
		logger.debug(stonelist.size());
		int totalRecords = stoneserv.getTotalRecords();
		PageModel<Stone> pageModel = new PageModel<Stone>(totalRecords,1,27,stonelist);
		request.setAttribute("pageModel", pageModel);
		// 跳转到stones.jsp页面
		rd.forward(request, response);
		
	}
	
	/*
	 * 跳转到岩石详情页面
	 */
	private void toStoneDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//获取传过来的岩石id
		int sid = Integer.parseInt(request.getParameter("SId"));
		Stone stone = new Stone();
		stone.setSId(sid);//设置id
		//按id显示岩石详情
		StoneServImpl stoneserv = (StoneServImpl) DAOFactory.newInstance("IStoneServ");
		Stone stonedetails = stoneserv.findStoneDetails(sid);
		request.setAttribute("stonedetails", stonedetails);
		logger.debug(stonedetails);
		//按id显示所有笔记
		ArrayList<Comment> commentlist = stoneserv.findCommentPageList(sid);
		request.setAttribute("commentlist", commentlist);
		logger.debug(commentlist.size());
		int totalRecords = stoneserv.getTotalCommentRecords(sid);
		PageModel<Comment> pageModel = new PageModel<Comment>(totalRecords,1,27,commentlist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("stonedetails.jsp");
		rd.forward(request, response);
		
	}
	
	/*
	 *添加新笔记
	 */
	private void newComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid = Integer.parseInt(request.getParameter("UserId"));//用户id
		int sid,aid,nid;
		String sname,atitle,ntitle;
		if(request.getParameter("SId")!=null) {
			sid=Integer.parseInt(request.getParameter("SId"));//岩石id
			sname=request.getParameter("SName");
		}
		else {
			sid=0;
			sname=null;
		}
		if(request.getParameter("AId")!=null) {
			aid = Integer.parseInt(request.getParameter("AId"));//文章id
			atitle=request.getParameter("ATitle");
		}
		else {
			aid=0;
			atitle=null;
		}
		if(request.getParameter("NId")!=null) {
			nid=Integer.parseInt(request.getParameter("NId"));//新闻id
			ntitle=request.getParameter("NTitle");
		}
		else {
			nid=0;
			ntitle=null;
		}
		String username = request.getParameter("userName");//用户名
		String ccontent = request.getParameter("cContent");//笔记内容
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String ctime = formatter.format(date);//添加笔记的时间
		String cimage = null;
		//创建一个新comment对象
		Comment comment = new Comment();
		//对岩石添加评论
		comment.setSId(sid);
		comment.setSName(sname);
		comment.setAId(aid);
		comment.setATitle(atitle);
		comment.setNId(nid);
		comment.setNTitle(ntitle);
		comment.setUserId(userid);
		comment.setUserName(username);
		comment.setCTime(ctime);
		comment.setCContent(ccontent);
		comment.setCImage(cimage);
		StoneServImpl stoneserv = (StoneServImpl) DAOFactory.newInstance("IStoneServ");
		stoneserv.insertComment(comment);
		NewsServImpl newsserv = (NewsServImpl) DAOFactory.newInstance("INewsServ");
		newsserv.insertComment(comment);
		if(sid!=0) {
			Stone stone = new Stone();
			stone.setSId(sid);//设置id
			//按id显示岩石详情
			Stone stonedetails = stoneserv.findStoneDetails(sid);
			request.setAttribute("stonedetails", stonedetails);
			logger.debug(stonedetails);
			//按id显示所有笔记
			ArrayList<Comment> commentlist = stoneserv.findCommentPageList(sid);
			request.setAttribute("commentlist", commentlist);
			logger.debug(commentlist.size());
			int totalRecords = stoneserv.getTotalCommentRecords(sid);
			PageModel<Comment> pageModel = new PageModel<Comment>(totalRecords,1,27,commentlist);
			request.setAttribute("pageModel", pageModel);
			RequestDispatcher rd = request.getRequestDispatcher("stonedetails.jsp");
			rd.forward(request, response);
		}
		if(nid!=0) {
			News news = new News();
			news.setNId(nid);//设置id
			//按id显示文章详情
			News newsdetails = newsserv.findNewsDetails(nid);
			request.setAttribute("newsdetails", newsdetails);
			logger.debug(newsdetails);
			//按id显示所有评论
			ArrayList<Comment> commentlist = newsserv.findCommentPageList(nid);
			request.setAttribute("commentlist", commentlist);
			logger.debug(commentlist.size());
			int totalRecords = newsserv.getTotalCommentRecords(nid);
			PageModel<Comment> pageModel = new PageModel<Comment>(totalRecords,1,20,commentlist);
			request.setAttribute("pageModel", pageModel);
			RequestDispatcher rd = request.getRequestDispatcher("newsdetails.jsp");
			rd.forward(request, response);
		}
	}
	
	/*
	 * 跳转到文章页面
	 */
	private void toArticles(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		IArticleServ articleserv = (IArticleServ) DAOFactory.newInstance("IArticleServ");
		ArrayList<Article> articlelist = articleserv.findArticlePageList(1, 6);
		request.setAttribute("articlelist", articlelist);
		logger.debug(articlelist);
		int totalRecords = articleserv.getTotalRecords();
		PageModel<Article> pageModel = new PageModel<Article>(totalRecords,1,6,articlelist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("articles.jsp");
		rd.forward(request, response);
		
	}
	
	/*
	 * 跳转到文章详情页面
	 */
	private void toArticleDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//获取传过来的文章id
		int aid = Integer.parseInt(request.getParameter("AId"));
		Article article = new Article();
		article.setAId(aid);
		//按id显示文章详情
		ArticleServImpl articleserv = (ArticleServImpl) DAOFactory.newInstance("IArticleServ");
		Article articledetails = articleserv.findArticleDetails(aid);
		request.setAttribute("articledetails", articledetails);
		logger.debug(articledetails);
		//按文章id显示所有评论
		ArrayList<Comment> commentlist = articleserv.findCommentPageList(aid);
		request.setAttribute("commentlist", commentlist);
		logger.debug(commentlist.size());
		int totalRecords = articleserv.getTotalCommentRecords(aid);
		PageModel<Comment> pageModel = new PageModel<Comment>(totalRecords,1,20,commentlist);
		request.setAttribute("pageModel", pageModel);
		//按关键词检索相关文章信息
		String keyword = request.getParameter("AKeyWord");//获取文章关键词
		Article article2 = new Article();
		article2.setAKeyWord(keyword);//设置关键词
		IArticleServ articleserv2 = (IArticleServ) DAOFactory.newInstance("IArticleServ");
		ArrayList<Article> articlelist = articleserv2.findArticlePageList2(keyword);
		int sz=articlelist.size();
		for (int i=0;i<sz;i++) {
			if(articlelist.get(i).getAId()==aid) {
				articlelist.remove(i);
				i--;
				sz--;
			}	
		}
		request.setAttribute("articlelist", articlelist);
		logger.debug(articlelist.size());
		int totalRecords2 = articleserv2.getTotalRecords();
		PageModel<Article> pageModel2 = new PageModel<Article>(totalRecords,1,20,articlelist);
		request.setAttribute("pageModel2", pageModel2);
		//存储上一篇文章与下一篇文章
		Article sarticle=new Article();
		Article xarticle=new Article();
		int said=aid-1;
		int xaid=aid+1;
		if(said==6000) {//没有上一篇了
			sarticle.setAId(0);
			sarticle.setATitle("这是第一篇");
		}
		else {
			sarticle=articleserv.findArticleDetails(said);
		}
		if(xaid==6009) {//最多九篇
			xarticle.setAId(0);
			xarticle.setATitle("这是最后一篇");
		}
		else {
			xarticle=articleserv.findArticleDetails(xaid);
		}
		
		request.setAttribute("sarticle", sarticle);
		request.setAttribute("xarticle", xarticle);
		RequestDispatcher rd = request.getRequestDispatcher("articledetails.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 跳转到新闻列表
	 */
	private void toNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		INewsServ newsserv = (INewsServ) DAOFactory.newInstance("INewsServ");
		ArrayList<News> newslist = newsserv.findNewsPageList(1, 6);
		request.setAttribute("newslist", newslist);
		logger.debug(newslist);
		int totalRecords = newsserv.getTotalRecords();
		PageModel<News> pageModel = new PageModel<News>(totalRecords,1,6,newslist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("news.jsp");
		rd.forward(request, response);
		
	}
	
	/*
	 * 跳转到新闻详情页面
	 */
	private void toNewsDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//获取传过来的新闻id
		int nid = Integer.parseInt(request.getParameter("NId"));
		News news = new News();
		news.setNId(nid);
		//按id显示新闻详情
		NewsServImpl newsserv = (NewsServImpl) DAOFactory.newInstance("INewsServ");
		News newsdetails = newsserv.findNewsDetails(nid);
		request.setAttribute("newsdetails", newsdetails);
		logger.debug(newsdetails);
		//按新闻id显示所有评论
		ArrayList<Comment> commentlist = newsserv.findCommentPageList(nid);
		request.setAttribute("commentlist", commentlist);
		logger.debug(commentlist.size());
		int totalRecords = newsserv.getTotalCommentRecords(nid);
		PageModel<Comment> pageModel = new PageModel<Comment>(totalRecords,1,20,commentlist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("newsdetails.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 跳转到用户首页页面
	 * 用户总评论数
	 * 用户总收藏笔记数
	 * 用户的订单信息列表
	 */
	private void toMyHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//获取传过来的用户id
		int userid = Integer.parseInt(request.getParameter("UserId"));
		Comment comment = new Comment();
		comment.setUserId(userid);
		//按用户id获取评论总数
		ArticleServImpl commentserv = (ArticleServImpl) DAOFactory.newInstance("IArticleServ");
		int commentnum = commentserv.getTotalUserCommentRecords(userid);
		request.setAttribute("commentnum", commentnum);
		logger.debug(commentnum);
		//按用户id获取收藏数
		int collectnum = commentserv.getTotalCollectRecords(userid);
		request.setAttribute("collectnum", collectnum);
		logger.debug(collectnum);
		//按用户id获取订单信息列表
		IOrderServ orderserv=(IOrderServ) DAOFactory.newInstance("IOrderServ");
		ArrayList<Order> orderlist=orderserv.findAllOrders(userid);
		ArrayList<Order> forderlist=orderserv.findFinishOrders(userid);
		request.setAttribute("allorders", orderlist);
		logger.debug(orderlist);
		request.setAttribute("forderlist", forderlist);
		logger.debug(forderlist);
		RequestDispatcher rd = request.getRequestDispatcher("my_home.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 查看某条订单详情
	 */
	private void toOrderDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//获取传过来的订单id
		String orderid = request.getParameter("OrderId");
		Order order = new Order();
		order.setOrderId(orderid);
		//按订单id获取订单详情
		OrderServImpl orderserv = (OrderServImpl) DAOFactory.newInstance("IOrderServ");
		Order orderdetails = orderserv.findOrderDetails(orderid);
		request.setAttribute("orderdetails", orderdetails);
		logger.debug(orderdetails);
		RequestDispatcher rd = request.getRequestDispatcher("orderdetails.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 添加收藏
	 */
	private void addCollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int sid = Integer.parseInt(request.getParameter("SId"));
		
		StoneServImpl stoneserv = (StoneServImpl) DAOFactory.newInstance("IStoneServ");
		Stone stonedetails = stoneserv.findStoneDetails(sid);
		ArrayList<Comment> commentlist = stoneserv.findCommentPageList(sid);
		request.setAttribute("commentlist", commentlist);
		//按id显示岩石详情
		request.setAttribute("stonedetails", stonedetails);
		logger.debug(stonedetails);
		//按id显示所有笔记
				
		logger.debug(commentlist.size());
		int totalRecords = stoneserv.getTotalCommentRecords(sid);
		PageModel<Comment> pageModel = new PageModel<Comment>(totalRecords,1,27,commentlist);
		request.setAttribute("pageModel", pageModel);
		
		String sname = stonedetails.getSName();
		String simage = stonedetails.getSImage()+"1.jpg";
		String slei = stonedetails.getSLei();
		int commentsize = commentlist.size();
		System.out.print(commentsize);
		
		int userid = Integer.parseInt(request.getParameter("UserId"));
		int aid = 0;
		String comark = null;
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String cotime = formatter.format(date);//添加收藏的时间
		int cofileid = 1;
		
		Collects collect = new Collects();
		collect.setAId(aid);
		collect.setSId(sid);
		collect.setSName(sname);
		collect.setSImage(simage);
		collect.setSLei(slei);
		collect.setUserId(userid);
		collect.setCOMark(comark);
		collect.setCOTime(cotime);
		collect.setCOFileId(cofileid);
		collect.setCommentSize(commentsize);
		
		CollectServImpl collectserv = (CollectServImpl) DAOFactory.newInstance("ICollectServ");
		collectserv.insertCollectStone(collect);
		
		RequestDispatcher rd = request.getRequestDispatcher("stonedetails.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 跳转到个人收藏列表
	 */
	private void toMyCollects(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid = Integer.parseInt(request.getParameter("UserId"));
		CollectServImpl collectserv = (CollectServImpl) DAOFactory.newInstance("ICollectServ");
		ArrayList<Collects> collectslist = collectserv.findUserCollectsPageList(userid);
		request.setAttribute("collectslist", collectslist);
		logger.debug(collectslist);
		int totalRecords = collectserv.getTotalRecords(userid);
		PageModel<Collects> pageModel = new PageModel<Collects>(totalRecords,1,6,collectslist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("my_collects.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 跳转到文章收藏列表
	 */
	private void toMyArticles(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid = Integer.parseInt(request.getParameter("UserId"));
		CollectServImpl collectserv = (CollectServImpl) DAOFactory.newInstance("ICollectServ");
		ArrayList<Collects> collectslist = collectserv.findArticleCollectsPageList(userid);
		request.setAttribute("collectslist", collectslist);
		logger.debug(collectslist);
		int totalRecords = collectserv.getTotalArticleRecords(userid);
		PageModel<Collects> pageModel = new PageModel<Collects>(totalRecords,1,6,collectslist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("my_articlecollects.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 删除收藏的岩石记录
	 */
	private void deleteCollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid = Integer.parseInt(request.getParameter("UserId"));
		int sid = Integer.parseInt(request.getParameter("SId"));
		Collects collect = new Collects();
		collect.setUserId(userid);
		collect.setSId(sid);
		CollectServImpl collectserv = (CollectServImpl) DAOFactory.newInstance("ICollectServ");
		collectserv.deleteCollect(collect);
		ArrayList<Collects> collectslist = collectserv.findUserCollectsPageList(userid);
		request.setAttribute("collectslist", collectslist);
		logger.debug(collectslist);
		int totalRecords = collectserv.getTotalRecords(userid);
		PageModel<Collects> pageModel = new PageModel<Collects>(totalRecords,1,6,collectslist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("my_collects.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 删除收藏的文章
	 */
	private void deleteArticle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid = Integer.parseInt(request.getParameter("UserId"));
		int aid = Integer.parseInt(request.getParameter("AId"));
		Collects collect = new Collects();
		collect.setUserId(userid);
		collect.setAId(aid);
		CollectServImpl collectserv = (CollectServImpl) DAOFactory.newInstance("ICollectServ");
		collectserv.deleteArticleCollect(collect);
		ArrayList<Collects> collectslist = collectserv.findArticleCollectsPageList(userid);
		request.setAttribute("collectslist", collectslist);
		logger.debug(collectslist);
		int totalRecords = collectserv.getTotalArticleRecords(userid);
		PageModel<Collects> pageModel = new PageModel<Collects>(totalRecords,1,6,collectslist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("my_articlecollects.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 跳转到我的评论与笔记列表
	 * 对文章的评论
	 * 对岩矿的笔记
	*/
	private void toMyReviews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid = Integer.parseInt(request.getParameter("UserId"));
		//获取对岩石发表的笔记列表
		StoneServImpl stonecommentserv = (StoneServImpl) DAOFactory.newInstance("IStoneServ");
		ArrayList<Comment> stonecommentslist1 = stonecommentserv.findUserCommentPageList(userid);
		ArrayList<Comment> stonecommentslist2 = stonecommentserv.findUserCommentPageList(userid);
		request.setAttribute("stonecommentslist1", stonecommentslist1);
		logger.debug(stonecommentslist1);
		request.setAttribute("stonecommentslist2", stonecommentslist2);
		logger.debug(stonecommentslist2);
		//按时间降序排序
		Collections.sort(stonecommentslist1, new Comparator<Comment>() {
            @Override
            public int compare(Comment h1, Comment h2) {
                return h1.getCTime().compareTo(h2.getCTime());
            }
        });
        Collections.reverse(stonecommentslist1);
        int totalRecords = stonecommentserv.getTotalUserCommentRecords(userid);
		PageModel<Comment> pageModel = new PageModel<Comment>(totalRecords,1,6,stonecommentslist1);
		request.setAttribute("pageModelTime", pageModel);
		//按点赞数降序
		Collections.sort(stonecommentslist2, new Comparator<Comment>() {
            @Override
            public int compare(Comment h1, Comment h2) {
                return Integer.valueOf(h1.getCLikeNum()).compareTo(h2.getCLikeNum());
            }
        });
        Collections.reverse(stonecommentslist2);
        int totalRecordslike = stonecommentserv.getTotalUserCommentRecords(userid);
		PageModel<Comment> pageModellike = new PageModel<Comment>(totalRecordslike,1,6,stonecommentslist2);
		request.setAttribute("pageModelLike", pageModellike);
		//获取对文章发布的评论列表
		ArrayList<Comment> articlecommentslist = stonecommentserv.findUserCommentPageList2(userid);
		request.setAttribute("articlecommentslist", articlecommentslist);
		logger.debug(articlecommentslist);
		int totalRecords2 = stonecommentserv.getTotalUserCommentRecords2(userid);
		PageModel<Comment> pageModel2 = new PageModel<Comment>(totalRecords2,1,6,articlecommentslist);
		request.setAttribute("pageModel2", pageModel2);
		
		RequestDispatcher rd = request.getRequestDispatcher("my_reviews.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 跳转到我的订单列表
	*/
	private void toMyOrders(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid = Integer.parseInt(request.getParameter("UserId"));
		OrderServImpl orderserv = (OrderServImpl) DAOFactory.newInstance("IOrderServ");
		ArrayList<Order> orderlist=orderserv.findFinishOrders(userid);
		ArrayList<Order> notorderlist=orderserv.findNotFinishOrders(userid);
		request.setAttribute("myfinishorders", orderlist);
		request.setAttribute("mynotfinishorders", notorderlist);
		logger.debug(orderlist);
		logger.debug(notorderlist);
		RequestDispatcher rd = request.getRequestDispatcher("my_orders.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 在个人空间中修改个人评论的内容
	*/
	private void updateComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//获取当前被更改的评论的编号
		int cid = Integer.parseInt(request.getParameter("CId"));
		//获取更新后的相关信息
		String newcontent = request.getParameter("newcomment");
		System.out.println(cid);
		System.out.println(newcontent);
		Comment comment = new Comment();
		comment.setCContent("修改成功");
		comment.setCId(cid);
		
		IArticleServ articleserv = (IArticleServ) DAOFactory.newInstance("IArticleServ");
		articleserv.updateComment(comment);
		//RequestDispatcher rd = request.getRequestDispatcher("my_reviews.jsp");
		toMyReviews(request,response);
	}
	
	/*
	 * 更新个人订单状态为确认完成
	*/
	private void finishThisOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//
	    int userid = Integer.parseInt(request.getParameter("UserId"));
		String orderid = request.getParameter("OrderId");
		//
		Order order = new Order();
		order.setOrderId(orderid);
		
		
		IOrderServ orderserv = (IOrderServ) DAOFactory.newInstance("IOrderServ");
		orderserv.updateToSureStatus(order);
		ArrayList<Order> orderlist=orderserv.findFinishOrders(userid);
		ArrayList<Order> notorderlist=orderserv.findNotFinishOrders(userid);
		request.setAttribute("myfinishorders", orderlist);
		request.setAttribute("mynotfinishorders", notorderlist);
		logger.debug(orderlist);
		logger.debug(notorderlist);
		RequestDispatcher rd = request.getRequestDispatcher("my_orders.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 取消个人订单
	*/
	private void cancleThisOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//
	    int userid = Integer.parseInt(request.getParameter("UserId"));
		String orderid = request.getParameter("OrderId");
		//
		Order order = new Order();
		order.setOrderId(orderid);
		
		
		IOrderServ orderserv = (IOrderServ) DAOFactory.newInstance("IOrderServ");
		orderserv.updateToCancleStatus(order);
		ArrayList<Order> orderlist=orderserv.findFinishOrders(userid);
		ArrayList<Order> notorderlist=orderserv.findNotFinishOrders(userid);
		request.setAttribute("myfinishorders", orderlist);
		request.setAttribute("mynotfinishorders", notorderlist);
		logger.debug(orderlist);
		logger.debug(notorderlist);
		RequestDispatcher rd = request.getRequestDispatcher("my_orders.jsp");
		rd.forward(request, response);
	}
	/*
	 * 跳转到dining页面
	 */
	private void todining(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/dinings.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 跳转到地球演义页面
	 */
	private void toEarthGrow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		IStoneServ stoneserv = (IStoneServ) DAOFactory.newInstance("IStoneServ");
		ArrayList<EarthGrow> growlist = stoneserv.findEarthGrow();
		request.setAttribute("growlist", growlist);
		logger.debug(growlist);
		
		RequestDispatcher rd = request.getRequestDispatcher("/evolutionColumn.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 跳转到史前漫记页面
	 */
	private void toAnimals(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		IStoneServ stoneserv = (IStoneServ) DAOFactory.newInstance("IStoneServ");
		ArrayList<Animal> alist1 = stoneserv.findAnimals("古植物");
		ArrayList<Animal> alist2 = stoneserv.findAnimals("古无脊椎动物");
		ArrayList<Animal> alist3 = stoneserv.findAnimals("古脊椎动物");
		request.setAttribute("alist1", alist1);
		request.setAttribute("alist2", alist2);
		request.setAttribute("alist3", alist3);
		logger.debug(alist1);
		logger.debug(alist2);
		logger.debug(alist3);
		RequestDispatcher rd = request.getRequestDispatcher("/animalColumn.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 跳转到恐龙百科页面
	 */
	private void toDinosaurs(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		IStoneServ stoneserv = (IStoneServ) DAOFactory.newInstance("IStoneServ");
		ArrayList<Dinosaur> dlist1=stoneserv.findDinosaurs("1","蜥脚亚目");
		ArrayList<Dinosaur> dlist2=stoneserv.findDinosaurs("1","兽脚亚目");
		request.setAttribute("dlist1", dlist1);
		request.setAttribute("dlist2", dlist2);
		logger.debug(dlist1);
		logger.debug(dlist2);
		RequestDispatcher rd = request.getRequestDispatcher("/dinosaurDetails.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 跳转到恐龙百科页面
	 */
	private void toDinosaurs2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		IStoneServ stoneserv = (IStoneServ) DAOFactory.newInstance("IStoneServ");
		ArrayList<Dinosaur> dlist3=stoneserv.findDinosaurs("2","鸟脚类");
		ArrayList<Dinosaur> dlist4=stoneserv.findDinosaurs("2","剑龙类");
		ArrayList<Dinosaur> dlist5=stoneserv.findDinosaurs("2","甲龙类");
		ArrayList<Dinosaur> dlist6=stoneserv.findDinosaurs("2","角龙类");
		ArrayList<Dinosaur> dlist7=stoneserv.findDinosaurs("2","肿头龙类");
		request.setAttribute("dlist3", dlist3);
		request.setAttribute("dlist4", dlist4);
		request.setAttribute("dlist5", dlist5);
		request.setAttribute("dlist6", dlist6);
		request.setAttribute("dlist7", dlist7);
		logger.debug(dlist3);
		logger.debug(dlist4);
		logger.debug(dlist5);
		logger.debug(dlist6);
		logger.debug(dlist7);
		RequestDispatcher rd = request.getRequestDispatcher("/dinosaurDetails2.jsp");
		rd.forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		switch (action) {
		case "todish":
			todish(request, response);break;	
		case "todinings":
			todining(request, response);break;
		case "todetails":
			todetails(request, response);break;	
		case "searchbylei":
			searchByLei(request, response);break;
		case "tocheckout":
			tocheckout(request, response);break;
		case "tostones":
			toStones(request, response);break;
		case "tostonedetails":
			toStoneDetails(request, response);break;
		case "newcomment":
			newComment(request, response);break;
		case "toarticles":
			toArticles(request, response);break;
		case "toarticledetails":
			toArticleDetails(request, response);break;
		case "tonews":
			toNews(request, response);break;
		case "tonewsdetails":
			toNewsDetails(request, response);break;
		case "tomyhome":
			toMyHome(request, response);break;
		case "toorderdetails":
			toOrderDetails(request, response);break;
		case "addcollect":
			addCollect(request, response);break;
		case "tomycollects":
			toMyCollects(request, response);break;
		case "tomyarticles":
			toMyArticles(request, response);break;
		case "deletecollect":
			deleteCollect(request, response);break;
		case "deletearticle":
			deleteArticle(request, response);break;
		case "tomyreviews":
			toMyReviews(request, response);break;
		case "tomyorders":
			toMyOrders(request, response);break;
		case "updatecomment":
			updateComment(request, response);break;
		case "finishthisorder":
			finishThisOrder(request, response);break;
		case "canclethisorder":
			cancleThisOrder(request, response);break;
		case "toearthgrow":
			toEarthGrow(request, response);break;
		case "toanimals":
			toAnimals(request, response);break;
		case "todinosaurs":
			toDinosaurs(request, response);break;
		case "todinosaurs2":
			toDinosaurs2(request, response);break;
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	

}
