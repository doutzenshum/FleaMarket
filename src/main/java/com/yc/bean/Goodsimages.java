package com.yc.bean;

import java.io.Serializable;

public class Goodsimages implements Serializable{

	private static final long serialVersionUID = 4880580492064382989L;
	
	private Long imageid;

    private String imagename;

    private Long goodsid;

	public Long getImageid() {
		return imageid;
	}

	public void setImageid(Long imageid) {
		this.imageid = imageid;
	}

	public String getImagename() {
		return imagename;
	}

	public void setImagename(String imagename) {
		this.imagename = imagename;
	}

	public Long getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(Long goodsid) {
		this.goodsid = goodsid;
	}

	@Override
	public String toString() {
		return "Goodsimages [imageid=" + imageid + ", imagename=" + imagename + ", goodsid=" + goodsid + "]";
	}

	public Goodsimages(Long imageid, String imagename, Long goodsid) {
		super();
		this.imageid = imageid;
		this.imagename = imagename;
		this.goodsid = goodsid;
	}

	public Goodsimages() {
		super();
	}
    
    
}
