package com.xjx.javastudydemo.rocketmqdemo1.controller;

import com.xjx.javastudydemo.rocketmqdemo1.product.MqProduct;
import org.apache.rocketmq.client.exception.MQBrokerException;
import org.apache.rocketmq.client.exception.MQClientException;
import org.apache.rocketmq.remoting.exception.RemotingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.UnsupportedEncodingException;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-09 18:12
 **/
@RestController
public class TestController {
    @Value("${apache.rocketmq.topic-name-1}")
    private String topicName_1  ;
    @Value("${apache.rocketmq.tag-1}")
    private String tag ;
    @Autowired
    private MqProduct product ;
    @RequestMapping("/push")
    public String test(String name){
        try {
            product.send(topicName_1,tag,name) ;
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (RemotingException e) {
            e.printStackTrace();
        } catch (MQClientException e) {
            e.printStackTrace();
        } catch (MQBrokerException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return "success" ;
    }

}