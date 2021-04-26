package com.ddb.tourism.mapper;

import com.ddb.tourism.pojo.TourScenic;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface TourScenicMapper {
    int deleteByPrimaryKey(Long id);

    int insert(TourScenic record);

    int insertSelective(TourScenic record);

    TourScenic selectByPrimaryKey(Long id);

    List<TourScenic> getScenicHomePage();

    int updateByPrimaryKeySelective(TourScenic record);

    int updateByPrimaryKeyWithBLOBs(TourScenic record);

    int updateByPrimaryKey(TourScenic record);
}