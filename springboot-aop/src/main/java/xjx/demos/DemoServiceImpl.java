package xjx.demos;

import org.springframework.stereotype.Service;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-26 14:56
 **/
@Service
public class DemoServiceImpl implements DemoService {

    @Override
    public String sayHello(HelloParam param) {
        return "hello, " + param.getName();
    }
}