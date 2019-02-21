package com.litterature.mapper;

import java.util.List;

import com.litterature.model.Book;
import com.litterature.model.BookContent;

public interface BookMapper {
public List<Book> findBookAndContentByName(String bookName);
public List<Book> getBookByPage(int startRow, int pageSize,String demo);
public Boolean addBook(Book book);
public List<Book> findBookByType(String type);
public Book findBookByid(int id);
public void deletBook(int bid);
public void updateBook(Book book);
}
