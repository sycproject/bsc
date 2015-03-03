package com.bsc.service;

import java.util.Map;

import com.bsc.entity.Resources;

public interface ResourcesService {

	public Resources getResourceById(String id);
	
	public void addResources(Resources resources);
	
	public void updateResources(Resources resources);
	
	public void deleteResources(Resources resources);

	public Map<String, Object> getResources();
}
