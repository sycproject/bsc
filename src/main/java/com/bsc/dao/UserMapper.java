package com.bsc.dao;


import java.util.List;
import java.util.Map;

import com.bsc.entity.User;



public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    List<User> getList(Map<String, Object> searchCondition);
    
    List<User> getListByPage(Map<String, Object> searchCondition);
}