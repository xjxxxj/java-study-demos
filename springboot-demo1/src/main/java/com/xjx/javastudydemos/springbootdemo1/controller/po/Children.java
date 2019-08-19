package com.xjx.javastudydemos.springbootdemo1.controller.po;

import org.hibernate.validator.constraints.NotBlank;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-08-03 16:13
 **/
public class Children extends Parent{

    @NotBlank
    private String name;

    @Override
    public String getName() {
        return name;
    }

    @Override
    public void setName(String name) {
        this.name = name;
    }

}