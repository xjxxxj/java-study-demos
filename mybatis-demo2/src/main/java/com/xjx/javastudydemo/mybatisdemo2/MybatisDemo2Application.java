package com.xjx.javastudydemo.mybatisdemo2;

import com.xjx.javastudydemos.mybatisdemo1.mapper.PrizeDrawTemplateMapper;
import com.xjx.javastudydemos.mybatisdemo1.po.PrizeDrawTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

@SpringBootApplication
@MapperScan("com.xjx.javastudydemos.mybatisdemo1.mapper")
@RestController
public class MybatisDemo2Application {

    public static void main(String[] args) {
        SpringApplication.run(MybatisDemo2Application.class, args);
    }
    @Autowired
    private PrizeDrawTemplateMapper prizeDrawTemplateMapper ;
    @RequestMapping("hello")
    private String hello(){
        PrizeDrawTemplate prizeDrawTemplate = new PrizeDrawTemplate();
        prizeDrawTemplate.setId(System.currentTimeMillis() + new Random().nextInt(1000000));
        prizeDrawTemplate.setShopId("shop-test-1");
        prizeDrawTemplate.setName("测试模板");
        Integer insert = prizeDrawTemplateMapper.insert(prizeDrawTemplate);
        System.out.println(insert) ;
        return "hello" ;
    }

}
