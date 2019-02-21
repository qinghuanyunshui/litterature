package com.litterature.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.litterature.model.Book;
import com.litterature.model.BookContent;
import com.litterature.service.BookContentService;
import com.litterature.service.BookService;

@Controller
@SessionAttributes
@RequestMapping("jsp/read")
public class ReadCotroller {
	private List<Book> books;
	private BookContent bc;
	
	@Autowired
	private BookContentService bcs;
	@Autowired
	private BookService bs;
	
	@RequestMapping("read")
	public String findByName(String bookName,Model model) {
		books = bs.findBookAndContentByName(bookName);
		model.addAttribute("books", books);
	
		return "../read";
	}
	
	@RequestMapping("read1")
	public String findByBook(Model model,String bookName,int id) throws IOException {
		books = bs.findBookAndContentByName(bookName);
		//章节的存储路径
		String path= books.get(0).getBookContents().get(id-1).getContent();
		BufferedReader br = new BufferedReader(new FileReader(new File(path)));
		StringBuffer sb = new StringBuffer();
		String str = br.readLine();
		while(!str.equals(null)) {
			sb.append(str+"<br>");
			str = br.readLine();
		}
		
		model.addAttribute("content", br);
		return "../readzhengwen";
	}
}
	/*@RequestMapping("read2")
	public String findByBook(Model model,@RequestParam Book book) {
		System.out.println("不不不不不不不不不不不"+book.getId());
		bc= bcs.findByBook(book);
		//System.out.println("啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊"+bc.getId());
		model.addAttribute("bc", bc);
		return "../read";
		
	}*/
	/*
}*/
