package com.litterature.model;

public class Admin {
	private int aid,amember;
	private String aname,apwd;
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin(int aid, int amember, String aname, String apwd) {
		super();
		this.aid = aid;
		this.amember = amember;
		this.aname = aname;
		this.apwd = apwd;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public int getAmember() {
		return amember;
	}
	public void setAmember(int amember) {
		this.amember = amember;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	
	
}
