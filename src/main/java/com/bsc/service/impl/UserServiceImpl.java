package com.bsc.service.impl;

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
		if(user.getId() != null){
			commonDao.save("com.bsc.dao.UserMapper.insert", user);
		}else{
			commonDao.update("com.bsc.dao.UserMapper.updateByPrimaryKey", user);
		}
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		commonDao.update("com.bsc.dao.UserMapper.updateByPrimaryKey", user);
		/*try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}*/
		//int i = 10/0;
		//System.out.println(i);
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		commonDao.delete("com.bsc.dao.UserMapper.deleteByPrimaryKey", user.getId());
	}

}
