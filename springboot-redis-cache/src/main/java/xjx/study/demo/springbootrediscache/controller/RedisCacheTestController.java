package xjx.study.demo.springbootrediscache.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import xjx.study.demo.springbootrediscache.domain.ProductInfo;
import xjx.study.demo.springbootrediscache.domain.ProductQueryParam;
import xjx.study.demo.springbootrediscache.domain.ProductUpdateParam;

import java.util.Date;
import java.util.HashMap;
import java.util.Set;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-05 15:24
 **/
@RestController
@Slf4j
public class RedisCacheTestController {

    private static HashMap<Long, ProductInfo> repository = new HashMap<>();
    @Autowired
    private RedisTemplate redisTemplate;
    static {
        for(int i=0; i < 10; i ++) {
            ProductInfo productInfo = new ProductInfo();
            productInfo.setId(Long.valueOf(i));
            productInfo.setUpdatedTime(new Date(System.currentTimeMillis()));
            repository.put(Long.valueOf(i),productInfo);
        }
    }

    @GetMapping("test/get")
    @Cacheable(cacheNames = "queryById#3600", key = "'product:' + #root.target + ':' + #root.methodName + #param"
            , condition = "#param.id != null")
    public ProductInfo queryById(ProductQueryParam param) {
        ProductInfo productInfo = doQueryById(param.getId());
        log.info(productInfo.toString());
        System.out.println(param.toString()) ;
        return productInfo;
    }
    @PostMapping("test/update")
    @CacheEvict(cacheNames = "queryById" , key = "'product:'")
    public String updateUpdateTimeById(@RequestBody ProductUpdateParam param) {
        ProductInfo productInfo = repository.get(param.getId());
        productInfo.setUpdatedTime(new Date(System.currentTimeMillis()));
        return "success";
    }
   /* @Cacheable(cacheNames = "queryById#3600", key = "'' + #id"
            , condition = "#id != null")*/
    public ProductInfo doQueryById(Long id) {
        return repository.get(id);
    }

}