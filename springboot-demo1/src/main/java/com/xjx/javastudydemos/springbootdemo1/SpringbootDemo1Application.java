package com.xjx.javastudydemos.springbootdemo1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@SpringBootApplication
@Controller
public class SpringbootDemo1Application {

    public static void main(String[] args) {

        ConfigurableApplicationContext applicationContext = SpringApplication.run(SpringbootDemo1Application.class, args);
        System.out.println(applicationContext) ;
    }

    @RequestMapping("/")
    @ResponseBody
    public String test(){
        return "Hello World!" ;
    }
    @RequestMapping("/hello")
    @ResponseBody
    public String hello(String name){
        return name + ",Hello World!" ;
    }

}
