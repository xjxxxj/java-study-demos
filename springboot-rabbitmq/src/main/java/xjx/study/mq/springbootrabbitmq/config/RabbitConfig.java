package xjx.study.mq.springbootrabbitmq.config;

import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.config.SimpleRabbitListenerContainerFactory;
import org.springframework.amqp.rabbit.connection.ConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.rabbit.support.DefaultMessagePropertiesConverter;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.boot.autoconfigure.amqp.SimpleRabbitListenerContainerFactoryConfigurer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-07-30 11:44
 **/
@Configuration
@Component
public class RabbitConfig {

    /*public static final String LOTTERY_TOPIC_EXCHANGE="test.xjx";

    //抽奖纪录route
    public static final String LOTTERY_RECORD_ROUTING_KEY="123456789101112";

    //抽奖纪录
    public static final String TOPIC_RECORD="test.xjx.hello";
    *//**
     * 抽奖记录
     * @return
     *//*
    @Bean
    public Queue testQueue() {
        return new Queue("rpc_queue_1",false);
    }
    @Bean
    public Binding testBinding() {
        return BindingBuilder.bind(testQueue()).to(lotteryExchange()).with(LOTTERY_RECORD_ROUTING_KEY);
    }
    @Bean
    public Queue helloQueue() {
        return new Queue(TOPIC_RECORD, true);
    }

    @Bean
    DirectExchange lotteryExchange() {
        return new DirectExchange(LOTTERY_TOPIC_EXCHANGE);
    }
    @Bean
    public Binding lLotteryRecordBinding() {
        return BindingBuilder.bind(helloQueue()).to(lotteryExchange()).with(LOTTERY_RECORD_ROUTING_KEY);
    }
    @Bean
    public RabbitTemplate rabbitTemplate(final ConnectionFactory connectionFactory) {
        final RabbitTemplate rabbitTemplate = new RabbitTemplate(connectionFactory);
        rabbitTemplate.setMessageConverter(producerJackson2MessageConverter());
        return rabbitTemplate;
    }
    @Bean("customContainerFactory")
    public SimpleRabbitListenerContainerFactory containerFactory(SimpleRabbitListenerContainerFactoryConfigurer configurer, ConnectionFactory connectionFactory) {
        SimpleRabbitListenerContainerFactory factory = new SimpleRabbitListenerContainerFactory();
        factory.setConcurrentConsumers(5);  //设置线程数
        factory.setMaxConcurrentConsumers(15); //最大线程数
        factory.setAcknowledgeMode(AcknowledgeMode.MANUAL);
        factory.setReceiveTimeout(5000L);
        factory.setStartConsumerMinInterval(1000L);
        factory.setMissingQueuesFatal(false);
        factory.setPrefetchCount(10);
        configurer.configure(factory, connectionFactory);
        return factory;
    }
    @Bean
    public Jackson2JsonMessageConverter producerJackson2MessageConverter() {
        return new Jackson2JsonMessageConverter();
    }*/
   /* @Bean
    public RabbitTemplate rabbitTemplate(final ConnectionFactory connectionFactory) {
        final RabbitTemplate rabbitTemplate = new RabbitTemplate(connectionFactory);
        return rabbitTemplate;
    }*/
    /*@Bean
    public Jackson2JsonMessageConverter producerJackson2MessageConverter() {
        return new Jackson2JsonMessageConverter();
    }*/
}