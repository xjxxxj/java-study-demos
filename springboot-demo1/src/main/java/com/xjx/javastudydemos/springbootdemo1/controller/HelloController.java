package com.xjx.javastudydemos.springbootdemo1.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-09 19:49
 **/
@RestController
@RequestMapping("hello")
public class HelloController {

    public HelloController(){
        super();
    }

    @RequestMapping("say")
    public String sayHello(){
        return "Hello World!" ;
    }


}