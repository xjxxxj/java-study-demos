package com.xjx.javastudydemo.rocketmqdemo2.controller;

import com.xjx.javastudydemo.rocketmqdemo2.product.TestProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-10 09:58
 **/
@RestController
public class TestController {

    @Autowired
    private TestProduct product ;
    @RequestMapping("test")
    public String test(String msg){
        product.sendMessage(msg) ;
        return "success" ;
    }


}