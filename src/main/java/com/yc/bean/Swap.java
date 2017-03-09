package com.yc.bean;

import java.util.Date;

import org.springframework.stereotype.Component;
@Component
//商品的交换物品表
public class Swap {
	private Long swapid;

    private Integer speciesid;

    private Integer parentid;

    private String userid;

    private String swaptitle;	//#商品标题

    private String swapneworold;	//#商品新旧

    private String swaptelphone;	//电话

    private Date swapregtime;		//发布时间

    private String swapimg;			//发布缩略图

    private String swapdetail;		//交换商品的详细

    private String swapstatus;		//交换商品的状态

    private Date swapedittime;		//交换商品的注册时间

    private String swaparea;		//交换商品的地址

    private String swapaim;			//交换的目标商品

	public Long getSwapid() {
		return swapid;
	}

	public void setSwapid(Long swapid) {
		this.swapid = swapid;
	}

	public Integer getSpeciesid() {
		return speciesid;
	}

	public void setSpeciesid(Integer speciesid) {
		this.speciesid = speciesid;
	}

	public Integer getParentid() {
		return parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getSwaptitle() {
		return swaptitle;
	}

	public void setSwaptitle(String swaptitle) {
		this.swaptitle = swaptitle;
	}

	public String getSwapneworold() {
		return swapneworold;
	}

	public void setSwapneworold(String swapneworold) {
		this.swapneworold = swapneworold;
	}

	public String getSwaptelphone() {
		return swaptelphone;
	}

	public void setSwaptelphone(String swaptelphone) {
		this.swaptelphone = swaptelphone;
	}

	public Date getSwapregtime() {
		return swapregtime;
	}

	public void setSwapregtime(Date swapregtime) {
		this.swapregtime = swapregtime;
	}

	public String getSwapimg() {
		return swapimg;
	}

	public void setSwapimg(String swapimg) {
		this.swapimg = swapimg;
	}

	public String getSwapdetail() {
		return swapdetail;
	}

	public void setSwapdetail(String swapdetail) {
		this.swapdetail = swapdetail;
	}

	public String getSwapstatus() {
		return swapstatus;
	}

	public void setSwapstatus(String swapstatus) {
		this.swapstatus = swapstatus;
	}

	public Date getSwapedittime() {
		return swapedittime;
	}

	public void setSwapedittime(Date swapedittime) {
		this.swapedittime = swapedittime;
	}

	public String getSwaparea() {
		return swaparea;
	}

	public void setSwaparea(String swaparea) {
		this.swaparea = swaparea;
	}

	public String getSwapaim() {
		return swapaim;
	}

	public void setSwapaim(String swapaim) {
		this.swapaim = swapaim;
	}

	@Override
	public String toString() {
		return "Swap [swapid=" + swapid + ", speciesid=" + speciesid + ", parentid=" + parentid + ", userid=" + userid
				+ ", swaptitle=" + swaptitle + ", swapneworold=" + swapneworold + ", swaptelphone=" + swaptelphone
				+ ", swapregtime=" + swapregtime + ", swapimg=" + swapimg + ", swapdetail=" + swapdetail
				+ ", swapstatus=" + swapstatus + ", swapedittime=" + swapedittime + ", swaparea=" + swaparea
				+ ", swapaim=" + swapaim + "]";
	}

	public Swap(Long swapid, Integer speciesid, Integer parentid, String userid, String swaptitle, String swapneworold,
			String swaptelphone, Date swapregtime, String swapimg, String swapdetail, String swapstatus,
			Date swapedittime, String swaparea, String swapaim) {
		super();
		this.swapid = swapid;
		this.speciesid = speciesid;
		this.parentid = parentid;
		this.userid = userid;
		this.swaptitle = swaptitle;
		this.swapneworold = swapneworold;
		this.swaptelphone = swaptelphone;
		this.swapregtime = swapregtime;
		this.swapimg = swapimg;
		this.swapdetail = swapdetail;
		this.swapstatus = swapstatus;
		this.swapedittime = swapedittime;
		this.swaparea = swaparea;
		this.swapaim = swapaim;
	}

	public Swap() {
		super();
	}
    
    
}
