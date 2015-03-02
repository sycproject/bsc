package com.bsc.service;

import com.bsc.entity.Resources;

public interface ResourcesService {

	public Resources getResourceById(String id);
	
	public void addResources(Resources resources);
	
	public void updateResources(Resources resources);
	
	public void deleteResources(Resources resources);
}
