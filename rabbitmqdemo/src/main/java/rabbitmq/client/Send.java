package rabbitmq.client;

import com.rabbitmq.client.*;

import java.io.IOException;
import java.util.concurrent.TimeoutException;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-07-30 10:33
 **/
public class Send {

    private static final String QUEUE_NAME =  "rpc_queue";

    public static void main(String[] args) {
        ConnectionFactory connectionFactory = new ConnectionFactory();
        connectionFactory.setHost("localhost");
        try {
            Connection connection = connectionFactory.newConnection();
            Channel channel = connection.createChannel();
            channel.queueDeclare(QUEUE_NAME,false,false,false,null);
            RpcClientParams rpcClientParams = new RpcClientParams();
            rpcClientParams.channel(channel);
            RpcClient rpcClient = new RpcClient(rpcClientParams);
            String message = "hello word!";
            byte[] bytes = message.getBytes();
            RpcClient.Response response = rpcClient.responseCall(bytes);
            System.out.println(response) ;
            /*channel.basicPublish("",QUEUE_NAME,null,message.getBytes());
            System.out.println(" [x] Sent '" + message + "'");*/
        } catch (TimeoutException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}