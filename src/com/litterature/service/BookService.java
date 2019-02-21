package com.litterature.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litterature.mapper.BookMapper;
import com.litterature.model.Book;
import com.litterature.model.BookContent;

@Service
public class BookService {
	@Autowired
	private BookMapper bm;
public List<Book> findBookAndContentByName(String bookName) {
	return bm.findBookAndContentByName(bookName);
}

public Boolean addBook(Book book) {
return bm.addBook(book);
}

public List<Book> findBookByType(String type) {
	return bm.findBookByType(type); 
}
public void deletBook(int bid) {
	bm.deletBook(bid);
}
public Book findBookByid(int id) {
	return bm.findBookByid(id);
}
public void updateBook(Book book) {
	 bm.updateBook(book);
}
public List<Book> getBookByPage(int startRow, int pageSize,String demo){
	return bm.getBookByPage(startRow, pageSize,demo);
}
}
