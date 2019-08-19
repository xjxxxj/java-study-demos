package com.xjx.javastudydemo.rocketmqdemo2.constant;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-04-10 09:51
 **/
public class MqConstant {
    public static final String APPLICATION_NAME = "rocketmq-demo2" ;
    public static final String TOPIC_NAME = APPLICATION_NAME + "-topic-1" ;
    public static final String CONSUMER_GROUP_1 = APPLICATION_NAME + "-my-consumer_test-topic-1" ;
    public static final String TAG_TEST = "test" ;
    public static final String DESTINATION = TOPIC_NAME + ":" + TAG_TEST ;

}