package rabbitmq.client.workqueues;

import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;

import java.io.IOException;
import java.util.concurrent.TimeoutException;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-07-30 10:33
 **/
public class NewTask {

    private static final String QUEUE_NAME =  "hello";

    public static void main(String[] args) {
        ConnectionFactory connectionFactory = new ConnectionFactory();
        connectionFactory.setHost("localhost");
        try {
            Connection connection = connectionFactory.newConnection();
            Channel channel = connection.createChannel();
            channel.queueDeclare(QUEUE_NAME,false,false,false,null);
            for(int i = 0; i < 1000 ; i ++){
                String message = "message-" + i;
                channel.basicPublish("", "hello", null, message.getBytes());
                System.out.println(" [x] Sent '" + message + "'");
            }
        } catch (TimeoutException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}