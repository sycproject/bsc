package com.bsc.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bsc.common.CommonDao;
import com.bsc.entity.SysLog;
import com.bsc.service.SysLogService;

@Service("sysLogService")
public class SysLogServiceImpl implements SysLogService {

	@Resource(name="commonDao")
	private CommonDao commonDao;

	@Override
	public List<SysLog> getListByPage(Map<String, Object> searchCondition) {
		// TODO Auto-generated method stub
		return commonDao.getList("com.bsc.dao.SysLogMapper.getListByPage", searchCondition);
	}

	@Override
	public int getTotalCount(Map<String, Object> searchCondition) {
		// TODO Auto-generated method stub
		return commonDao.getList("com.bsc.dao.SysLogMapper.getList", searchCondition).size();
	}
}
