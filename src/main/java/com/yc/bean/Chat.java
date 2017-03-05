package com.yc.bean;

import java.util.Date;

//聊天
public class Chat {
	
	private Long chatid;

    private Long senduserid; //卖的人id

    private Long receiveruserid;	//买的人id

    private Integer status;	//#状态

    private Date sendtime;	//发送时间

    private String sendcontent;//发送内容

    private String remark;	//备注

	public Long getChatid() {
		return chatid;
	}

	public void setChatid(Long chatid) {
		this.chatid = chatid;
	}

	public Long getSenduserid() {
		return senduserid;
	}

	public void setSenduserid(Long senduserid) {
		this.senduserid = senduserid;
	}

	public Long getReceiveruserid() {
		return receiveruserid;
	}

	public void setReceiveruserid(Long receiveruserid) {
		this.receiveruserid = receiveruserid;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getSendtime() {
		return sendtime;
	}

	public void setSendtime(Date sendtime) {
		this.sendtime = sendtime;
	}

	public String getSendcontent() {
		return sendcontent;
	}

	public void setSendcontent(String sendcontent) {
		this.sendcontent = sendcontent;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "Chat [chatid=" + chatid + ", senduserid=" + senduserid + ", receiveruserid=" + receiveruserid
				+ ", status=" + status + ", sendtime=" + sendtime + ", sendcontent=" + sendcontent + ", remark="
				+ remark + "]";
	}

	public Chat(Long chatid, Long senduserid, Long receiveruserid, Integer status, Date sendtime, String sendcontent,
			String remark) {
		super();
		this.chatid = chatid;
		this.senduserid = senduserid;
		this.receiveruserid = receiveruserid;
		this.status = status;
		this.sendtime = sendtime;
		this.sendcontent = sendcontent;
		this.remark = remark;
	}

	public Chat() {
		super();
	}
    
    
}
