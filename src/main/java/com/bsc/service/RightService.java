package com.bsc.service;

import java.util.List;
import java.util.Map;
import com.bsc.entity.Right;

public interface RightService {

	public Right findRightById(int id);
	
	public void addRight(Right user);
	
	public void updateRight(Right user);
	
	public void deleteRight(Right user);
	
	public List<Right> getListByPage(Map<String,Object> searchCondition);
	
	public int getTotalCount(Map<String,Object> searchCondition);
}
