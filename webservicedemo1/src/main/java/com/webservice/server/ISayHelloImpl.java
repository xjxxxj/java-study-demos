package com.webservice.server;

import javax.jws.WebMethod;
import javax.jws.WebService;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-03-09 22:37
 **/
@WebService
public class ISayHelloImpl implements ISayHello {

    @Override
    @WebMethod
    public String sayHello(String name) {
        System.out.println("sayHello method is invoked by webservice successful!") ;
        return "xjx:Hello," + name ;
    }
}