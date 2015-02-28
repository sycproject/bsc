package com.bsc.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bsc.common.CommonDao;
import com.bsc.entity.User;
import com.bsc.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource(name="commonDao")
	private CommonDao commonDao;
	
	@Override
	public User findUserById(int id) {
		// TODO Auto-generated method stub
		return commonDao.get("com.bsc.dao.UserMapper.selectByPrimaryKey", id);
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		commonDao.save("com.bsc.dao.UserMapper.insert", user);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		commonDao.update("com.bsc.dao.UserMapper.updateByPrimaryKey", user);
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		commonDao.delete("com.bsc.dao.UserMapper.deleteByPrimaryKey", user.getId());
	}

	@Override
	public List<User> getListByPage(Map<String, Object> searchCondition) {
		// TODO Auto-generated method stub
		return commonDao.getList("com.bsc.dao.UserMapper.getListByPage", searchCondition);
	}

	@Override
	public int getTotalCount(Map<String, Object> searchCondition) {
		// TODO Auto-generated method stub
		return commonDao.getList("com.bsc.dao.UserMapper.getList", searchCondition).size();
	}

}
