package com.xjx.javastudydemos.springbootdemo1.controller.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.xjx.javastudydemos.springbootdemo1.controller.po.Children;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import javax.validation.Valid;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-19 11:41
 **/
@Service
public class ValidTestService {
    @Valid
    public String testValid(Children children) throws JsonProcessingException {
        System.out.println(children.toString()) ;
        return new ObjectMapper().writeValueAsString(children);
    }

}