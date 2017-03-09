package com.yc.bean;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class User implements Serializable{
	
	private static final long serialVersionUID = 7561777200196367512L;
	
	private Long userid;
	private String username;
	private String userpass;		//用户密码
	private String userphonenumber;		//电话
	private String useremail;		//邮箱
	private String userheadimg;    //头像
	private Date userregtime;      //注册时间
	private String useracticode;	//#用户邮箱属性(激活码)
	private Integer userstatus;			//#用户邮箱属性(激活状态)
	private Integer userisonline;       //用户是否在线
	private String userrealname;    //用户真实姓名
	private String usersex;			//用户性别
	private Date userbirthday;		//用户生日
	private String userliveplace;	//#用户的现居地
	private String userhometown;	//#用户的家乡
	public Long getUserid() {
		return userid;
	}
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpass() {
		return userpass;
	}
	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}
	public String getUserphonenumber() {
		return userphonenumber;
	}
	public void setUserphonenumber(String userphonenumber) {
		this.userphonenumber = userphonenumber;
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
	public Date getUserregtime() {
		return userregtime;
	}
	public void setUserregtime(Date userregtime) {
		this.userregtime = userregtime;
	}
	public String getUseracticode() {
		return useracticode;
	}
	public void setUseracticode(String useracticode) {
		this.useracticode = useracticode;
	}
	public Integer getUserstatus() {
		return userstatus;
	}
	public void setUserstatus(Integer userstatus) {
		this.userstatus = userstatus;
	}
	public Integer getUserisonline() {
		return userisonline;
	}
	public void setUserisonline(Integer userisonline) {
		this.userisonline = userisonline;
	}
	public String getUserrealname() {
		return userrealname;
	}
	public void setUserrealname(String userrealname) {
		this.userrealname = userrealname;
	}
	public String getUsersex() {
		return usersex;
	}
	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}
	public Date getUserbirthday() {
		return userbirthday;
	}
	public void setUserbirthday(Date userbirthday) {
		this.userbirthday = userbirthday;
	}
	public String getUserliveplace() {
		return userliveplace;
	}
	public void setUserliveplace(String userliveplace) {
		this.userliveplace = userliveplace;
	}
	public String getUserhometown() {
		return userhometown;
	}
	public void setUserhometown(String userhometown) {
		this.userhometown = userhometown;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", userpass=" + userpass + ", userphonenumber="
				+ userphonenumber + ", useremail=" + useremail + ", userheadimg=" + userheadimg + ", userregtime="
				+ userregtime + ", useracticode=" + useracticode + ", userstatus=" + userstatus + ", userisonline="
				+ userisonline + ", userrealname=" + userrealname + ", usersex=" + usersex + ", userbirthday="
				+ userbirthday + ", userliveplace=" + userliveplace + ", userhometown=" + userhometown + "]";
	}
	public User(Long userid, String username, String userpass, String userphonenumber, String useremail,
			String userheadimg, Date userregtime, String useracticode, Integer userstatus, Integer userisonline,
			String userrealname, String usersex, Date userbirthday, String userliveplace, String userhometown) {
		super();
		this.userid = userid;
		this.username = username;
		this.userpass = userpass;
		this.userphonenumber = userphonenumber;
		this.useremail = useremail;
		this.userheadimg = userheadimg;
		this.userregtime = userregtime;
		this.useracticode = useracticode;
		this.userstatus = userstatus;
		this.userisonline = userisonline;
		this.userrealname = userrealname;
		this.usersex = usersex;
		this.userbirthday = userbirthday;
		this.userliveplace = userliveplace;
		this.userhometown = userhometown;
	}
	public User() {
		super();
	}
	
	
}
