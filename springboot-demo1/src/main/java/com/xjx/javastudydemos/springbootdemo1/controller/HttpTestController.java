package com.xjx.javastudydemos.springbootdemo1.controller;

import com.xjx.javastudydemos.springbootdemo1.entity.ItemInfo;
import com.xjx.javastudydemos.springbootdemo1.vo.BaseVo;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-25 10:56
 **/
@RestController
@RequestMapping("http")
public class HttpTestController {

    @RequestMapping("hello")
    public BaseVo hello(String name){
        BaseVo baseVo = new BaseVo();
        Map<String,String> data = new HashMap<>() ;
        data.put("shopId","dfsfsaoi;fjodas;") ;
        baseVo.setData(data);
        return baseVo ;
    }
    @PostMapping("insert")
    public BaseVo insetBaseVo(@RequestBody List<ItemInfo> param){
        System.out.println(param) ;
        BaseVo baseVo = new BaseVo();
        return baseVo ;
    }

}