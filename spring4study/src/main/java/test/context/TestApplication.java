package test.context;

import domain.Order;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.xml.XmlBeanDefinitionReader;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.GenericApplicationContext;
import service.OrderServiceImpl;

import java.util.UUID;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-17 14:28
 **/
public class TestApplication {
    public static void main(String[] args) {
        test1();
        //test2();
        //test3();
    }

    public static void test3() {
        GenericApplicationContext applicationContext = new GenericApplicationContext();
        ConfigurableListableBeanFactory beanFactory = applicationContext.getBeanFactory();
        beanFactory.registerSingleton("orderService", new OrderServiceImpl());
        applicationContext.refresh();
        OrderServiceImpl orderService = (OrderServiceImpl) applicationContext.getBean("orderService");
        System.out.println(orderService) ;
    }
    public static void test2() {
        GenericApplicationContext genericApplicationContext = new GenericApplicationContext();
        new XmlBeanDefinitionReader(genericApplicationContext).loadBeanDefinitions("beans.xml");
        genericApplicationContext.refresh();
        BeanDefinition orderService = genericApplicationContext.getBeanDefinition("orderService");
        System.out.println(orderService) ;
        System.out.println(genericApplicationContext.getBeanDefinition("orderFlowService")) ;
        Object orderService1 = genericApplicationContext.getBean("orderService");
        System.out.println(orderService1) ;
    }
    public static void test1() {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:beans.xml");
        OrderServiceImpl orderService = (OrderServiceImpl) applicationContext.getBean("orderService");
        Order order = new Order();
        order.setId(66L);
        order.setOrderNo(UUID.randomUUID().toString());
        System.out.println(orderService.placeOrder(order)) ;
    }
}