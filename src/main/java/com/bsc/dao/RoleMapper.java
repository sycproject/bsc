package com.bsc.dao;

import java.util.List;
import java.util.Map;
import com.bsc.entity.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
    
    List<Role> getList(Map<String, Object> searchCondition);
    
    List<Role> getListByPage(Map<String, Object> searchCondition);
}