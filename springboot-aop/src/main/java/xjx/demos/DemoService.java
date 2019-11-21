package xjx.demos;

public interface DemoService {
    @OpenSomething("sayHello")
    String sayHello(HelloParam param);
}
