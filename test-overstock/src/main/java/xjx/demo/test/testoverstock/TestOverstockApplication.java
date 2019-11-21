package xjx.demo.test.testoverstock;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class TestOverstockApplication {
    @Autowired
    private TestProductMapper testProductMapper;
    public static void main(String[] args) {
        SpringApplication.run(TestOverstockApplication.class, args);
    }
    @GetMapping("test")
    public String test() {
        for (int i = 0;i < 100000; i ++) {
            testProductMapper.updateStock(1L,-i/10 - 1);
        }
        return "success";
    }
}
