package com.ddb.tourism.controller.scenic;

import com.ddb.tourism.pojo.RespBean;
import com.ddb.tourism.pojo.TourScenic;
import com.ddb.tourism.service.TourScenicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @description:
 * @author: ddb
 * @time: 2021/4/20
 */
@RestController
@RequestMapping("/scenic")
public class ScenicController {

    @Autowired
    TourScenicService tourScenicService;


    @GetMapping("/")
    public RespBean getHomePage() {
        return tourScenicService.getScenicHomePage();
    }
}
