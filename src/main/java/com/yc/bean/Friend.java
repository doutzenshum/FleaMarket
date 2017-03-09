package com.yc.bean;

import org.springframework.stereotype.Component;

@Component
//好友
public class Friend {
	
	private Long id;

    private Long currentuserid;	//当前的用户id

    private Long friendid;		//用户id

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCurrentuserid() {
		return currentuserid;
	}

	public void setCurrentuserid(Long currentuserid) {
		this.currentuserid = currentuserid;
	}

	public Long getFriendid() {
		return friendid;
	}

	public void setFriendid(Long friendid) {
		this.friendid = friendid;
	}

	@Override
	public String toString() {
		return "Friend [id=" + id + ", currentuserid=" + currentuserid + ", friendid=" + friendid + "]";
	}

	public Friend(Long id, Long currentuserid, Long friendid) {
		super();
		this.id = id;
		this.currentuserid = currentuserid;
		this.friendid = friendid;
	}

	public Friend() {
		super();
	}
    
    
}
