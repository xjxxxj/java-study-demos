package rabbitmq.client.directexchange;

import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;
import com.rabbitmq.client.DeliverCallback;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-07-30 15:15
 **/
public class Consumer {

    private static final String QUEUE_NAME =  "test.direct.exchange.queue";
    private static final String DIRECT_EXCHANGE_NAME = "test.direct.exchange.exchange";
    public static final String[] routingKeyList = {"red","black"};
    public static final String[] queueNameList = {"q1","q2","q3"};

    public static void main(String[] args) throws IOException, TimeoutException, InterruptedException {
        final Random random = new Random();
        final Map<String, AtomicInteger> hashMap = new HashMap<>();
        ExecutorService executorService = Executors.newFixedThreadPool(10);
        for(int i = 0; i < 10; i ++){
            executorService.submit(()->{
                try {
                    ConnectionFactory factory = new ConnectionFactory();
                    factory.setHost("localhost");
                    Connection connection = factory.newConnection();
                    Channel channel = connection.createChannel();
                    channel.exchangeDeclare(DIRECT_EXCHANGE_NAME,"direct");
                    String queueName = "test-queue";
                    channel.queueDeclare(queueName,true,false,false,null);
                    String key = routingKeyList[random.nextInt(2)];
                    channel.queueBind(queueName,DIRECT_EXCHANGE_NAME,key);
                    System.out.println(" [*] Waiting for messages. To exit press CTRL+C");
                    DeliverCallback deliverCallback = (consumerTag, deliver)->{
                        String message = new String(deliver.getBody(),"UTF-8");
                        System.out.println( Thread.currentThread().getName() + " receive message:" + message) ;
                        synchronized (hashMap){
                            if(hashMap.get(message) == null){
                                hashMap.put(message,new AtomicInteger(0));
                            }
                            hashMap.get(message).addAndGet(1);
                        }
                    };
                    channel.basicConsume(queueName,false,deliverCallback,consumerTag->{});
                }catch (Exception e){
                    e.printStackTrace();
                }

            });
        }
        TimeUnit.SECONDS.sleep(20);
        System.out.println(hashMap) ;
    }

}