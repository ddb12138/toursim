package com.ddb.tourism.mapper;

import com.ddb.tourism.pojo.TourUser;

public interface TourUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TourUser record);

    int insertSelective(TourUser record);

    TourUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TourUser record);

    int updateByPrimaryKey(TourUser record);
}