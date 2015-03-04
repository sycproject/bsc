package com.bsc.dao;

import java.util.List;
import java.util.Map;

import com.bsc.entity.SysLog;
import com.bsc.entity.User;

public interface SysLogMapper {
    int deleteByPrimaryKey(String ids);

    int insert(SysLog record);

    int insertSelective(SysLog record);

    SysLog selectByPrimaryKey(String ids);

    int updateByPrimaryKeySelective(SysLog record);

    int updateByPrimaryKey(SysLog record);
    
    List<User> getList(Map<String, Object> searchCondition);
    
    List<User> getListByPage(Map<String, Object> searchCondition);
}