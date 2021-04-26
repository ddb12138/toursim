package com.ddb.tourism.service;

import com.ddb.tourism.mapper.TourScenicMapper;
import com.ddb.tourism.pojo.RespBean;
import com.ddb.tourism.pojo.TourScenic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @description:
 * @author: ddb
 * @time: 2021/4/26
 */
@Service
public class TourScenicService {
    @Autowired
    TourScenicMapper tourScenicMapper;

    public RespBean getScenicHomePage(){
        List<TourScenic> scenics = tourScenicMapper.getScenicHomePage();
        System.out.println(scenics);
        return RespBean.ok("成功", scenics);
    }

}
