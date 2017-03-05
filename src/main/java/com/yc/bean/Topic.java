package com.yc.bean;

import java.io.Serializable;
import java.util.Date;

//主题
public class Topic implements Serializable{

	private static final long serialVersionUID = -8454674291388102481L;

	private Long topicid;

    private Long userid;

    private Long goodsid; //物品

    private String topicdetail;//描述

    private Date topictime;   //时间

    private int parentid;	 //父类别
    
    private String username;
    
	private String userheadimg;

	public Long getTopicid() {
		return topicid;
	}

	public void setTopicid(Long topicid) {
		this.topicid = topicid;
	}

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public Long getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(Long goodsid) {
		this.goodsid = goodsid;
	}

	public String getTopicdetail() {
		return topicdetail;
	}

	public void setTopicdetail(String topicdetail) {
		this.topicdetail = topicdetail;
	}

	public Date getTopictime() {
		return topictime;
	}

	public void setTopictime(Date topictime) {
		this.topictime = topictime;
	}

	public int getParentid() {
		return parentid;
	}

	public void setParentid(int parentid) {
		this.parentid = parentid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserheadimg() {
		return userheadimg;
	}

	public void setUserheadimg(String userheadimg) {
		this.userheadimg = userheadimg;
	}

	@Override
	public String toString() {
		return "Topic [topicid=" + topicid + ", userid=" + userid + ", goodsid=" + goodsid + ", topicdetail="
				+ topicdetail + ", topictime=" + topictime + ", parentid=" + parentid + ", username=" + username
				+ ", userheadimg=" + userheadimg + "]";
	}

	public Topic(Long topicid, Long userid, Long goodsid, String topicdetail, Date topictime, int parentid,
			String username, String userheadimg) {
		super();
		this.topicid = topicid;
		this.userid = userid;
		this.goodsid = goodsid;
		this.topicdetail = topicdetail;
		this.topictime = topictime;
		this.parentid = parentid;
		this.username = username;
		this.userheadimg = userheadimg;
	}

	public Topic() {
		super();
	}
	
	
}
