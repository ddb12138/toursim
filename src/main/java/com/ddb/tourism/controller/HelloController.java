package com.ddb.tourism.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @description:
 * @author: ddb
 * @time: 2021/4/20
 */
@RestController
@RequestMapping("/hello")
public class HelloController {
    @GetMapping("/sayhello")
    public String getHello(){
        return "hello";
    }
}
