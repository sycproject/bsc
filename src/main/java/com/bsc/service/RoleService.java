package com.bsc.service;

import java.util.List;
import java.util.Map;
import com.bsc.entity.Role;

public interface RoleService {

	public Role findRoleById(int id);
	
	public void addRole(Role user);
	
	public void updateRole(Role user);
	
	public void deleteRole(Role user);
	
	public List<Role> getListByPage(Map<String,Object> searchCondition);
	
	public int getTotalCount(Map<String,Object> searchCondition);
}
