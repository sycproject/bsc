package com.bsc.dao;

import com.bsc.entity.Resources;

public interface ResourcesMapper {
    int deleteByPrimaryKey(String ids);

    int insert(Resources record);

    int insertSelective(Resources record);

    Resources selectByPrimaryKey(String ids);

    int updateByPrimaryKeySelective(Resources record);

    int updateByPrimaryKey(Resources record);
}