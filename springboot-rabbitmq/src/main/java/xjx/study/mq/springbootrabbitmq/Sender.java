package xjx.study.mq.springbootrabbitmq;

import com.rabbitmq.client.AMQP;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.MessageProperties;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.rabbit.support.CorrelationData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import xjx.study.mq.springbootrabbitmq.config.RabbitConfig;

import java.awt.*;
import java.io.IOException;
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

    public void send(Object message) throws IOException {
        message = "{\"name\":\"xjx\"}";
        CorrelationData correlationId = new CorrelationData( UUID.randomUUID().toString());
        //rabbitTemplate.setMandatory(true);
        String relayOnQueue = rabbitTemplate.getConnectionFactory().createConnection().createChannel(false).queueDeclare().getQueue();
        MessageProperties messageProperties = new MessageProperties();
        messageProperties.setCorrelationId(UUID.randomUUID().toString().getBytes("UTF-8"));
        //messageProperties.setContentType(CONTENT_TYPE_TEXT_PLAIN);
        //messageProperties.setReplyTo(relayOnQueue);
        messageProperties.setContentType("jms/stream-message");
        byte[] bytes = message.toString().getBytes("UTF-8");
        byte[] newBytes = new byte[bytes.length + 2];
        newBytes[0] = 10;
        newBytes[bytes.length + 1] = 0;
        for (int i = 0; i < bytes.length; i++) {
            newBytes[i + 1] = bytes[i];
        }
        String s = message.toString();
        byte[] start = {10};
        byte[] end = {0};
        s = new String(start) + s + new String(end);
        byte[] bytes1 = s.getBytes("UTF-8");
        Message msg = new Message(bytes1, messageProperties);
        Object o = rabbitTemplate.sendAndReceive("", "A9O1ZPH00I1D87ID8UNMBHG3IWDOL5BH12345", msg, correlationId);
        if(o instanceof Message) {
            Message returnMsg = (Message)o;
            System.out.println(new String(returnMsg.getBody())) ;
        }
    }

}