package com.yc.bean;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Component;
@Component
//心愿求购单
public class Wish implements Serializable{

	private static final long serialVersionUID = -8008708843201323646L;

	private Long wishid;

    private Long userid;

    private String wishtitle;

    private String wishcontent;

    private String wishcontact;

    private Date wishtime;
    
    private  String username;
    
    private String useremail;
    
    private String userheadimg;

	public Long getWishid() {
		return wishid;
	}

	public void setWishid(Long wishid) {
		this.wishid = wishid;
	}

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getWishtitle() {
		return wishtitle;
	}

	public void setWishtitle(String wishtitle) {
		this.wishtitle = wishtitle;
	}

	public String getWishcontent() {
		return wishcontent;
	}

	public void setWishcontent(String wishcontent) {
		this.wishcontent = wishcontent;
	}

	public String getWishcontact() {
		return wishcontact;
	}

	public void setWishcontact(String wishcontact) {
		this.wishcontact = wishcontact;
	}

	public Date getWishtime() {
		return wishtime;
	}

	public void setWishtime(Date wishtime) {
		this.wishtime = wishtime;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUserheadimg() {
		return userheadimg;
	}

	public void setUserheadimg(String userheadimg) {
		this.userheadimg = userheadimg;
	}

	@Override
	public String toString() {
		return "Wish [wishid=" + wishid + ", userid=" + userid + ", wishtitle=" + wishtitle + ", wishcontent="
				+ wishcontent + ", wishcontact=" + wishcontact + ", wishtime=" + wishtime + ", username=" + username
				+ ", useremail=" + useremail + ", userheadimg=" + userheadimg + "]";
	}

	public Wish(Long wishid, Long userid, String wishtitle, String wishcontent, String wishcontact, Date wishtime,
			String username, String useremail, String userheadimg) {
		super();
		this.wishid = wishid;
		this.userid = userid;
		this.wishtitle = wishtitle;
		this.wishcontent = wishcontent;
		this.wishcontact = wishcontact;
		this.wishtime = wishtime;
		this.username = username;
		this.useremail = useremail;
		this.userheadimg = userheadimg;
	}

	public Wish() {
		super();
	}
    
    
}
