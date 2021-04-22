package com.ddb.tourism.mapper;

import com.ddb.tourism.pojo.TourHotel;

public interface TourHotelMapper {
    int deleteByPrimaryKey(Long id);

    int insert(TourHotel record);

    int insertSelective(TourHotel record);

    TourHotel selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TourHotel record);

    int updateByPrimaryKeyWithBLOBs(TourHotel record);

    int updateByPrimaryKey(TourHotel record);
}