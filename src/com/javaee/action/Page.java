package com.javaee.action;


/**
 * @author QQ:373672872
 *	鍒嗛〉Entity
 */
public class Page {
	
	//鎬昏褰曟暟
	private int total;
	//褰撳墠椤�
	private int currpage;
	//姣忛〉鏄剧ず璁板綍鏁伴噺
	private int pagesize;
	//鎬婚〉鏁�
	private int pagecount;
	//姣忛〉鏁版嵁鐨勫紑濮嬩笅鏍�
	private int start;
	
	public Page(int total, int currpage, int pagesize) {
		this.setTotal(total);
		this.setCurrpage(currpage);
		this.setPagesize(pagesize);
	}
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCurrpage() {
		return currpage;
	}
	public void setCurrpage(int currpage) {
		this.currpage = currpage;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getPagecount() {
		//璋冪敤璁剧疆鎬婚〉鏁版柟娉�
		this.setPagecount();
		return pagecount;
	}
	//璁剧疆鎬婚〉鏁�
	public void setPagecount(){
		this.pagecount = (total % pagesize == 0) ? total / pagesize : total / pagesize + 1;
	}
	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}
	public int getStart() {
		//璋冪敤璁剧疆琛屽彿鏂规硶
		this.setStart();
		return start;
	}
	//璁剧疆姣忛〉鐨勮捣濮嬭鍙�
	public void setStart(){
		this.start = (this.getCurrpage()-1)*this.getPagesize();
	}
	public void setStart(int start) {
		this.start = start;
	}
}

