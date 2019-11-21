package jdk_api_test;

import jdk_api_test.domain.User;
import org.junit.Test;

import java.util.HashMap;
import java.util.Map;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-19 11:25
 **/
public class TestHashMapPutAll {
    @Test
    public void Test() {
        Map<String, User> oldMap = new HashMap<>();
        User user = new User();
        user.setId(1L);
        user.setName("xjx");
        user.setAge(25);
        System.out.println(user) ;
        oldMap.put("boy", user);
        Map<String, User> newMap = new HashMap<>();
        newMap.putAll(oldMap);
        User boy = newMap.get("boy");
        System.out.println(boy) ;
        System.out.println(user == boy) ;
    }

}