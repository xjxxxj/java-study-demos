package com.xjx.javastudydemos.springbootdemo1.controller;

import com.xjx.javastudydemos.springbootdemo1.controller.po.TestGetter;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-09 19:49
 **/
@RestController
@RequestMapping("test")
public class TestController {

    public TestController(){

        super();
    }

    @RequestMapping("say")
    public String sayHello(){
        return "Hello World!" ;
    }
    @RequestMapping("getter")
    public TestGetter testGetter(){
        TestGetter testGetter = new TestGetter();
        testGetter.setId(1L);
        testGetter.setBirthday(new Date(System.currentTimeMillis() - 4656464656L));
        return testGetter;
    }
}