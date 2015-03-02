package com.bsc.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bsc.common.CommonDao;
import com.bsc.entity.Resources;
import com.bsc.service.ResourcesService;


@Service("resourcesService")
public class ResourcesServiceImpl implements ResourcesService {

	@Resource(name="commonDao")
	private CommonDao commonDao;
	
	@Override
	public Resources getResourceById(String id) {
		// TODO Auto-generated method stub
		return commonDao.get("com.bsc.dao.ResourcesMapper.selectByPrimaryKey", id);
	}

	@Override
	public void addResources(Resources resources) {
		// TODO Auto-generated method stub
		commonDao.save("com.bsc.dao.ResourcesMapper.insert", resources);
	}

	@Override
	public void updateResources(Resources resources) {
		// TODO Auto-generated method stub
		commonDao.update("com.bsc.dao.ResourcesMapper.updateByPrimaryKey", resources);
	}

	@Override
	public void deleteResources(Resources resources) {
		// TODO Auto-generated method stub
		commonDao.delete("com.bsc.dao.ResourcesMapper.deleteByPrimaryKey", resources.getIds());
	}

}
