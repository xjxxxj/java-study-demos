package com.xjx.javastudydemos.springbootdemo1.controller.config;

import com.xjx.javastudydemos.springbootdemo1.controller.po.Children;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopeMetadata;
import org.springframework.stereotype.Component;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-18 14:12
 **/
@Configuration
public class BeanRegisterConfig {
    @Bean
    @Scope("prototype")
    public Children children() {
        return new Children();
    }
}