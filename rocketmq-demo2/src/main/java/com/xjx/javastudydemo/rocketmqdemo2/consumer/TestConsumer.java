package com.xjx.javastudydemo.rocketmqdemo2.consumer;

import com.qianmi.ms.starter.rocketmq.annotation.RocketMQMessageListener;
import com.qianmi.ms.starter.rocketmq.core.RocketMQListener;
import com.xjx.javastudydemo.rocketmqdemo2.constant.MqConstant;
import org.springframework.stereotype.Service;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-10 09:55
 **/
@Service
@RocketMQMessageListener(topic = MqConstant.TOPIC_NAME,selectorExpress = MqConstant.TAG_TEST,consumerGroup = MqConstant.CONSUMER_GROUP_1)
public class TestConsumer implements RocketMQListener<String> {


    @Override
    public void onMessage(String s) {
        System.out.println("接受到消息：" + s + "================" + System.currentTimeMillis()) ;
    }
}