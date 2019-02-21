package com.litterature.model;

public class BookContent {
private int id1,bid;
private String chepter,content;
public BookContent() {
	super();
	// TODO Auto-generated constructor stub
}
public BookContent(int id1, int bid, String chepter, String content) {
	super();
	this.id1 = id1;
	this.bid = bid;
	this.chepter = chepter;
	this.content = content;
}
public int getId1() {
	return id1;
}
public void setId1(int id1) {
	this.id1 = id1;
}
public int getBid() {
	return bid;
}
public void setBid(int bid) {
	this.bid = bid;
}
public String getChepter() {
	return chepter;
}
public void setChepter(String chepter) {
	this.chepter = chepter;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}


}
