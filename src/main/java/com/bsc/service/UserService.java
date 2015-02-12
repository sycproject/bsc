package com.bsc.service;

import java.util.List;
import java.util.Map;

import com.bsc.entity.User;

public interface UserService {

	public User findUserById(int id);
	
	public void addUser(User user);
	
	public void updateUser(User user);
	
	public void deleteUser(User user);
	
	public List<User> getListByPage(Map<String,Object> searchCondition);
	
	public int getTotalCount(Map<String,Object> searchCondition);
}
