package com.ddb.tourism.mapper;

import com.ddb.tourism.pojo.TourScenic;

public interface TourScenicMapper {
    int deleteByPrimaryKey(Long id);

    int insert(TourScenic record);

    int insertSelective(TourScenic record);

    TourScenic selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TourScenic record);

    int updateByPrimaryKeyWithBLOBs(TourScenic record);

    int updateByPrimaryKey(TourScenic record);
}