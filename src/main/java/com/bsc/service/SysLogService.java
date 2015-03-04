package com.bsc.service;

import java.util.List;
import java.util.Map;
import com.bsc.entity.SysLog;

public interface SysLogService {

	public List<SysLog> getListByPage(Map<String,Object> searchCondition);
	
	public int getTotalCount(Map<String,Object> searchCondition);
}
