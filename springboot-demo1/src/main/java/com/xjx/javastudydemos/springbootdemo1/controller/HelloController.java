package com.xjx.javastudydemos.springbootdemo1.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.xjx.javastudydemos.springbootdemo1.controller.po.Children;
import com.xjx.javastudydemos.springbootdemo1.controller.service.InjectionTest;
import com.xjx.javastudydemos.springbootdemo1.controller.service.ValidTestService;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-09 19:49
 **/
@RestController
@RequestMapping("hello")
public class HelloController {
    @Autowired
    private BeanFactory beanFactory;
    @Autowired
    private ApplicationContext applicationContext;
    @Autowired
    private InjectionTest injectionTest;
    @Autowired
    private ValidTestService validTestService;

    @RequestMapping("say")
    public String sayHello(){
        System.out.println(beanFactory) ;
        System.out.println(applicationContext) ;
        System.out.println(injectionTest) ;
        injectionTest.setName("xjx1");
        injectionTest.setChildrenName("xxj");
        System.out.println(injectionTest) ;
        return "Hello World!" ;
    }
    @GetMapping("test")
    public String testValid() throws JsonProcessingException {
        Children children = new Children();
        return validTestService.testValid(children);
    }


}