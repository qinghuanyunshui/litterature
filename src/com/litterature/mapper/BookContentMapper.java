package com.litterature.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.litterature.model.Book;
import com.litterature.model.BookContent;

public interface BookContentMapper {
public List<BookContent> findBybid(int bid);
public Boolean addBookContent(BookContent bookContent);
public BookContent findContentBybid(int id);
public void deletContentByid(int id1);
public void deletContentBybid(int bid);
}
