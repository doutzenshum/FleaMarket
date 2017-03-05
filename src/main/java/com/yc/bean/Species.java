package com.yc.bean;

import java.io.Serializable;

//类别
public class Species implements Serializable{
	
	private static final long serialVersionUID = 2291713869905989140L;

	private Integer speciesid;

    private Integer parentid;		//#父类别id

    private String speciesname;		//类别名字

    private String parentname;		//父类名字

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

	public String getSpeciesname() {
		return speciesname;
	}

	public void setSpeciesname(String speciesname) {
		this.speciesname = speciesname;
	}

	public String getParentname() {
		return parentname;
	}

	public void setParentname(String parentname) {
		this.parentname = parentname;
	}

	@Override
	public String toString() {
		return "Species [speciesid=" + speciesid + ", parentid=" + parentid + ", speciesname=" + speciesname
				+ ", parentname=" + parentname + "]";
	}

	public Species(Integer speciesid, Integer parentid, String speciesname, String parentname) {
		super();
		this.speciesid = speciesid;
		this.parentid = parentid;
		this.speciesname = speciesname;
		this.parentname = parentname;
	}

	public Species() {
		super();
	}
    
    
}
