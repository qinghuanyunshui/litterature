package com.litterature.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litterature.mapper.BookContentMapper;
import com.litterature.model.Book;
import com.litterature.model.BookContent;
@Service
public class BookContentService {
	@Autowired
	private BookContentMapper bcMapper;
	
public List<BookContent> findBybid(int bid) {
	return bcMapper.findBybid(bid);
}

public Boolean addBookContent(BookContent bookContent) {
	System.out.println("啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊"+bookContent.getId1());
	return bcMapper.addBookContent(bookContent);
}

public void deletContentByid(int id1) {
	bcMapper.deletContentByid(id1);
}
public void deletContentBybid(int bid) {
	bcMapper.deletContentBybid(bid);
}
}
