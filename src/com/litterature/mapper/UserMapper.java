package com.litterature.mapper;

import java.util.List;

import com.litterature.model.Admin;
import com.litterature.model.User;



public interface UserMapper {
    public List<User> findAll();
    public User findByName(String name);
    public User findByUser(User user);
    public Admin findByAdmin(Admin admin);
	public void delete(int id);
}
