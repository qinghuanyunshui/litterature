package com.litterature.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.litterature.model.Admin;
import com.litterature.model.User;
import com.litterature.service.UserService;

@Controller
@SessionAttributes
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService us;
	
    @RequestMapping("login")
	public String login(@ModelAttribute("user") User user,String uname,String pwd){
    	
    	user.setUname(uname);
    	user.setPwd(pwd);
		   if(us.findByUser(user)!=null) {
			   return "/index";
		   }else
			   return "redirect:/index.jsp";
	   }
    
    @RequestMapping("alogin")
    public String alogin(@ModelAttribute("admin") Admin admin,String aname,String apwd){
    	
    	admin.setAname(aname);
    	admin.setApwd(apwd);
    	if(us.findByAdmin(admin)!=null) {
    		return "/adminjsp/main";
    	}else
    		return "redirect:/adminjsp/login.jsp";
    }
}
