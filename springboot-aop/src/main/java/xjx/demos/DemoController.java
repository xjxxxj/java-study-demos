package xjx.demos;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-26 14:31
 **/
@RestController
public class DemoController {
    @Autowired
    private DemoService demoService;
    @GetMapping("hello")
    public String hello() {
        HelloParam param = new HelloParam();
        param.setName("xjx");
        return demoService.sayHello(param);
    }
}