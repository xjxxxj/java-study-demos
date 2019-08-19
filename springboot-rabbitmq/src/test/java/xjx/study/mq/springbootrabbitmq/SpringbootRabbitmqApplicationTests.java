package xjx.study.mq.springbootrabbitmq;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.rabbit.support.CorrelationData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import xjx.study.mq.springbootrabbitmq.config.RabbitConfig;

import java.util.UUID;

import static xjx.study.mq.springbootrabbitmq.config.RabbitConfig.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringbootRabbitmqApplicationTests implements RabbitTemplate.ConfirmCallback {
    Logger logger = LoggerFactory.getLogger(SpringbootRabbitmqApplicationTests.class);
    @Autowired
    private RabbitTemplate rabbitTemplate;

    @Test
    public void contextLoads() {
        rabbitTemplate.setMandatory(true);
        rabbitTemplate.setConfirmCallback(this);
        rabbitTemplate.convertAndSend(RabbitConfig.LOTTERY_TOPIC_EXCHANGE, LOTTERY_RECORD_ROUTING_KEY, "Hello");
        logger.info("mq成功发送数据:{}","Hello");
    }

    @Override
    public void confirm(CorrelationData correlationData, boolean ack, String cause) {
        if(!ack){
            logger.error("mq发送没有到达目的地，correlationId:{},cause:{}",correlationData.getId(),cause);
        }
    }
}
