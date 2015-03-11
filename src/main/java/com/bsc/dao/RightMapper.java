package com.bsc.dao;

import java.util.List;
import java.util.Map;
import com.bsc.entity.Right;

public interface RightMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Right record);

    int insertSelective(Right record);

    Right selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Right record);

    int updateByPrimaryKey(Right record);
    
    List<Right> getList(Map<String, Object> searchCondition);
    
    List<Right> getListByPage(Map<String, Object> searchCondition);
}