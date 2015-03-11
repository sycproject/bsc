package com.bsc.service.impl;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.bsc.common.CommonDao;
import com.bsc.entity.Right;
import com.bsc.service.RightService;

@Service("rightService")
public class RightServiceImpl implements RightService {

	@Resource(name="commonDao")
	private CommonDao commonDao;
	
	@Override
	public Right findRightById(int id) {
		// TODO Auto-generated method stub
		return commonDao.get("com.bsc.dao.RightMapper.selectByPrimaryKey", id);
	}

	@Override
	public void addRight(Right user) {
		// TODO Auto-generated method stub
		commonDao.save("com.bsc.dao.RightMapper.insert", user);
	}

	@Override
	public void updateRight(Right user) {
		// TODO Auto-generated method stub
		commonDao.update("com.bsc.dao.RightMapper.updateByPrimaryKey", user);
	}

	@Override
	public void deleteRight(Right user) {
		// TODO Auto-generated method stub
		commonDao.delete("com.bsc.dao.RightMapper.deleteByPrimaryKey", user.getId());
	}

	@Override
	public List<Right> getListByPage(Map<String, Object> searchCondition) {
		// TODO Auto-generated method stub
		return commonDao.getList("com.bsc.dao.RightMapper.getListByPage", searchCondition);
	}

	@Override
	public int getTotalCount(Map<String, Object> searchCondition) {
		// TODO Auto-generated method stub
		return commonDao.getList("com.bsc.dao.RightMapper.getList", searchCondition).size();
	}

}
