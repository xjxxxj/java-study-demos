package com.xjx.javastudydemos.springbootdemo1.controller;

import com.xjx.javastudydemos.springbootdemo1.controller.po.TestGetter;
import com.xjx.javastudydemos.springbootdemo1.controller.service.InjectionTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.beans.ConstructorProperties;
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
    private InjectionTest injectionTest;
    public TestController(InjectionTest injectionTest) {
        this.injectionTest = injectionTest;
    }

    @RequestMapping("say")
    public String sayHello(){
        System.out.println(injectionTest) ;
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