package com.litterature.model;

import java.util.List;

public class Book {
private int id,readNumber;
private String author,creatTime,type,title,demo;
private List<BookContent> bookContents;
public Book() {
	super();
	// TODO Auto-generated constructor stub
}
public Book(int id, int readNumber, String author, String creatTime, String type, String title, String demo,
		List<BookContent> bookContents) {
	super();
	this.id = id;
	this.readNumber = readNumber;
	this.author = author;
	this.creatTime = creatTime;
	this.type = type;
	this.title = title;
	this.demo = demo;
	this.bookContents = bookContents;
}

public Book(int readNumber, String author, String creatTime, String type, String title, String demo) {
	super();
	this.readNumber = readNumber;
	this.author = author;
	this.creatTime = creatTime;
	this.type = type;
	this.title = title;
	this.demo = demo;
}

public Book(int id, int readNumber, String author, String creatTime, String type, String title, String demo) {
	super();
	this.id = id;
	this.readNumber = readNumber;
	this.author = author;
	this.creatTime = creatTime;
	this.type = type;
	this.title = title;
	this.demo = demo;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getReadNumber() {
	return readNumber;
}
public void setReadNumber(int readNumber) {
	this.readNumber = readNumber;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public String getCreatTime() {
	return creatTime;
}
public void setCreatTime(String creatTime) {
	this.creatTime = creatTime;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getDemo() {
	return demo;
}
public void setDemo(String demo) {
	this.demo = demo;
}
public List<BookContent> getBookContents() {
	return bookContents;
}
public void setBookContents(List<BookContent> bookContents) {
	this.bookContents = bookContents;
}

}
