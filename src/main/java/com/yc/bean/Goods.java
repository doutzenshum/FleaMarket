package com.yc.bean;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Component;
@Component
//发布的商品表
public class Goods implements Serializable{

	private static final long serialVersionUID = 6762886381816707931L;
	
	private Long goodsid;

    private Integer speciesid;  //类别id

    private Integer parentid;	//父类别id

    private String userid;

    private String goodstitle;	// #商品标题

    private Double goodsprice;	//#商品现价

    private Double goodsrealprice;	//#商品原价

    private String goodsneworold;	//#是否新旧

    private Integer goodsisbargain;	// #是否接受讲价

    private Integer goodsissend;	//#是否支持送货上门

    private String goodstelphone;	//#商品联系

    private Date goodsregtime;		//#商品发布时间

    private String goodsimg;		// #商品默认缩略图

    private String goodsdetail;		//#商品详细

    private String goodsstatus;		//#商品状态
    
    private String nowaddress;		//#商品所在地
    
    private Date goodsedittime;		//商品修改时间
    
    private Date goodssuccesstime;	//	#商品成交时间

	public Long getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(Long goodsid) {
		this.goodsid = goodsid;
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

	public String getGoodstitle() {
		return goodstitle;
	}

	public void setGoodstitle(String goodstitle) {
		this.goodstitle = goodstitle;
	}

	public Double getGoodsprice() {
		return goodsprice;
	}

	public void setGoodsprice(Double goodsprice) {
		this.goodsprice = goodsprice;
	}

	public Double getGoodsrealprice() {
		return goodsrealprice;
	}

	public void setGoodsrealprice(Double goodsrealprice) {
		this.goodsrealprice = goodsrealprice;
	}

	public String getGoodsneworold() {
		return goodsneworold;
	}

	public void setGoodsneworold(String goodsneworold) {
		this.goodsneworold = goodsneworold;
	}

	public Integer getGoodsisbargain() {
		return goodsisbargain;
	}

	public void setGoodsisbargain(Integer goodsisbargain) {
		this.goodsisbargain = goodsisbargain;
	}

	public Integer getGoodsissend() {
		return goodsissend;
	}

	public void setGoodsissend(Integer goodsissend) {
		this.goodsissend = goodsissend;
	}

	public String getGoodstelphone() {
		return goodstelphone;
	}

	public void setGoodstelphone(String goodstelphone) {
		this.goodstelphone = goodstelphone;
	}

	public Date getGoodsregtime() {
		return goodsregtime;
	}

	public void setGoodsregtime(Date goodsregtime) {
		this.goodsregtime = goodsregtime;
	}

	public String getGoodsimg() {
		return goodsimg;
	}

	public void setGoodsimg(String goodsimg) {
		this.goodsimg = goodsimg;
	}

	public String getGoodsdetail() {
		return goodsdetail;
	}

	public void setGoodsdetail(String goodsdetail) {
		this.goodsdetail = goodsdetail;
	}

	public String getGoodsstatus() {
		return goodsstatus;
	}

	public void setGoodsstatus(String goodsstatus) {
		this.goodsstatus = goodsstatus;
	}

	public String getNowaddress() {
		return nowaddress;
	}

	public void setNowaddress(String nowaddress) {
		this.nowaddress = nowaddress;
	}

	public Date getGoodsedittime() {
		return goodsedittime;
	}

	public void setGoodsedittime(Date goodsedittime) {
		this.goodsedittime = goodsedittime;
	}

	public Date getGoodssuccesstime() {
		return goodssuccesstime;
	}

	public void setGoodssuccesstime(Date goodssuccesstime) {
		this.goodssuccesstime = goodssuccesstime;
	}

	@Override
	public String toString() {
		return "Goods [goodsid=" + goodsid + ", speciesid=" + speciesid + ", parentid=" + parentid + ", userid="
				+ userid + ", goodstitle=" + goodstitle + ", goodsprice=" + goodsprice + ", goodsrealprice="
				+ goodsrealprice + ", goodsneworold=" + goodsneworold + ", goodsisbargain=" + goodsisbargain
				+ ", goodsissend=" + goodsissend + ", goodstelphone=" + goodstelphone + ", goodsregtime=" + goodsregtime
				+ ", goodsimg=" + goodsimg + ", goodsdetail=" + goodsdetail + ", goodsstatus=" + goodsstatus
				+ ", nowaddress=" + nowaddress + ", goodsedittime=" + goodsedittime + ", goodssuccesstime="
				+ goodssuccesstime + "]";
	}

	public Goods(Long goodsid, Integer speciesid, Integer parentid, String userid, String goodstitle, Double goodsprice,
			Double goodsrealprice, String goodsneworold, Integer goodsisbargain, Integer goodsissend,
			String goodstelphone, Date goodsregtime, String goodsimg, String goodsdetail, String goodsstatus,
			String nowaddress, Date goodsedittime, Date goodssuccesstime) {
		super();
		this.goodsid = goodsid;
		this.speciesid = speciesid;
		this.parentid = parentid;
		this.userid = userid;
		this.goodstitle = goodstitle;
		this.goodsprice = goodsprice;
		this.goodsrealprice = goodsrealprice;
		this.goodsneworold = goodsneworold;
		this.goodsisbargain = goodsisbargain;
		this.goodsissend = goodsissend;
		this.goodstelphone = goodstelphone;
		this.goodsregtime = goodsregtime;
		this.goodsimg = goodsimg;
		this.goodsdetail = goodsdetail;
		this.goodsstatus = goodsstatus;
		this.nowaddress = nowaddress;
		this.goodsedittime = goodsedittime;
		this.goodssuccesstime = goodssuccesstime;
	}

	public Goods() {
		super();
	}
    
    
}
