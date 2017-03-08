package com.yc.model;
import java.io.Serializable;
import java.util.List;
/**
 * 这个包装类的作用是进行分页的操作并将分页的商品包装到一个List类别
 * @author lmj
 * @param <T>
 */
public class PageModel implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int total=0;
	private int currentpage=1;//当前页
	private int pageSize=8;   //每页显示的数据
	private int prepage=1;    //上一页
	private int nextpage=1;   //下一页
	private int totalpage=1;  //总页数
	private String goodsstatus="1";
	
	private int pageNow;//从第几条数据开始显示
	
	
	
	
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public void setPrepage(int prepage) {
		this.prepage = prepage;
	}
	public void setNextpage(int nextpage) {
		this.nextpage = nextpage;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		if(pageSize<=0){
			this.pageSize=1;
		}else{
			this.pageSize = pageSize;
		}
	}
	public int getPrepage() {
		this.totalpage=this.total%this.pageSize==0? this.total/this.pageSize  :   this.total/this.pageSize+1;
		return prepage<=1?1:currentpage-1;
	}
	public int getNextpage() {
		nextpage=currentpage>=totalpage?totalpage:currentpage+1;
		return nextpage;
	}
	public int getTotalpage() {
		this.totalpage=this.total%this.pageSize==0? this.total/this.pageSize  :   this.total/this.pageSize+1;
		return this.totalpage;
	}
	public String getGoodsstatus() {
		return goodsstatus;
	}
	public void setGoodsstatus(String goodsstatus) {
		this.goodsstatus = goodsstatus;
	}
	@Override
	public String toString() {
		return "PageModel [total=" + total + ", currentpage=" + currentpage + ", pageSize=" + pageSize + ", prepage="
				+ prepage + ", nextpage=" + nextpage + ", totalpage=" + totalpage + ", goodsstatus=" + goodsstatus
				+ ", pageNow=" + pageNow + "]";
	}
	
}
