package com.webservice.server;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-09 23:08
 **/
public class Test {

    public static void main(String[] args) {
        ISayHelloImplService service = new ISayHelloImplService();
        ISayHelloImpl sayHello = service.getISayHelloImplPort();
        String xxj = sayHello.sayHello("xxj");
        System.out.println(xxj) ;
    }

}