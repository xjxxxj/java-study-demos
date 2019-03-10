package com.webservice.server;


import javax.xml.ws.Endpoint;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-09 22:38
 **/
public class BootStrap {

    public static void main(String[] args) {
        Endpoint.publish("http://localhost:8888/say/hello",new ISayHelloImpl()) ;
        System.out.println("public service successful!") ;
    }

}