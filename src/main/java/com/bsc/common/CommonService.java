package com.bsc.common;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface CommonService<T> {

	public T findEntityById(Serializable id);
	
	public void addEntity(T entity);
	
	public void updateEntity(T entity);
	
	public void deleteEntity(T entity);
	
	public List<T> getListByPage(Map<String,Object> searchCondition);
	
	public int getTotalCount(Map<String,Object> searchCondition);
}
