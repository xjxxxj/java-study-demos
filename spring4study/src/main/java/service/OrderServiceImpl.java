package service;

import domain.Order;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.UUID;

public class OrderServiceImpl {

    private OrderFlowServiceImpl orderFlowService;

    public String placeOrder(Order order) {
        System.out.println("开始下单") ;
        System.out.println(order) ;
        System.out.println(orderFlowService.addFlow(order)) ;
        System.out.println("下单完成") ;
        return "success";
    }

    public OrderFlowServiceImpl getOrderFlowService() {
        return orderFlowService;
    }

    public void setOrderFlowService(OrderFlowServiceImpl orderFlowService) {
        this.orderFlowService = orderFlowService;
    }

}
