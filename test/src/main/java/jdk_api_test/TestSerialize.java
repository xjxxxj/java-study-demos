package jdk_api_test;

import com.alibaba.fastjson.JSONObject;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-24 13:55
 **/
public class TestSerialize {

    @Test
    public void Test1() {
        Map<String, Object> map = new HashMap<>();
        map.put("xjx", new BigDecimal(10));
        System.out.println(JSONObject.toJSONString(map)) ;
    }

}