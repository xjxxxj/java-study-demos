package rabbitmq.client.directexchange;

import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;

import java.io.IOException;
import java.util.Random;
import java.util.concurrent.TimeoutException;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-07-30 15:52
 **/
public class Publisher {
    private static final String QUEUE_NAME =  "test.direct.exchange.queue";
    private static final String DIRECT_EXCHANGE_NAME = "test.direct.exchange.exchange";
    public static final String[] routingKeyList = {"red","black"};

    public static void main(String[] args) throws IOException, TimeoutException {
        final Random random = new Random();
        ConnectionFactory factory = new ConnectionFactory();
        factory.setHost("localhost");
        Connection connection = factory.newConnection();
        Channel channel = connection.createChannel();
        channel.exchangeDeclare(DIRECT_EXCHANGE_NAME,"direct");
        for(int i = 0; i < 10000; i ++){
            String key = routingKeyList[random.nextInt(2)];
            String message = "message-" + i;
            channel.basicPublish(DIRECT_EXCHANGE_NAME,key,null,message.getBytes());
        }
    }

}