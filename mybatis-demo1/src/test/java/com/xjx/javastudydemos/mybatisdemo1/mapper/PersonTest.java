package com.xjx.javastudydemos.mybatisdemo1.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * @program: java-study-demos
 * @description: ]
 * @author: 谢庆香
 * @create: 2019-08-02 11:50
 **/
@RunWith(SpringRunner.class)
@SpringBootTest
public class PersonTest {

    @Autowired
    private PersonMapper personMapper;
    private Random random = new Random();
    private final AtomicInteger atomicInteger = new AtomicInteger(0);

    @Test
    public void test() throws InterruptedException {
        ExecutorService service = Executors.newFixedThreadPool(200);
        CountDownLatch countDownLatch = new CountDownLatch(200);
        for(int i = 0; i < 200; i ++){
            service.submit(new Runnable() {
                @Override
                public void run() {
                    try {
                        TimeUnit.MICROSECONDS.sleep(random.nextInt(50));
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    int num = random.nextInt(10) + 1;
                    int result = personMapper.changeAge(1, -num);
                    if(result == 1){
                        atomicInteger.addAndGet(num);
                        System.out.println(Thread.currentThread().getName() + "-成功扣" + num) ;
                    }
                    countDownLatch.countDown();
                }
            });
        }
        countDownLatch.await();
        System.out.println("总扣" + atomicInteger.get()) ;
    }

}