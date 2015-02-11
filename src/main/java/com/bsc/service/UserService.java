package com.bsc.service;

import com.bsc.entity.User;

public interface UserService {

	public User findUserById(int id);
	
	public void addUser(User user);
	
	public void updateUser(User user);
	
	public void deleteUser(User user);
}
