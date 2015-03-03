package com.bsc.dao;

import java.util.List;
import java.util.Map;
import com.bsc.entity.Resources;

public interface ResourcesMapper {
    int deleteByPrimaryKey(String ids);

    int insert(Resources record);

    int insertSelective(Resources record);

    Resources selectByPrimaryKey(String ids);

    int updateByPrimaryKeySelective(Resources record);

    int updateByPrimaryKey(Resources record);
    
    List<Resources> getResourcesList(Map<String, Object> searchCondition);
}