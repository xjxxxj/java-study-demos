package com.xjx.javastudydemos.springbootdemo1.controller.service;

import com.xjx.javastudydemos.springbootdemo1.controller.po.Children;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-17 16:01
 **/
@Service
public class InjectionTest {
    @Autowired
    private Children children;

    private String name;

    public String saySomething() {
        return "good night, good dreams.";
    }

    public String getName() {
        return name;
    }

    public void setChildrenName(String name) {
        this.children.setName(name);
    }

    public void setName(String name) {
        this.name = name;
    }

    public Children getChildren() {
        return children;
    }

    public void setChildren(Children children) {
        this.children = children;
    }

    @Override
    public String toString() {
        return "InjectionTest{" +
                "children=" + children +
                ", name='" + name + '\'' +
                '}';
    }
}