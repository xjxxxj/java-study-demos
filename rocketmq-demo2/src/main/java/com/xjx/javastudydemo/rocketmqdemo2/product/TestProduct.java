package com.xjx.javastudydemo.rocketmqdemo2.product;

import com.qianmi.ms.starter.rocketmq.core.RocketMQTemplate;
import com.xjx.javastudydemo.rocketmqdemo2.constant.MqConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-10 09:50
 **/
@Component
public class TestProduct {
    @Autowired
    private RocketMQTemplate rocketMQTemplate;

    public boolean sendMessage(String message){
        System.out.println("发送消息" + message + "================" + System.currentTimeMillis()) ;
        try {
            rocketMQTemplate.convertAndSend(MqConstant.DESTINATION,message);
        }catch (Exception e){
            e.printStackTrace();
            return false ;
        }
        return true ;

    }

}