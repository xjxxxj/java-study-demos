package com.xjx.javastudydemos.mybatisplusdemo1.mapper;

import com.xjx.javastudydemos.mybatisplusdemo1.po.PrizeDrawTemplate;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class PrizeDrawTemplateMapperTest {

    @Autowired
    private PrizeDrawTemplateMapper prizeDrawTemplateMapper ;

    @Test
    public void test(){
        PrizeDrawTemplate prizeDrawTemplate = new PrizeDrawTemplate();
        prizeDrawTemplate.setShopId("shop-test-1");
        prizeDrawTemplate.setName("测试模板");
        Integer insert = prizeDrawTemplateMapper.insert(prizeDrawTemplate);
        System.out.println(insert) ;
    }



}