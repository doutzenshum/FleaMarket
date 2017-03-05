package com.yc.bean;

//联系表
public class Advice {
	private Long adviceid;
	private String advicename;	//姓名
	private String adviceemail;	//邮箱
	private String adviceaddress;//地址
	private String advicecontent;//内容
	public Long getAdviceid() {
		return adviceid;
	}
	public void setAdviceid(Long adviceid) {
		this.adviceid = adviceid;
	}
	public String getAdvicename() {
		return advicename;
	}
	public void setAdvicename(String advicename) {
		this.advicename = advicename;
	}
	public String getAdviceemail() {
		return adviceemail;
	}
	public void setAdviceemail(String adviceemail) {
		this.adviceemail = adviceemail;
	}
	public String getAdviceaddress() {
		return adviceaddress;
	}
	public void setAdviceaddress(String adviceaddress) {
		this.adviceaddress = adviceaddress;
	}
	public String getAdvicecontent() {
		return advicecontent;
	}
	public void setAdvicecontent(String advicecontent) {
		this.advicecontent = advicecontent;
	}
	@Override
	public String toString() {
		return "Advice [adviceid=" + adviceid + ", advicename=" + advicename + ", adviceemail=" + adviceemail
				+ ", adviceaddress=" + adviceaddress + ", advicecontent=" + advicecontent + "]";
	}
	public Advice(Long adviceid, String advicename, String adviceemail, String adviceaddress, String advicecontent) {
		super();
		this.adviceid = adviceid;
		this.advicename = advicename;
		this.adviceemail = adviceemail;
		this.adviceaddress = adviceaddress;
		this.advicecontent = advicecontent;
	}
	public Advice() {
		super();
	}
	
	
}
