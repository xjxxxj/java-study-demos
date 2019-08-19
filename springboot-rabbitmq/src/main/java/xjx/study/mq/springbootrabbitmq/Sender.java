package xjx.study.mq.springbootrabbitmq;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.rabbit.support.CorrelationData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import xjx.study.mq.springbootrabbitmq.config.RabbitConfig;

import java.util.UUID;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-07-30 16:55
 **/
@Component
public class Sender {

    @Autowired
    private RabbitTemplate rabbitTemplate;

    public void send(Object msg,String routingKey) {
        CorrelationData correlationId = new CorrelationData( UUID.randomUUID().toString());
        rabbitTemplate.setMandatory(true);
        rabbitTemplate.convertAndSend(RabbitConfig.LOTTERY_TOPIC_EXCHANGE, routingKey, msg, correlationId);
    }

}