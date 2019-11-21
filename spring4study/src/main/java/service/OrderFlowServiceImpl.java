package service;


import domain.Order;

/**
 * @program: spring-framework-4.3.25.RELEASE
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-17 10:35
 **/
public class OrderFlowServiceImpl {

    public String addFlow(Order order){
        System.out.println("开始添加流水") ;
        System.out.println("流水" + order) ;
        System.out.println("添加流水完成") ;
        return "添加流水成功";
    };

}