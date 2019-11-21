package xjx.study.mq.springbootrabbitmq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.concurrent.TimeUnit;


@SpringBootApplication
@RestController
public class SpringbootRabbitmqApplication {

    @Autowired
    private Sender sender;

    @GetMapping("test")
    public String test() throws IOException {
        /*for(int i = 0; i < 1; i++){
            sender.send("message-" + i);
        }*/
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
