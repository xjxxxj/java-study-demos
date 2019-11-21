package xjx.study.demo.springbootrediscache.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.cache.interceptor.AbstractCacheResolver;
import org.springframework.cache.interceptor.CacheOperationInvocationContext;
import org.springframework.cache.interceptor.CacheResolver;
import org.springframework.cache.interceptor.SimpleCacheResolver;
import org.springframework.cache.jcache.interceptor.JCacheOperationSource;
import org.springframework.data.redis.cache.RedisCache;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.core.RedisOperations;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import java.util.Collection;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-10 10:46
 **/
public class MyCacheResolver extends RedisCacheManager {

    public MyCacheResolver(RedisOperations redisOperations) {
        super(redisOperations);
    }

    private long computeExpiration(String[] split) {
        if(split.length == 2) {
            return Long.valueOf(split[1]);
        }
        return super.computeExpiration(split[0]);
    }

    @Override
    public RedisCache createCache(String name) {
        Assert.hasText(name, "CacheName must nut be null or empty!");
        String[] split = name.split("#");
        String cacheName = split[0];
        long expiration = computeExpiration(split);
        return new RedisCache(cacheName, (isUsePrefix() ? getCachePrefix().prefix(cacheName) : null), getRedisOperations(), expiration,
                false);
    }
}