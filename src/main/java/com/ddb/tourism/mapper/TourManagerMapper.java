package com.ddb.tourism.mapper;

import com.ddb.tourism.pojo.TourManager;

public interface TourManagerMapper {
    int deleteByPrimaryKey(Long id);

    int insert(TourManager record);

    int insertSelective(TourManager record);

    TourManager selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TourManager record);

    int updateByPrimaryKey(TourManager record);
}