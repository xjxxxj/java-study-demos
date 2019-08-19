package com.xjx.javastudydemos.mybatisdemo1.mapper;

import com.xjx.javastudydemos.mybatisdemo1.po.PrizeDrawTemplate;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Random;

@RunWith(SpringRunner.class)
@SpringBootTest
@MapperScan("com.xjx.javastudydemos.mybatisdemo1.mapper")
public class PrizeDrawTemplateMapperTest {

    @Autowired
    private PrizeDrawTemplateMapper prizeDrawTemplateMapper ;
    @Test
    public void test(){
        PrizeDrawTemplate prizeDrawTemplate = new PrizeDrawTemplate();
        prizeDrawTemplate.setId(System.currentTimeMillis() + new Random().nextInt(1000000));
        prizeDrawTemplate.setShopId("shop-test-1");
        prizeDrawTemplate.setName("测试模板");
        Integer insert = prizeDrawTemplateMapper.insert(prizeDrawTemplate);
        System.out.println(insert) ;
    }



}