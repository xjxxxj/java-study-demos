package xjx.study.mq.springbootrabbitmq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.TimeUnit;

import static xjx.study.mq.springbootrabbitmq.config.RabbitConfig.LOTTERY_RECORD_ROUTING_KEY;

@SpringBootApplication
@RestController
public class SpringbootRabbitmqApplication {

    @Autowired
    private Sender sender;

    @GetMapping("test")
    public String test(){
        for(int i = 0; i < 100; i++){
            sender.send("message-" + i, LOTTERY_RECORD_ROUTING_KEY);
        }
        return "success";
    }
    @GetMapping("result")
    public Object result(){
        return Receive.store;
    }

    public static void main(String[] args) {
        SpringApplication.run(SpringbootRabbitmqApplication.class, args);
    }

}
