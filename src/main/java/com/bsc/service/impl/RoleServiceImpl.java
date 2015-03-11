package com.bsc.service.impl;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.bsc.common.CommonDao;
import com.bsc.entity.Role;
import com.bsc.service.RoleService;

@Service("roleService")
public class RoleServiceImpl implements RoleService {

	@Resource(name="commonDao")
	private CommonDao commonDao;
	
	@Override
	public Role findRoleById(int id) {
		// TODO Auto-generated method stub
		return commonDao.get("com.bsc.dao.RoleMapper.selectByPrimaryKey", id);
	}

	@Override
	public void addRole(Role user) {
		// TODO Auto-generated method stub
		commonDao.save("com.bsc.dao.RoleMapper.insert", user);
	}

	@Override
	public void updateRole(Role user) {
		// TODO Auto-generated method stub
		commonDao.update("com.bsc.dao.RoleMapper.updateByPrimaryKey", user);
	}

	@Override
	public void deleteRole(Role user) {
		// TODO Auto-generated method stub
		commonDao.delete("com.bsc.dao.RoleMapper.deleteByPrimaryKey", user.getId());
	}

	@Override
	public List<Role> getListByPage(Map<String, Object> searchCondition) {
		// TODO Auto-generated method stub
		return commonDao.getList("com.bsc.dao.RoleMapper.getListByPage", searchCondition);
	}

	@Override
	public int getTotalCount(Map<String, Object> searchCondition) {
		// TODO Auto-generated method stub
		return commonDao.getList("com.bsc.dao.RoleMapper.getList", searchCondition).size();
	}

}
