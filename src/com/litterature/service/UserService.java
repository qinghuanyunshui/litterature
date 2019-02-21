package com.litterature.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litterature.mapper.UserMapper;
import com.litterature.model.Admin;
import com.litterature.model.User;

@Service
public class UserService {
	@Autowired
	private UserMapper umapper;
	
	public List<User> findAll(){
		 return umapper.findAll();
	}
	
	public User findByName(String name) {
		return umapper.findByName(name);
	}
	public User findByUser(User user) {
		return umapper.findByUser(user);
	}
	public Admin findByAdmin(Admin admin) {
		return umapper.findByAdmin(admin);
	}
}


