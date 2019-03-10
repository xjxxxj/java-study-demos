package com.xjx.nio.client;

import java.io.IOException;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-10 16:47
 **/
public class IOClient {

    public static void main(String[] args) {
        for(int i = 0 ; i < 1000 ; i ++){
            int j = i ;
            new Thread(() -> {
                try {
                    Socket socket = new Socket("127.0.0.1", 8000);
                    while (true) {
                        try {
                            socket.getOutputStream().write(
                                    ("=====Client-" + j + "========="  + new SimpleDateFormat("HH:mm:ss SSS").format(new Date()) + ": hello world").getBytes());
                            socket.getOutputStream().flush();
                            Thread.sleep(1);
                        } catch (Exception e) {
                        }
                    }
                } catch (IOException e) {
                }
            }).start();
        }

    }

}