package xjx.demos.springboot.dubbo.consumer.controller;

import org.apache.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import xjx.demos.springboot.dubbo.DemoService;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-25 15:03
 **/
@RestController
@RequestMapping("test")
public class DemoController {

    @Reference(version = "1.0.0")
    private DemoService demoService;

    @GetMapping("hello")
    public String hello(String name) {
        System.out.println(demoService.sayHello(name)) ;
        return "success";
    }

}