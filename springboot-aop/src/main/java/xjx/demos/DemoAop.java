package xjx.demos;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-26 14:42
 **/
@Aspect
@Component
public class DemoAop {

    @Before("@annotation(openSomething)")
    public void before(JoinPoint joinPoint, OpenSomething openSomething) {
        System.out.println("===========================before") ;
        System.out.println(joinPoint) ;
        System.out.println(openSomething) ;
    }
    @AfterThrowing("@annotation(openSomething)")
    public String afterThrowing(JoinPoint joinPoint, OpenSomething openSomething) {
        System.out.println("===========================afterThrowing") ;
        System.out.println(joinPoint) ;
        System.out.println(openSomething) ;
        return "error";
    }
    @After("@annotation(openSomething)")
    public String after(JoinPoint joinPoint, OpenSomething openSomething) {
        System.out.println("===========================after") ;
        System.out.println(joinPoint) ;
        System.out.println(openSomething) ;
        return "complete";
    }
}