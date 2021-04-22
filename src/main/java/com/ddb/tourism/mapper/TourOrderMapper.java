package com.ddb.tourism.mapper;

import com.ddb.tourism.pojo.TourOrder;

public interface TourOrderMapper {
    int deleteByPrimaryKey(Long id);

    int insert(TourOrder record);

    int insertSelective(TourOrder record);

    TourOrder selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TourOrder record);

    int updateByPrimaryKey(TourOrder record);
}