
package com.litterature.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.HttpServletBean;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.litterature.model.Book;
import com.litterature.model.BookContent;
import com.litterature.service.BookContentService;
import com.litterature.service.BookService;

import net.sf.json.JSON;

@Controller
@RequestMapping("jsp/up")
public class BookController {
	@Autowired
	private BookContentService bcs;
	
	@Autowired
	private BookService bs;
	
	@Autowired
	private  HttpServletRequest request;

	
	@RequestMapping("findBookByType")
	public String findBookByType(@RequestParam(value="page",required=false,defaultValue="")String page,String type,String demo,Model model) {
		List<Book> books = bs.findBookByType(demo);
		
		 //每页显示的条数
		 int pageSize = 9;
		//查到的总用户数
	    model.addAttribute("booksNum", books.size());
	    //总页数
	    int pageSum;
	    if(books.size()%pageSize == 0)
	      {
	           pageSum = books.size()/pageSize;
	        }else
	        {
	          pageSum = books.size()/pageSize + 1;
	          }
	        model.addAttribute("pageSum", pageSum);
	      //页面初始的时候page没有值
	       if(page==null||page.equals(""))
	        {
	              page = "1";
	          }
	     //每页开始的第几条记录            
	         int startRow = (Integer.parseInt(page)-1) * pageSize;
	        books = bs.getBookByPage(startRow, pageSize,demo);  
		model.addAttribute("books", books);
		model.addAttribute("currentPage", Integer.valueOf(page));
		model.addAttribute("type", type);
		model.addAttribute("demo", demo);
		return "/adminjsp/BookManage";
	}
	
	@RequestMapping("showContent")
	public String showContent(int id,String title,String type,String demo,Model model) {
		
		List<BookContent> contents = bcs.findBybid(id);
		model.addAttribute("contents", contents);
		model.addAttribute("title", title);
		model.addAttribute("type", type);
		model.addAttribute("demo", demo);
		model.addAttribute("bid", id);
		return "/adminjsp/ContentManage";
	}
	
	
	@RequestMapping("addBook")
	public String addBook(RedirectAttributes ras,Model model,String author,String type,String demo,String creatTime, String title) {
		System.out.println("啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊"+type);
		Book book = new Book(0, author,creatTime, type, title, demo);
			if(bs.findBookAndContentByName(title).isEmpty()) {

				bs.addBook(book);
			}
			String bookPath = System.getProperty("catalina.home")+File.separator;
			bookPath= bookPath+"upload"+File.separator+"book"+File.separator+type+File.separator+demo+File.separator+title;
			File file = new File(bookPath);
			file.mkdirs();
			ras.addAttribute("demo", demo);
			ras.addAttribute("type", type);
			return "redirect:/jsp/up/findBookByType.action";
	}
	
	@RequestMapping("addBookContent")
	public String addBookContent(RedirectAttributes ras,MultipartFile file,String type,String demo,String title,String chepter,int id1,int bid) throws IOException, ServletException {
		
		String savePath = System.getProperty("catalina.home")+File.separator+"upload"+File.separator+"book"+File.separator+type+File.separator+demo+File.separator+title;
		Part part = request.getPart("file");
		String header = part.getHeader("content-disposition");
        part.write(savePath+File.separator+id1+header.substring(header.lastIndexOf("."),header.length()-1));

		String contentPath = savePath+File.separator+id1+header.substring(header.lastIndexOf("."),header.length()-1);
		
		//BufferedReader br = new BufferedReader(new InputStreamReader(file.getInputStream()));
		BookContent bookContent = new BookContent(id1, bid, chepter, contentPath);
		bcs.addBookContent(bookContent);
		System.out.println("啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊"+id1);
		ras.addAttribute("id", bid);
		ras.addAttribute("title", title);
		ras.addAttribute("type", type);
		ras.addAttribute("demo", demo);
		
		return "redirect:showContent.action";
	}
	
	@RequestMapping("deleteContent")
	public String deleteContent(RedirectAttributes ras,int id1,int bid,String title,String type,String demo) {
		//通过id1删除tb_content
		bcs.deletContentByid(id1);
		//删除相关文件
		String savePath = System.getProperty("catalina.home")+File.separator+"upload"+File.separator+"book"+File.separator+type+File.separator+demo+File.separator+title;
		String file=null;
		File f = new File(savePath);
		
		String[] strs  = f.list();
		for (String str : strs) {
			String[]s1 = str.split("\\.");
			if(s1[0].equals(String.valueOf(id1))) {
				file = str;
				System.out.println("啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊"+file);
			}
		}
		File f1 = new File(savePath+File.separator+file);
		System.out.println("啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊"+savePath+File.separator+file);
		f1.delete();
		
		ras.addAttribute("id", bid);
		ras.addAttribute("title", title);
		ras.addAttribute("type", type);
		ras.addAttribute("demo", demo);
		
		return "redirect:showContent.action";
	}
	
	
	
	@RequestMapping("deleteBook")
	public String deleteBook(RedirectAttributes ras,int bid,String type,String demo,String title) {
		//通过bid删除tb_content数据表相关
		bcs.deletContentBybid(bid);
		//通过bid删除tb_book相关
		bs.deletBook(bid);
		//删除文件
		String savePath = System.getProperty("catalina.home")+File.separator+"upload"+File.separator+"book"+File.separator+type+File.separator+demo+File.separator+title;
		File file = new File(savePath);
		try {
			FileUtils.deleteDirectory(file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ras.addAttribute("type", type);
		ras.addAttribute("demo", demo);
		return "redirect:/jsp/up/findBookByType.action";
	}
	@RequestMapping("yupdateBook")
	@ResponseBody
	public Book yupdateBook(int id) {
		Book book = bs.findBookByid(id);
        return book;
	}
	
	@RequestMapping("updateBook")
	public String updateBook(RedirectAttributes ras,int id,String title,String author,String creatTime,String type,String demo) {
		Book book = new Book(id, 0,author, creatTime, type, title, demo);
		bs.updateBook(book);
		
		ras.addAttribute("type", type);
		ras.addAttribute("demo", demo);
		return "redirect:/jsp/up/findBookByType.action";
	}
	
}
