package xjx.study.mq.springbootrabbitmq;

import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Envelope;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.support.AmqpHeaders;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

import static xjx.study.mq.springbootrabbitmq.config.RabbitConfig.TOPIC_RECORD;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-07-30 16:57
 **/
@Component
public class Receive {
    private Random random = new Random();
    public static ConcurrentHashMap<String, AtomicInteger> store = new ConcurrentHashMap<>();
    @RabbitListener(queues = TOPIC_RECORD,containerFactory = "customContainerFactory")
    public void changeFreeTimes1(Message message,@Header(AmqpHeaders.DELIVERY_TAG) long deliveryTag, Channel channel) throws InterruptedException, IOException {
        String data = new String(message.getBody());
        System.out.println(Thread.currentThread().getName() + "收到消息:" + message.getBody()) ;
        if(random.nextInt(2) == 0){
            TimeUnit.SECONDS.sleep(1);
            System.out.println("消息处理失败,返回") ;
            channel.basicReject(deliveryTag,true);
        }
        else {
            if(store.get(data) == null){
                store.put(data,new AtomicInteger(0));
            }else {
                store.get(data).addAndGet(1);
            }
            channel.basicAck(deliveryTag,false);
        }
    }
}