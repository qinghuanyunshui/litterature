package com.litterature.model;

public class User {
private int id,member;
private String uname,pwd;
public User() {
	super();
	// TODO Auto-generated constructor stub
}
public User(int id, int member, String uname, String pwd) {
	super();
	this.id = id;
	this.member = member;
	this.uname = uname;
	this.pwd = pwd;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getMember() {
	return member;
}
public void setMember(int member) {
	this.member = member;
}
public String getUname() {
	return uname;
}
public void setUname(String uname) {
	this.uname = uname;
}
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}


}
